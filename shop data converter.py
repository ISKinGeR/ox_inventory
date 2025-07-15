from lupa import LuaRuntime

lua = LuaRuntime(unpack_returned_tuples=True)

# ------------------------ Load Lua and Convert ------------------------

def lua_table_to_python(val):
    """Recursively convert Lua table to Python dict or list."""
    if hasattr(val, 'keys') and hasattr(val, 'values'):
        keys = list(val.keys())
        is_array = all(isinstance(k, int) for k in keys) and sorted(keys) == list(range(1, len(keys)+1))
        if is_array:
            return [lua_table_to_python(val[i]) for i in range(1, len(keys)+1)]
        else:
            return {k: lua_table_to_python(val[k]) for k in keys}
    elif isinstance(val, (list, tuple)):
        return [lua_table_to_python(v) for v in val]
    else:
        return val

def fetch_item_set(shop_sets, set_id: int):
    """Support both dict (non-contiguous keys) and list (contiguous numeric) indexing."""
    if isinstance(shop_sets, dict):
        return shop_sets.get(set_id)
    if 0 < set_id <= len(shop_sets):
        return shop_sets[set_id - 1]
    return None

# ---------------------- Load Lua Data from File -----------------------

with open("your_data.lua", "r", encoding="utf-8") as f:
    lua_code = f.read()

# Ensure 'return' is present
if "return" not in lua_code:
    lua_code += "\nreturn { entityTypes = entityTypes, ShopItemSets = ShopItemSets, Shops = Shops }"

data = lua.execute(lua_code)
data = lua_table_to_python(data)

entityTypes = data["entityTypes"]
ShopItemSets = data["ShopItemSets"]
Shops = data["Shops"]

# ------------------------ Build Result Structure ------------------------

result = {}

for entity in entityTypes:
    if not isinstance(entity, dict):
        continue

    if not entity.get("shop") or not entity.get("itemSet"):
        continue

    entity_id = entity["id"]
    item_set_id = entity["itemSet"]
    items = fetch_item_set(ShopItemSets, item_set_id)
    if not items:
        continue

    # Normalize key name
    key = entity["name"].replace(" ", "")

    # Build inventory
    inventory = [{"name": item, "price": 10} for item in items]

    # Gather tlocations and pick first blip
    tlocations = []
    blip = None

    for shop in Shops:
        if shop.get("entityId") == entity_id and "coords" in shop:
            coords = shop["coords"]
            if all(k in coords for k in ("x", "y", "z", "h")):
                entry = {
                    "coords": [coords["x"], coords["y"], coords["z"], coords["h"]],
                    "npc": shop.get("npc", "a_m_m_business_01"),
                    "icon": shop.get("icon", "shop"),
                }
                if entity.get("restriction"):
                    entry["restriction"] = entity["restriction"]
                tlocations.append(entry)

            if not blip and "blip" in shop:
                blip = {
                    "id": shop["blip"]["sprite"],
                    "colour": shop["blip"]["color"],
                    "scale": shop["blip"]["scale"]
                }

    if tlocations:
        result[key] = {
            "entityId": entity_id,
            "name": entity["name"],
            "blip": blip if blip else {"id": 59, "colour": 69, "scale": 0.8},
            "inventory": inventory,
            "tlocations": tlocations
        }

# ------------------------- Convert to Lua Output -------------------------

def to_lua(val, indent=0):
    spacing = '    '
    if isinstance(val, dict):
        s = '{\n'
        for k, v in val.items():
            key = f'["{k}"]' if not k.isidentifier() else k
            s += f'{spacing * (indent+1)}{key} = {to_lua(v, indent+1)},\n'
        return s + spacing * indent + '}'
    elif isinstance(val, list):
        if all(isinstance(x, dict) for x in val):
            return '{\n' + ',\n'.join(f'{spacing * (indent+1)}{to_lua(x, indent+1)}' for x in val) + f'\n{spacing * indent}}}'
        else:
            return '{' + ', '.join(f'"{x}"' if isinstance(x, str) else str(x) for x in val) + '}'
    elif isinstance(val, str):
        return f'"{val}"'
    elif isinstance(val, bool):
        return 'true' if val else 'false'
    elif val is None:
        return 'nil'
    else:
        return str(val)

# ----------------------------- Save to File -----------------------------

output_file = "generated_shop_data.lua"
with open(output_file, "w", encoding="utf-8") as f:
    f.write("return " + to_lua(result))

print(f"✅ Lua shop config written to: {output_file}")
