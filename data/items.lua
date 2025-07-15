-- return {
-- 	-- ['testburger'] = {
-- 	-- 	label = 'Test Burger',
-- 	-- 	weight = 220,
-- 	-- 	degrade = 60,
-- 	-- 	client = {
-- 	-- 		image = 'burger_chicken.png',
-- 	-- 		status = { hunger = 200000 },
-- 	-- 		anim = 'eating',
-- 	-- 		prop = 'burger',
-- 	-- 		usetime = 2500,
-- 	-- 		export = 'ox_inventory_examples.testburger'
-- 	-- 	},
-- 	-- 	server = {
-- 	-- 		export = 'ox_inventory_examples.testburger',
-- 	-- 		test = 'what an amazingly delicious burger, amirite?'
-- 	-- 	},
-- 	-- 	buttons = {
-- 	-- 		{
-- 	-- 			label = 'Lick it',
-- 	-- 			action = function(slot)
-- 	-- 				print('You licked the burger')
-- 	-- 			end
-- 	-- 		},
-- 	-- 		{
-- 	-- 			label = 'Squeeze it',
-- 	-- 			action = function(slot)
-- 	-- 				print('You squeezed the burger :(')
-- 	-- 			end
-- 	-- 		},
-- 	-- 		{
-- 	-- 			label = 'What do you call a vegan burger?',
-- 	-- 			group = 'Hamburger Puns',
-- 	-- 			action = function(slot)
-- 	-- 				print('A misteak.')
-- 	-- 			end
-- 	-- 		},
-- 	-- 		{
-- 	-- 			label = 'What do frogs like to eat with their hamburgers?',
-- 	-- 			group = 'Hamburger Puns',
-- 	-- 			action = function(slot)
-- 	-- 				print('French flies.')
-- 	-- 			end
-- 	-- 		},
-- 	-- 		{
-- 	-- 			label = 'Why were the burger and fries running?',
-- 	-- 			group = 'Hamburger Puns',
-- 	-- 			action = function(slot)
-- 	-- 				print('Because they\'re fast food.')
-- 	-- 			end
-- 	-- 		}
-- 	-- 	},
-- 	-- 	consume = 0.3
-- 	-- },

-- 	['black_money'] = {
-- 		label = 'Dirty Money',
-- 	},

-- 	-- ['burger'] = {
-- 	-- 	label = 'Burger',
-- 	-- 	weight = 220,
-- 	-- 	client = {
-- 	-- 		status = { hunger = 200000 },
-- 	-- 		anim = 'eating',
-- 	-- 		prop = 'burger',
-- 	-- 		usetime = 2500,
-- 	-- 		notification = 'You ate a delicious burger'
-- 	-- 	},
-- 	-- },

-- 	['sprunk'] = {
-- 		label = 'Sprunk',
-- 		weight = 350,
-- 		client = {
-- 			status = { thirst = 200000 },
-- 			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
-- 			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
-- 			usetime = 2500,
-- 			notification = 'You quenched your thirst with a sprunk'
-- 		}
-- 	},

-- 	['parachute'] = {
-- 		label = 'Parachute',
-- 		weight = 8000,
-- 		stack = false,
-- 		client = {
-- 			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
-- 			usetime = 1500
-- 		}
-- 	},

-- 	-- ['garbage'] = {
-- 	-- 	label = 'Garbage',
-- 	-- },

-- 	-- ['paperbag'] = {
-- 	-- 	label = 'Paper Bag',
-- 	-- 	weight = 1,
-- 	-- 	stack = false,
-- 	-- 	close = false,
-- 	-- 	consume = 0
-- 	-- },

-- 	['identification'] = {
-- 		label = 'Identification',
-- 		client = {
-- 			image = 'card_id.png'
-- 		}
-- 	},

-- 	-- ['panties'] = {
-- 	-- 	label = 'Knickers',
-- 	-- 	weight = 10,
-- 	-- 	consume = 0,
-- 	-- 	client = {
-- 	-- 		status = { thirst = -100000, stress = -25000 },
-- 	-- 		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
-- 	-- 		prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
-- 	-- 		usetime = 2500,
-- 	-- 	}
-- 	-- },

-- 	-- ['lockpick'] = {
-- 	-- 	label = 'Lockpick',
-- 	-- 	weight = 160,
-- 	-- },

-- 	['phone'] = {
-- 		label = 'Phone',
-- 		weight = 190,
-- 		stack = false,
-- 		consume = 0,
-- 		client = {
-- 			add = function(total)
-- 				if total > 0 then
-- 					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
-- 				end
-- 			end,

-- 			remove = function(total)
-- 				if total < 1 then
-- 					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
-- 				end
-- 			end
-- 			state = 'PHONE',
-- 			state = 'PHONE',
-- 		},
-- 		server = {
-- 			price = 100,
-- 		},
-- 	},

-- 	['money'] = {
-- 		label = 'Money',
-- 	},

-- 	['mustard'] = {
-- 		label = 'Mustard',
-- 		weight = 500,
-- 		client = {
-- 			status = { hunger = 25000, thirst = 25000 },
-- 			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
-- 			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
-- 			usetime = 2500,
-- 			notification = 'You.. drank mustard'
-- 		}
-- 	},

-- 	-- ['water'] = {
-- 	-- 	label = 'Water',
-- 	-- 	weight = 500,
-- 	-- 	client = {
-- 	-- 		status = { thirst = 200000 },
-- 	-- 		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
-- 	-- 		prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
-- 	-- 		usetime = 2500,
-- 	-- 		cancel = true,
-- 	-- 		notification = 'You drank some refreshing water'
-- 	-- 	}
-- 	-- },

-- 	['radio'] = {
-- 		label = 'Radio',
-- 		weight = 1000,
-- 		stack = false,
-- 		allowArmed = true
-- 	},

-- 	['armour'] = {
-- 		label = 'Bulletproof Vest',
-- 		weight = 3000,
-- 		stack = false,
-- 		client = {
-- 			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
-- 			usetime = 3500
-- 		}
-- 	},

-- 	['clothing'] = {
-- 		label = 'Clothing',
-- 		consume = 0,
-- 	},

-- 	['mastercard'] = {
-- 		label = 'Fleeca Card',
-- 		stack = false,
-- 		weight = 10,
-- 		client = {
-- 			image = 'card_bank.png'
-- 		}
-- 	},

-- 	['scrapmetal'] = {
-- 		label = 'Scrap Metal',
-- 		weight = 80,
-- 	},
-- }

return {
	['WEAPON_RPK16'] = {
		label = 'RPK16',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['moneyband'] = {
		label = 'Bands of Cash',
		weight = 0.01,
		stack = 1000,
		server = {
			price = 1000,
		},
	},

	['energy_pepe'] = {
		label = 'Energy Drink',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 15000,
			},
			anim = 'energydrink',
			usetime = 6000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Energy Drink',
		},
		server = {
			price = 110,
		},
	},

	['moneyroll'] = {
		label = 'Cash Roll',
		weight = 0.01,
		stack = 1000,
		server = {
			price = 100,
		},
	},

	['repair_part_injectors'] = {
		label = 'Fuel Injectors',
		weight = 0.75,
		stack = 20,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['rubber'] = {
		label = 'Rubber',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 10,
		},
	},

	['schematic_scope_small'] = {
		label = 'Schematic: Small Scope',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['packaged_parts'] = {
		label = 'Packaged Parts',
		weight = 4.0,
		server = {
			price = 0,
		},
	},

	['fishing_chest'] = {
		label = 'Old Chest',
		weight = 50.0,
		stack = false,
		client = {
			state = 'ANIM_chest',
			state = 'ANIM_chest',
		},
		server = {
			price = 2500,
		},
	},

	['WEAPON_GRENADE'] = {
		label = 'Grenade',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_GRENADE',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['WEAPON_ASSAULTSHOTGUN'] = {
		label = 'UTS-15',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['money'] = {
		label = 'Money',
	},

	['guksu'] = {
		label = 'Guksu',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
				thirst = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Guksu',
		},
		server = {
			price = 100,
		},
	},

	['WEAPON_CROWBAR'] = {
		label = 'Crowbar',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['WEAPON_AK74'] = {
		label = 'AK-74',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['fishing_bike'] = {
		label = 'Rusty Bicycle',
		weight = 25.0,
		stack = false,
		close = false,
		server = {
			price = 500,
		},
	},

	['orange'] = {
		label = 'Orange',
		weight = 0.1,
		stack = 250,
		server = {
			price = 0,
		},
	},

	['WEAPON_HATCHET'] = {
		label = 'Hatchet',
		weight = 18,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['hack_usb'] = {
		label = 'Easy Hacker 3000',
		weight = 1,
		stack = false,
		degrade = 20160,
		server = {
			price = 15000,
		},
	},

	['WEAPON_GOLFCLUB'] = {
		label = 'Golf Club',
		weight = 12,
		stack = false,
		degrade = 30240,
		server = {
			price = 500,
		},
	},

	['chips'] = {
		label = 'Chips',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 55000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chips',
		},
		server = {
			price = 30,
		},
	},

	['choclate_pancakes'] = {
		label = 'Chocolate Pancakes',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chocolate Pancakes',
		},
		server = {
			price = 240,
		},
	},

	['WEAPON_MP5'] = {
		label = 'MP5',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			weapon = 'WEAPON_MP5',
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['vpn'] = {
		label = 'VPN',
		weight = 1,
		stack = false,
		degrade = 30240,
		client = {
			state = 'PHONE_VPN',
			state = 'PHONE_VPN',
		},
		server = {
			price = 15000,
		},
	},

	['vanityitem'] = {
		label = 'Vanity Item',
		weight = 0.01,
		stack = false,
		close = false,
		server = {
			price = 0,
		},
	},

	['pesto_cavatappi'] = {
		label = 'Pesto Cavatappi',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 75000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 17000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Pesto Cavatappi',
		},
		server = {
			price = 0,
		},
	},

	['upgrade_transmission3'] = {
		label = 'Transmission Upgrade (3)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['uwu_prize_b7'] = {
		label = 'UwU Moon Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['WEAPON_FIREWORK'] = {
		label = 'Firework Launcher',
		weight = 20,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_FIREWORK',
		},
		server = {
			price = 100000,
		},
	},

	['chocolate_bar'] = {
		label = 'Chocolate Bar',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chocolate Bar',
		},
		server = {
			price = 25,
		},
	},

	['ATTCH_AR_SILENCER'] = {
		label = 'Rifle Suppressor',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_AR_SILENCER')
				end
			},
		},
	},

	['repair_part_axle'] = {
		label = 'Axle Parts',
		weight = 7.5,
		stack = 5,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['crypto_voucher'] = {
		label = 'Crypto Voucher',
		weight = 0.25,
		stack = false,
		server = {
			price = 0,
		},
	},

	['ruby'] = {
		label = 'Ruby',
		weight = 0.5,
		stack = false,
		server = {
			price = 6000,
		},
	},

	['sandwich_crisp'] = {
		label = 'Crisp Sandwich',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 30000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Crisp Sandwich',
		},
		server = {
			price = 3,
		},
	},

	['lithium'] = {
		label = 'Lithium',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['WEAPON_P320a'] = {
		label = 'P320a',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['green_laptop'] = {
		label = 'Laptop (Green)',
		weight = 1,
		stack = false,
		degrade = 10080,
		server = {
			price = 5000,
		},
	},

	['schematic_yellow_laptop'] = {
		label = 'Schematic: Yellow Laptop',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['japanese_pan_noodles'] = {
		label = 'Japanese Pan Noodles',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Japanese Pan Noodles',
		},
		server = {
			price = 100,
		},
	},

	['booba_tea'] = {
		label = 'Bobba Tea',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 100000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Bobba Tea',
		},
		server = {
			price = 125,
		},
	},

	['hotdog'] = {
		label = 'Hotdog',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Hotdog',
		},
		server = {
			price = 0,
		},
	},

	['coke_brick'] = {
		label = 'Brick of Cocaine',
		weight = 5,
		stack = false,
		degrade = 28800,
		server = {
			price = 60,
		},
	},

	['iodine_crystals'] = {
		label = 'Iodine Crystals',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['ATTCH_BOX_MAG'] = {
		label = 'Box Magazine',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_BOX_MAG')
				end
			},
		},
	},

	['exotic_bait'] = {
		label = 'Exotic Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 1000,
		},
	},

	['AMMO_STUNGUN'] = {
		label = 'Taser Ammo',
		weight = 0.5,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_STUNGUN',
		},
		server = {
			price = 3,
		},
	},

	['water'] = {
		label = 'Water',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 0,
				thirst = 30000,
			},
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 746336278, pos = vec3(0.029999999329448, 0.029999999329448, 0.019999999552965), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Water',
		},
		server = {
			price = 3,
		},
	},

	['carpolish_high'] = {
		label = 'Fantastic Car Wax',
		weight = 3.5,
		stack = false,
		degrade = 20160,
		server = {
			price = 375,
		},
	},

	['fishing_bass'] = {
		label = 'Bass Fish',
		weight = 1.5,
		stack = 25,
		degrade = 86400,
		server = {
			price = 120,
		},
	},

	['WEAPON_REVOLVER'] = {
		label = 'Revolver',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 7000,
			license = true,
		},
	},

	['anhydrous_ammonia'] = {
		label = 'Anhydrous Ammonia',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['bavarois'] = {
		label = 'Bavarois',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Bavarois',
		},
		server = {
			price = 0,
		},
	},

	['fishing_net'] = {
		label = 'Fishing Net',
		weight = 5.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 3000,
		},
	},

	['refined_iron'] = {
		label = 'Refined Iron',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['yellow_dongle'] = {
		label = 'USB Drive (Yellow)',
		weight = 1,
		stack = false,
		close = false,
		degrade = 4320,
		client = {
			state = 'DONGLE_YELLOW',
			state = 'DONGLE_YELLOW',
		},
		server = {
			price = 2500,
		},
	},

	['schematic_pp19'] = {
		label = 'Schematic: PP-19',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['goldcoins'] = {
		label = 'Gold Coins',
		weight = 0.1,
		stack = 1000,
		close = false,
		degrade = 14400,
		server = {
			price = 90,
		},
	},

	['WEAPON_DRBAT'] = {
		label = 'Dr-Deshbat',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['hide_tier4'] = {
		label = 'Animal Hide (Tier 4)',
		weight = 3,
		stack = false,
		degrade = 14400,
		server = {
			price = 10000,
		},
	},

	['prison_food'] = {
		label = 'Prison Food',
		weight = 1,
		stack = 15,
		consume = 1,
		degrade = 1440,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'sandwich',
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Prison Food',
		},
		server = {
			price = 5,
		},
	},

	['refined_plastic'] = {
		label = 'Refined Plasic',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_AR15'] = {
		label = 'AR-15',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['icing'] = {
		label = 'Icing',
		weight = 0.3,
		stack = 50,
		server = {
			price = 3,
		},
	},

	['WEAPON_SHOVEL'] = {
		label = 'Shovel',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['expresso'] = {
		label = 'Espresso',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 25000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Espresso',
		},
		server = {
			price = 200,
		},
	},

	['WEAPON_DBSHOTGUN'] = {
		label = 'Double Barrel Shotgun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['repair_part_electronics'] = {
		label = 'Vehicle Electronics',
		weight = 4.5,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_FLASHBANG'] = {
		label = 'Flashbang',
		weight = 1,
		stack = 10,
		degrade = 30240,
		client = {
			ammo = 'AMMO_FLASH',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['hide_tier1'] = {
		label = 'Animal Hide (Tier 1)',
		weight = 3,
		stack = false,
		degrade = 14400,
		server = {
			price = 10000,
		},
	},

	['pdhandcuffs'] = {
		label = 'PD Handcuffs',
		weight = 0.25,
		stack = false,
		degrade = 10080,
		server = {
			price = 25,
		},
	},

	['burgershot_bag'] = {
		label = 'Burgershot Bag',
		weight = 10,
		stack = false,
		close = false,
		client = {
			container = 20,
		},
		server = {
			price = 20,
		},
	},

	['sloppyjoe'] = {
		label = 'Sloppy Joe',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Sloppy Joe',
		},
		server = {
			price = 0,
		},
	},

	['glue'] = {
		label = 'Glue',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 150,
		},
	},

	['AMMO_RIFLE_PD'] = {
		label = 'PD Rifle Ammo',
		weight = 1.0,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_RIFLE',
		},
		server = {
			price = 10,
		},
	},

	['goat_cheese_wrap'] = {
		label = 'Goat Cheese Wrap',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'bshot_wrap1',
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Goat Cheese Wrap',
		},
		server = {
			price = 65,
		},
	},

	['WEAPON_HEAVYSHOTGUN'] = {
		label = 'Double Barrel Shotgun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['fishing_whale'] = {
		label = 'A Whale',
		weight = 100.0,
		stack = false,
		server = {
			price = 0,
		},
	},

	['fishing_chub'] = {
		label = 'Chub',
		weight = 1.5,
		stack = 25,
		degrade = 86400,
		server = {
			price = 75,
		},
	},

	['repairkit'] = {
		label = 'Repair Kit',
		weight = 10,
		stack = 4,
		degrade = 10080,
		server = {
			price = 350,
		},
	},

	['refined_copper'] = {
		label = 'Refined Copper',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_MG'] = {
		label = 'PKM',
		weight = 20,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_MG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['ring'] = {
		label = 'Ring',
		weight = 1,
		stack = 100,
		close = false,
		degrade = 14400,
		server = {
			price = 185,
		},
	},

	['peach_juice'] = {
		label = 'Peach Juice',
		weight = 0.05,
		stack = 50,
		server = {
			price = 2,
		},
	},

	['blueberry_muffin'] = {
		label = 'Blueberry Muffin',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Blueberry Muffin',
		},
		server = {
			price = 105,
		},
	},

	['fertilizer_phosphorus'] = {
		label = 'Fertilizer (Phosphorus)',
		weight = 3,
		stack = 50,
		consume = 0.3,
		degrade = 10080,
		client = {
			notification = 'You used Fertilizer (Phosphorus)',
		},
		server = {
			price = 600,
		},
	},

	['raspberry_liqueur'] = {
		label = 'Raspberry Liqueur',
		weight = 0.05,
		stack = 30,
		server = {
			price = 5,
		},
	},

	['ssf_chain'] = {
		label = 'SSF Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'ssf',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ssf_chain')
				end
			},
		},
	},

	['fishing_bluefintuna'] = {
		label = 'Bluefin Tuna',
		weight = 3.5,
		stack = 25,
		degrade = 86400,
		server = {
			price = 0,
		},
	},

	['beef'] = {
		label = 'Beef',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Beef',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_SWITCHBLADE'] = {
		label = 'Switchblade',
		weight = 8,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['chocy_muff'] = {
		label = 'Chocolate Muffin',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chocolate Muffin',
		},
		server = {
			price = 105,
		},
	},

	['weedseed_female'] = {
		label = 'Female Marijuana Seed',
		weight = 0.05,
		stack = 500,
		degrade = 40320,
		server = {
			price = 100,
		},
	},

	['heavy_glue'] = {
		label = 'Heavy Duty Glue',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 200,
		},
	},

	['fleeca_card'] = {
		label = 'Disposable Access Card',
		weight = 0.25,
		stack = false,
		degrade = 360,
		server = {
			price = 10000,
		},
	},

	['raspberry'] = {
		label = 'Raspberry',
		weight = 0.05,
		stack = 250,
		server = {
			price = 1,
		},
	},

	['WEAPON_FNX'] = {
		label = 'FNX-45',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 3200,
			license = true,
		},
	},

	['double_shot_burger'] = {
		label = 'Double Shot',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'bshot_doubleshot',
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Double Shot',
		},
		server = {
			price = 50,
		},
	},

	['WEAPON_FLARE'] = {
		label = 'Flare',
		weight = 10,
		stack = 10,
		degrade = 20160,
		client = {
			ammo = 'AMMO_FLARE',
		},
		server = {
			price = 1000,
		},
	},

	['copperwire'] = {
		label = 'Copper Wire',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 10,
		},
	},

	['hide_tier3'] = {
		label = 'Animal Hide (Tier 3)',
		weight = 3,
		stack = false,
		degrade = 14400,
		server = {
			price = 10000,
		},
	},

	['repair_part_clutch_hg'] = {
		label = 'HG Clutch',
		weight = 5.75,
		stack = 8,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['the_simply_burger'] = {
		label = 'Simply Burger',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 80000,
			},
			anim = 'bshot_simply',
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Simply Burger',
		},
		server = {
			price = 50,
		},
	},

	['coffee_holder'] = {
		label = 'Drinks Holder',
		weight = 8,
		stack = false,
		close = false,
		client = {
			container = 19,
		},
		server = {
			price = 3,
		},
	},

	['giftbox'] = {
		label = 'Gift Box',
		weight = 0,
		stack = false,
		server = {
			price = 0,
		},
	},

	['penna_rosa'] = {
		label = 'Penne Rosa',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 85000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 20000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Penne Rosa',
		},
		server = {
			price = 0,
		},
	},

	['firstaid'] = {
		label = 'First Aid Kit',
		weight = 5,
		stack = 5,
		consume = 0.3,
		degrade = 7200,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used First Aid Kit',
		},
		server = {
			price = 250,
		},
	},

	['fishing_rockfish'] = {
		label = 'Rock Fish',
		weight = 1.0,
		stack = 25,
		degrade = 86400,
		server = {
			price = 150,
		},
	},

	['fishing_bait_worm'] = {
		label = 'Worm Bait',
		weight = 0.1,
		stack = 50,
		close = false,
		degrade = 86400,
		server = {
			price = 15,
		},
	},

	['WEAPON_ASSAULTSMG'] = {
		label = 'FN P90',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['boombox'] = {
		label = 'Boom Box',
		weight = 50.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_boombox',
			state = 'ANIM_boombox',
		},
		server = {
			price = 300,
		},
	},

	['WEAPON_SAWNOFFSHOTGUN'] = {
		label = 'Sawnoff Shotgun',
		weight = 12,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_PIPEBOMB'] = {
		label = 'Pipe Bomb',
		weight = 12,
		stack = 10,
		degrade = 10080,
		client = {
			ammo = 'AMMO_PIPEBOMB',
		},
		server = {
			price = 1000,
		},
	},

	['KATANA'] = {
		label = 'Katana',
		weight = 3,
		stack = false,
		degrade = 30240,
		client = {
			weapon = 'WEAPON_KATANAS',
		},
		server = {
			price = 2000,
		},
	},

	['WEAPON_MINIUZI'] = {
		label = 'Mini UZI',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['upgrade_transmission1'] = {
		label = 'Transmission Upgrade (1)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['repair_part_rad'] = {
		label = 'Radiator',
		weight = 5.0,
		stack = 4,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['schematic_thermite'] = {
		label = 'Schematic: Thermite',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['repair_part_clutch'] = {
		label = 'Clutch',
		weight = 5.75,
		stack = 8,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['green_dongle'] = {
		label = 'USB Drive (Green)',
		weight = 1,
		stack = false,
		close = false,
		degrade = 10080,
		client = {
			state = 'DONGLE_GREEN',
			state = 'DONGLE_GREEN',
		},
		server = {
			price = 5000,
		},
	},

	['recycledgoods'] = {
		label = 'Recycled Goods',
		weight = 0.25,
		stack = 200,
		degrade = 129600,
		server = {
			price = 0,
		},
	},

	['BOBCAT_DOUBLEACTION'] = {
		label = 'Double Action Revolver',
		weight = 10,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_DOUBLEACTION',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 8000,
			license = true,
		},
	},

	['bento_box'] = {
		label = 'Bento Box',
		weight = 10,
		stack = false,
		close = false,
		client = {
			container = 20,
		},
		server = {
			price = 4,
		},
	},

	['WEAPON_BEANBAG'] = {
		label = 'Beanbag Gun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 300,
			license = true,
		},
	},

	['fertilizer_nitrogen'] = {
		label = 'Fertilizer (Nitrogen)',
		weight = 3,
		stack = 50,
		consume = 0.3,
		degrade = 10080,
		client = {
			notification = 'You used Fertilizer (Nitrogen)',
		},
		server = {
			price = 600,
		},
	},

	['jaeger'] = {
		label = 'Jägermeister',
		weight = 0.3,
		stack = 10,
		consume = 1,
		client = {
			notification = 'You used Jägermeister',
		},
		server = {
			price = 150,
		},
	},

	['gps_tracker'] = {
		label = 'GPS Tracker',
		weight = 1,
		stack = false,
		degrade = 30240,
		server = {
			price = 15000,
		},
	},

	['WEAPON_MARKSMANRIFLE_MK2'] = {
		label = 'M39 EMR (MK2)',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SNIPER',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['whiskey_glass'] = {
		label = 'Glass of Whiskey',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Glass of Whiskey',
		},
		server = {
			price = 20,
		},
	},

	['binoculars'] = {
		label = 'Binoculars',
		weight = 2.5,
		stack = false,
		consume = 0.3,
		degrade = 30240,
		client = {
			notification = 'You used Binoculars',
		},
		server = {
			price = 90,
		},
	},

	['burger'] = {
		label = 'The Bleeder',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 70000,
			},
			anim = 'bshot_bleeder',
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used The Bleeder',
		},
		server = {
			price = 50,
		},
	},

	['sandwich_turkey'] = {
		label = 'Turkey Sandwich',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 40000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Turkey Sandwich',
		},
		server = {
			price = 4,
		},
	},

	['WEAPON_REVOLVER_MK2'] = {
		label = 'Revolver MK2',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 7000,
			license = true,
		},
	},

	['cigarette_pack'] = {
		label = 'Pack of Cigarettes',
		weight = 5.0,
		stack = false,
		consume = 0.3,
		degrade = 14400,
		client = {
			usetime = 2000,
			disable = {
				car = false,
				move = false,
				combat = false,
			},
			notification = 'You used Pack of Cigarettes',
		},
		server = {
			price = 20,
		},
	},

	['beanmachine'] = {
		label = 'The Bean Machine',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 15000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used The Bean Machine',
		},
		server = {
			price = 200,
		},
	},

	['ATTCH_LRG_SCOPE'] = {
		label = 'Large Scope',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_LRG_SCOPE')
				end
			},
		},
	},

	['WEAPON_BULLPUPSHOTGUN'] = {
		label = 'Kel-Tel KSG',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['upgrade_engine4'] = {
		label = 'Engine Upgrade (4)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_BZGAS'] = {
		label = 'BZ Gas',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_BZGAS',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['coffee_beans'] = {
		label = 'Coffee Beans',
		weight = 0.1,
		stack = 300,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Coffee Beans',
		},
		server = {
			price = 7,
		},
	},

	['salisbury_steak'] = {
		label = 'Salisbury Steak',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Salisbury Steak',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_P90FM'] = {
		label = 'P90',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['green_sequencer'] = {
		label = 'Green Keypad Sequencer',
		weight = 1,
		stack = false,
		degrade = 20160,
		server = {
			price = 5000,
		},
	},

	['WEAPON_HEAVYPISTOL'] = {
		label = 'Heavy Pistol',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['WEAPON_MACHETE'] = {
		label = 'Machete',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 700,
		},
	},

	['WEAPON_UZI'] = {
		label = 'UZI',
		weight = 12,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['upgrade_suspension1'] = {
		label = 'Suspension Upgrade (1)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_LUCILLE'] = {
		label = 'Lucille',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['lust_chain'] = {
		label = 'Lust Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'lust',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using lust_chain')
				end
			},
		},
	},

	['unknown_ore'] = {
		label = 'Unknown Ore',
		weight = 3.0,
		stack = 15,
		close = false,
		server = {
			price = 0,
		},
	},

	['fettuccini_alfredo'] = {
		label = 'Fettuccini Alfredo',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Fettuccini Alfredo',
		},
		server = {
			price = 100,
		},
	},

	['venison'] = {
		label = 'Venison',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Venison',
		},
		server = {
			price = 0,
		},
	},

	['diamond_drink'] = {
		label = 'The Diamond Cocktail',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used The Diamond Cocktail',
		},
		server = {
			price = 50,
		},
	},

	['WEAPON_MINISMG'] = {
		label = 'Skorpion',
		weight = 12,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['ATTCH_ADV_SMG_SILENCER'] = {
		label = 'Adv. SMG Suppressor',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_ADV_SMG_SILENCER')
				end
			},
		},
	},

	['tourniquet'] = {
		label = 'Tourniquet',
		weight = 1,
		stack = false,
		consume = 0.3,
		degrade = 10080,
		client = {
			anim = 'bandage',
			prop = { model = 948080762, pos = vec3(-0.14000000059605, -0.14000000059605, -0.079999998211861), rot = vec3(-50.0, -50.0, 0.0) },
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Tourniquet',
		},
		server = {
			price = 150,
		},
	},

	['red_dongle'] = {
		label = 'USB Drive (Red)',
		weight = 1,
		stack = false,
		close = false,
		degrade = 30240,
		client = {
			state = 'DONGLE_RED',
			state = 'DONGLE_RED',
		},
		server = {
			price = 25000,
		},
	},

	['dough'] = {
		label = 'Dough',
		weight = 0.15,
		stack = 200,
		server = {
			price = 3,
		},
	},

	['earrings'] = {
		label = 'Gold Earrings',
		weight = 0.8,
		stack = 100,
		close = false,
		degrade = 14400,
		server = {
			price = 185,
		},
	},

	['ATTCH_MED_SCOPE'] = {
		label = 'Medium Scope',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_MED_SCOPE')
				end
			},
		},
	},

	['AMMO_PISTOL'] = {
		label = 'Pistol Ammo',
		weight = 0.75,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_PISTOL',
		},
		server = {
			price = 50,
		},
	},

	['maki_tuna'] = {
		label = 'Tuna Rolls',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
				thirst = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Tuna Rolls',
		},
		server = {
			price = 100,
		},
	},

	['WEAPON_APPISTOL'] = {
		label = 'Glock 18c',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['plastic_wrap'] = {
		label = 'Plastic Wrap',
		weight = 0.05,
		stack = 5,
		degrade = 10080,
		server = {
			price = 50,
		},
	},

	['WEAPON_SPECIALCARBINE'] = {
		label = 'HK G36C',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['gunpowder'] = {
		label = 'Gun Powder',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['rolex'] = {
		label = 'Rolex',
		weight = 0.75,
		stack = 50,
		close = false,
		degrade = 14400,
		server = {
			price = 500,
		},
	},

	['ATTCH_AR_EXT_MAG'] = {
		label = 'Extended AR Magazine',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_AR_EXT_MAG')
				end
			},
		},
	},

	['ironore'] = {
		label = 'Iron Ore',
		weight = 3,
		stack = 200,
		degrade = 129600,
		server = {
			price = 0,
		},
	},

	['boosting_tracking_disabler'] = {
		label = 'Tracker Hacker Device',
		weight = 0.5,
		stack = 5,
		degrade = 40320,
		server = {
			price = 7500,
		},
	},

	['repair_part_brakes_hg'] = {
		label = 'HG Brakes',
		weight = 6.9,
		stack = 5,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['BOBCAT_PUMPSHOTGUN'] = {
		label = 'Pump Shotgun',
		weight = 15,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_PUMPSHOTGUN',
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['heavyarmor'] = {
		label = 'Heavy Body Armor',
		weight = 8,
		stack = 5,
		consume = 0.3,
		degrade = 10080,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Heavy Body Armor',
		},
		server = {
			price = 2250,
		},
	},

	['WEAPON_MP9A'] = {
		label = 'MP9a',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			weapon = 'WEAPON_MP9A',
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['BOBCAT_57'] = {
		label = 'Five Seven',
		weight = 10,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_57',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['BOBCAT_SAWNOFFSHOTGUN'] = {
		label = 'Sawnoff Shotgun',
		weight = 12,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_SAWNOFFSHOTGUN',
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['ATTCH_ADV_PISTOL_SILENCER'] = {
		label = 'Adv. Pistol Suppressor',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 25000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_ADV_PISTOL_SILENCER')
				end
			},
		},
	},

	['coffee'] = {
		label = 'Coffee',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 15000,
			},
			anim = 'coffee',
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Coffee',
		},
		server = {
			price = 295,
		},
	},

	['adv_electronics_kit'] = {
		label = 'Hacking Device',
		weight = 0.5,
		stack = 5,
		degrade = 40320,
		server = {
			price = 7500,
		},
	},

	['pad_thai'] = {
		label = 'Pad Thai',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
				thirst = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Pad Thai',
		},
		server = {
			price = 100,
		},
	},

	['WEAPON_COMBATPISTOL'] = {
		label = 'Combat Pistol',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 3200,
			license = true,
		},
	},

	['uwu_prize_b9'] = {
		label = 'UwU Star Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['ATTCH_GRIP'] = {
		label = 'Foregrip',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_GRIP')
				end
			},
		},
	},

	['schematic_scope_lrg'] = {
		label = 'Schematic: Large Scope',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['ATTCH_PISTOL_EXT_MAG'] = {
		label = 'Extended Pistol Magazine',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_PISTOL_EXT_MAG')
				end
			},
		},
	},

	['lsundg_invite'] = {
		label = 'LSUNDG Invitation',
		weight = 0.1,
		stack = false,
		server = {
			price = 0,
		},
	},

	['WEAPON_SNOWBALL'] = {
		label = 'Snowball',
		weight = 5,
		stack = false,
		degrade = 1440,
		client = {
			ammo = 'AMMO_SNOWBALL',
		},
		server = {
			price = 1000,
		},
	},

	['uwu_prize_box'] = {
		label = 'UwU Mystery Box',
		weight = 0.0,
		stack = 100,
		consume = 1,
		client = {
			anim = 'mindblown',
			usetime = 3000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used UwU Mystery Box',
		},
		server = {
			price = 0,
		},
	},

	['tv'] = {
		label = 'Television',
		weight = 100.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_tv',
			state = 'ANIM_tv',
		},
		server = {
			price = 1800,
		},
	},

	['meth_pipe'] = {
		label = 'Meth Pipe',
		weight = 1,
		stack = false,
		degrade = 43200,
		server = {
			price = 1000,
		},
	},

	['upgrade_suspension2'] = {
		label = 'Suspension Upgrade (2)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['golfclubs'] = {
		label = 'Golf Club Set',
		weight = 100.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_golfclubs',
			state = 'ANIM_golfclubs',
		},
		server = {
			price = 450,
		},
	},

	['tea_leaf'] = {
		label = 'Tea Leaf',
		weight = 0.01,
		stack = 500,
		server = {
			price = 1,
		},
	},

	['upgrade_brakes2'] = {
		label = 'Brakes Upgrade (2)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['thermite'] = {
		label = 'Thermite Charge',
		weight = 2.5,
		stack = false,
		consume = 0.3,
		degrade = 86400,
		client = {
			notification = 'You used Thermite Charge',
		},
		server = {
			price = 200,
		},
	},

	['schematic_scope_holo'] = {
		label = 'Schematic: Holographic Sight',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['mask'] = {
		label = 'Mask',
		weight = 0,
		stack = false,
		server = {
			price = 50,
		},
	},

	['fishing_grasscarp'] = {
		label = 'Grass Carp',
		weight = 1.0,
		stack = 25,
		degrade = 86400,
		server = {
			price = 75,
		},
	},

	['ironbar'] = {
		label = 'Iron Bar',
		weight = 0,
		stack = 10000,
		degrade = 129600,
		server = {
			price = 2500,
		},
	},

	['evidence-casing'] = {
		label = 'Bullet Casing',
		weight = 0.25,
		stack = false,
		server = {
			price = 0,
		},
	},

	['goldbar'] = {
		label = 'Gold Bar',
		weight = 0.25,
		stack = 10000,
		degrade = 129600,
		server = {
			price = 500,
		},
	},

	['upgrade_suspension3'] = {
		label = 'Suspension Upgrade (3)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_ASSAULTRIFLE_MK2'] = {
		label = 'AK-12',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['lockpick_pd'] = {
		label = 'PD Lockpick',
		weight = 0.5,
		stack = 10,
		server = {
			price = 200,
			restrict = {
				job = {
					duty = true,
					id = 'police',
				},
			},
		},
	},

	['WEAPON_SLEDGE'] = {
		label = 'Sledgehammer',
		weight = 12,
		stack = false,
		degrade = 30240,
		server = {
			price = 700,
		},
	},

	['gauze'] = {
		label = 'Gauze',
		weight = 0.1,
		stack = 30,
		consume = 0.3,
		degrade = 7200,
		client = {
			anim = 'bandage',
			prop = { model = 948080762, pos = vec3(-0.14000000059605, -0.14000000059605, -0.079999998211861), rot = vec3(-50.0, -50.0, 0.0) },
			usetime = 2000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Gauze',
		},
		server = {
			price = 10,
		},
	},

	['spag_bowl'] = {
		label = 'Spaghetti Bolognese',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 70000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 17000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Spaghetti Bolognese',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_POOLCUE'] = {
		label = 'Pool Cue',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 200,
		},
	},

	['schematic_purple_laptop'] = {
		label = 'Schematic: Purple Laptop',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['tequila'] = {
		label = 'Tequila',
		weight = 0.3,
		stack = 50,
		consume = 1,
		degrade = 86400,
		client = {
			notification = 'You used Tequila',
		},
		server = {
			price = 220,
		},
	},

	['WEAPON_2011'] = {
		label = 'STI DVC 2011',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['contraband'] = {
		label = 'Mysterious Box',
		weight = 10,
		stack = false,
		close = false,
		degrade = 1440,
		client = {
			state = 'ANIM_box',
			state = 'ANIM_box',
		},
		server = {
			price = 1000,
		},
	},

	['fishing_dolphin'] = {
		label = 'A Dolphin',
		weight = 50.0,
		stack = false,
		server = {
			price = 0,
		},
	},

	['rice'] = {
		label = 'Bag of Rice',
		weight = 0.8,
		stack = 60,
		server = {
			price = 5,
		},
	},

	['upgrade_brakes3'] = {
		label = 'Brakes Upgrade (3)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['donut_stack'] = {
		label = 'Stack of Donuts',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 80000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Stack of Donuts',
		},
		server = {
			price = 50,
		},
	},

	['emerald'] = {
		label = 'Emerald',
		weight = 0.5,
		stack = false,
		server = {
			price = 8000,
		},
	},

	['uwu_prize_b3'] = {
		label = 'UwU Sun Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['smoothie_veg'] = {
		label = 'Veg Smoothie',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				player_drunk = -10000,
				hunger = 10000,
				thirst = 75000,
			},
			anim = 'cup',
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Veg Smoothie',
		},
		server = {
			price = 240,
		},
	},

	['weed_joint'] = {
		label = 'Joint',
		weight = 0.5,
		stack = 10,
		degrade = 28800,
		client = {
			status = {
				hunger = -5000,
			},
			drugState = {
				duration = 1800,
				type = 'weed',
			},
		},
		server = {
			price = 25,
		},
	},

	['schematic_scope_med'] = {
		label = 'Schematic: Medium Scope',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['donut'] = {
		label = 'Donut',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 15000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = -1877813643, pos = vec3(0.019999999552965, 0.019999999552965, -0.019999999552965), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Donut',
		},
		server = {
			price = 105,
		},
	},

	['boar_bait'] = {
		label = 'Boar Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 20,
		},
	},

	['pc'] = {
		label = 'PC',
		weight = 80.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_pc',
			state = 'ANIM_pc',
		},
		server = {
			price = 1200,
		},
	},

	['schematic_shotgun_ammo'] = {
		label = 'Schematic: Shotgun Ammo',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['enemigos_chain'] = {
		label = 'Enemigos Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'enemigos',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using enemigos_chain')
				end
			},
		},
	},

	['WEAPON_GUSENBERG'] = {
		label = 'Tommy Gun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_57'] = {
		label = 'Five Seven',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['ravioli'] = {
		label = 'Ravioli',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
				thirst = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Ravioli',
		},
		server = {
			price = 100,
		},
	},

	['bobcat_tracker'] = {
		label = 'GPS Tracker',
		weight = 1,
		stack = false,
		degrade = 30240,
		server = {
			price = 15000,
		},
	},

	['upgrade_brakes1'] = {
		label = 'Brakes Upgrade (1)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['BOBCAT_DBSHOTGUN'] = {
		label = 'Double Barrel Shotgun',
		weight = 12,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_DBSHOTGUN',
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['coke_bag'] = {
		label = 'Cocaine',
		weight = 0.1,
		stack = 25,
		degrade = 28800,
		client = {
			status = {
				thirst = -5000,
			},
			drugState = {
				duration = 3600,
				type = 'meth',
			},
		},
		server = {
			price = 400,
		},
	},

	['WEAPON_HKUMP'] = {
		label = 'PD UMP45',
		weight = 15,
		stack = false,
		degrade = 4320,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['fishing_rod'] = {
		label = 'Fishing Rod',
		weight = 3.5,
		stack = false,
		degrade = 43200,
		server = {
			price = 750,
		},
	},

	['sapphire'] = {
		label = 'Sapphire',
		weight = 0.5,
		stack = false,
		server = {
			price = 6000,
		},
	},

	['flour'] = {
		label = 'Bag of Flour',
		weight = 0.8,
		stack = 60,
		server = {
			price = 2,
		},
	},

	['WEAPON_SNIPERRIFLE2'] = {
		label = 'Hunting Rifle',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SNIPER',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['repairkitadv'] = {
		label = 'Advanced Repair Kit',
		weight = 15,
		stack = 2,
		degrade = 10080,
		server = {
			price = 600,
		},
	},

	['orangotang_icecream'] = {
		label = 'Orangotang Ice Cream',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
				thirst = 50000,
			},
			anim = 'bshot_icecream2',
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Orangotang Ice Cream',
		},
		server = {
			price = 65,
		},
	},

	['salad'] = {
		label = 'Salad',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Salad',
		},
		server = {
			price = 150,
		},
	},

	['gasoline'] = {
		label = 'Gasoline',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['fleeca_tracker'] = {
		label = 'GPS Tracker',
		weight = 1,
		stack = false,
		degrade = 30240,
		server = {
			price = 15000,
		},
	},

	['fishandchips'] = {
		label = 'Fish and Chips',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 80000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 20000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Fish and Chips',
		},
		server = {
			price = 50,
		},
	},

	['schematic_mp5'] = {
		label = 'Schematic: MP5',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['WEAPON_PISTOL50'] = {
		label = 'Desert Eagle',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['WEAPON_BULLPUPRIFLE_MK2'] = {
		label = 'Bullpup Rifle MK2',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_HAMMER'] = {
		label = 'Hammer',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 500,
		},
	},

	['beanbag'] = {
		label = 'A Beanbag',
		weight = 2.0,
		stack = false,
		server = {
			price = 700,
		},
	},

	['schematic_ak74'] = {
		label = 'Schematic: AK-74',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['ATTCH_SMALL_SCOPE'] = {
		label = 'Small Scope',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_SMALL_SCOPE')
				end
			},
		},
	},

	['big_tv'] = {
		label = 'Television',
		weight = 100.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_bigtv',
			state = 'ANIM_bigtv',
		},
		server = {
			price = 3400,
		},
	},

	['house_art'] = {
		label = 'Painting',
		weight = 100.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_house_art',
			state = 'ANIM_house_art',
		},
		server = {
			price = 3600,
		},
	},

	['sandwich_chips'] = {
		label = 'Chip Butty',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 40000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chip Butty',
		},
		server = {
			price = 3,
		},
	},

	['diamond_vip'] = {
		label = 'Diamond VIP',
		weight = 0,
		stack = false,
		degrade = 10080,
		server = {
			price = 0,
		},
	},

	['carclean'] = {
		label = 'Car Cleaning Kit',
		weight = 10.0,
		stack = false,
		degrade = 20160,
		server = {
			price = 425,
		},
	},

	['schematic_scope_reddot'] = {
		label = 'Schematic: Red Dot Sight',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['uwu_prize_b5'] = {
		label = 'UwU Tree Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['upgrade_engine2'] = {
		label = 'Engine Upgrade (2)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_FLASHLIGHT'] = {
		label = 'Flashlight',
		weight = 8,
		stack = false,
		degrade = 30240,
		server = {
			price = 75,
		},
	},

	['BOBCAT_COMBATPISTOL'] = {
		label = 'Combat Pistol',
		weight = 10,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_COMBATPISTOL',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 3200,
			license = true,
		},
	},

	['baconeggbiscuit'] = {
		label = 'Bacon & Egg Biscuit',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Bacon & Egg Biscuit',
		},
		server = {
			price = 0,
		},
	},

	['hide_tier2'] = {
		label = 'Animal Hide (Tier 2)',
		weight = 3,
		stack = false,
		degrade = 14400,
		server = {
			price = 10000,
		},
	},

	['sequencer'] = {
		label = 'Yellow Keypad Sequencer',
		weight = 1,
		stack = false,
		degrade = 20160,
		server = {
			price = 2500,
		},
	},

	['schematic_adv_smg_suppressor'] = {
		label = 'Schematic: Adv. SMG Suppressor',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['spikes'] = {
		label = 'Spike Strips',
		weight = 12.5,
		stack = false,
		consume = 0.3,
		degrade = 10080,
		client = {
			notification = 'You used Spike Strips',
		},
		server = {
			price = 200,
		},
	},

	['WEAPON_VINTAGEPISTOL'] = {
		label = 'Vintage Pistol',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 5500,
			license = true,
		},
	},

	['red_laptop'] = {
		label = 'Laptop (Red)',
		weight = 1,
		stack = false,
		degrade = 10080,
		server = {
			price = 25000,
		},
	},

	['lasagna'] = {
		label = 'Lasagna',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Lasagna',
		},
		server = {
			price = 100,
		},
	},

	['schematic_green_laptop'] = {
		label = 'Schematic: Green Laptop',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['WEAPON_BULLPUPRIFLE'] = {
		label = 'Bullpup Rifle',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['evidence-dna'] = {
		label = 'DNA Sample',
		weight = 0.25,
		stack = false,
		server = {
			price = 0,
		},
	},

	['meth_brick'] = {
		label = 'Brick of Meth',
		weight = 5,
		stack = false,
		degrade = 28800,
		server = {
			price = 60,
		},
	},

	['WEAPON_GRENADELAUNCHER_SMOKE'] = {
		label = 'S Grenade Launcher',
		weight = 20,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_GRENADELAUNCHER_SMOKE',
			license = true,
		},
		server = {
			price = 100000,
			license = true,
		},
	},

	['diamond'] = {
		label = 'Diamond',
		weight = 2.5,
		stack = false,
		server = {
			price = 8000,
		},
	},

	['mint_mate_chain'] = {
		label = 'Mint Mate Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'mint_mate',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using mint_mate_chain')
				end
			},
		},
	},

	['laptop'] = {
		label = 'Laptop',
		weight = 4,
		stack = false,
		degrade = 43200,
		client = {
			state = 'LAPTOP',
			state = 'LAPTOP',
		},
		server = {
			price = 1250,
		},
	},

	['upgrade_engine1'] = {
		label = 'Engine Upgrade (1)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['fishing_boot'] = {
		label = 'Soggy Boot',
		weight = 5.0,
		stack = 2,
		server = {
			price = 500,
		},
	},

	['schematic_tec9'] = {
		label = 'Schematic: TEC-9',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['baguette'] = {
		label = 'Baguette',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Baguette',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_MACHINEPISTOL'] = {
		label = 'TEC-9',
		weight = 12,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['pina_colada'] = {
		label = 'Pina Colada',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Pina Colada',
		},
		server = {
			price = 50,
		},
	},

	['crushedrock'] = {
		label = 'Crushed Rock',
		weight = 0.5,
		stack = 200,
		server = {
			price = 0,
		},
	},

	['matcha_latte'] = {
		label = 'Matcha Latte',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 50000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Matcha Latte',
		},
		server = {
			price = 200,
		},
	},

	['choclat_eclair'] = {
		label = 'Chocolate Eclair',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chocolate Eclair',
		},
		server = {
			price = 0,
		},
	},

	['morphine'] = {
		label = 'Morphine',
		weight = 1,
		stack = 3,
		consume = 0.3,
		degrade = 7200,
		client = {
			anim = 'bandage',
			prop = { model = 948080762, pos = vec3(-0.14000000059605, -0.14000000059605, -0.079999998211861), rot = vec3(-50.0, -50.0, 0.0) },
			usetime = 8000,
			disable = {
				car = true,
				move = true,
				combat = true,
			},
			cancel = true,
			notification = 'You used Morphine',
		},
		server = {
			price = 600,
		},
	},

	['frozen_yoghurt'] = {
		label = 'Frozen Yoghurt',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 40000,
				thirst = 10000,
			},
			anim = 'cup',
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Frozen Yoghurt',
		},
		server = {
			price = 240,
		},
	},

	['upgrade_engine3'] = {
		label = 'Engine Upgrade (3)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_DOUBLEACTION'] = {
		label = 'Double Action Revolver',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 8000,
			license = true,
		},
	},

	['bobcat_charge'] = {
		label = 'Breach Charge',
		weight = 3,
		stack = false,
		degrade = 60,
		server = {
			price = 1000,
		},
	},

	['burgershot_fries'] = {
		label = 'Fries',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 60000,
			},
			anim = 'bshot_fries',
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Fries',
		},
		server = {
			price = 15,
		},
	},

	['WEAPON_COMBATMG_MK2'] = {
		label = 'LMG MK2',
		weight = 20,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_MG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['glass_cock'] = {
		label = 'Coke',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 5000,
				thirst = 60000,
			},
			anim = 'cup',
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Coke',
		},
		server = {
			price = 240,
		},
	},

	['wine_glass'] = {
		label = 'Glass of Wine',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Glass of Wine',
		},
		server = {
			price = 200,
		},
	},

	['carrot_cake'] = {
		label = 'Carrot Cake',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Carrot Cake',
		},
		server = {
			price = 240,
		},
	},

	['blue_laptop'] = {
		label = 'Laptop (Blue)',
		weight = 1,
		stack = false,
		degrade = 10080,
		server = {
			price = 10000,
		},
	},

	['schematic_smg_ext_mag'] = {
		label = 'Schematic: SMG Ext. Mag',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['WEAPON_MICROSMG'] = {
		label = 'MAC 10',
		weight = 12,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['smoothie_orange'] = {
		label = 'Orange Smoothie',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 15000,
				thirst = 60000,
			},
			anim = 'cup',
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Orange Smoothie',
		},
		server = {
			price = 240,
		},
	},

	['rolling_paper'] = {
		label = 'Rolling Paper',
		weight = 0.01,
		stack = 30,
		degrade = 10080,
		server = {
			price = 20,
		},
	},

	['schematic_box_mag'] = {
		label = 'Schematic: Box Mag',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['green_tea'] = {
		label = 'Green Tea',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				player_drunk = -10000,
				thirst = 75000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Green Tea',
		},
		server = {
			price = 125,
		},
	},

	['ATTCH_SMG_EXT_MAG'] = {
		label = 'Extended SMG Magazine',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_SMG_EXT_MAG')
				end
			},
		},
	},

	['WEAPON_SMG_MK2'] = {
		label = 'SIG MPX',
		weight = 12,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['tiramisu'] = {
		label = 'Tiramisu',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
				thirst = 50000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Tiramisu',
		},
		server = {
			price = 65,
		},
	},

	['pasta_fresca'] = {
		label = 'Pasta Fresca',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 80000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 20000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Pasta Fresca',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_KNIFE'] = {
		label = 'Knife',
		weight = 8.5,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['personal_plates'] = {
		label = 'Personal Plate',
		weight = 0.5,
		stack = 10,
		server = {
			price = 5000,
		},
	},

	['rabbit'] = {
		label = 'Rabbit',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Rabbit',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_CRUTCH'] = {
		label = 'Crutch',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['burgershot_cup'] = {
		label = 'BS Cup',
		weight = 0.05,
		stack = 200,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used BS Cup',
		},
		server = {
			price = 0,
		},
	},

	['weedseed_male'] = {
		label = 'Male Marijuana Seed',
		weight = 0.05,
		stack = 500,
		degrade = 40320,
		server = {
			price = 100,
		},
	},

	['ATTCH_REDDOT'] = {
		label = 'Red Dot Sight',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_REDDOT')
				end
			},
		},
	},

	['upgrade_transmission2'] = {
		label = 'Transmission Upgrade (2)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['tequila_shot'] = {
		label = 'Shot of Tequila',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Shot of Tequila',
		},
		server = {
			price = 50,
		},
	},

	['weed_brick'] = {
		label = 'Brick of Weed',
		weight = 10,
		stack = false,
		degrade = 64800,
		client = {
			state = 'ANIM_weed',
			state = 'ANIM_weed',
		},
		server = {
			price = 10000,
		},
	},

	['cheese'] = {
		label = 'Bag of Cheese',
		weight = 0.3,
		stack = 50,
		server = {
			price = 4,
		},
	},

	['blue_dongle'] = {
		label = 'USB Drive (Blue)',
		weight = 1,
		stack = false,
		close = false,
		degrade = 30240,
		client = {
			state = 'DONGLE_BLUE',
			state = 'DONGLE_BLUE',
		},
		server = {
			price = 10000,
		},
	},

	['purple_laptop'] = {
		label = 'Laptop (Purple)',
		weight = 1,
		stack = false,
		degrade = 20160,
		server = {
			price = 10000,
		},
	},

	['chicken_wrap'] = {
		label = 'Chicken Wrap',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'bshot_wrap2',
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chicken Wrap',
		},
		server = {
			price = 65,
		},
	},

	['schematic_pistol_suppressor'] = {
		label = 'Schematic: Pistol Suppressor',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['screwdriver'] = {
		label = 'Screwdriver',
		weight = 0.4,
		stack = false,
		degrade = 4320,
		server = {
			price = 400,
		},
	},

	['schematic_rifle_ext_mag'] = {
		label = 'Schematic: AR Ext. Mag',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['safecrack_kit'] = {
		label = 'Safe Cracking Kit',
		weight = 0.5,
		stack = false,
		degrade = 10080,
		server = {
			price = 2500,
		},
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 0.25,
		stack = 30,
		consume = 0.3,
		degrade = 7200,
		client = {
			anim = 'bandage',
			prop = { model = 948080762, pos = vec3(-0.14000000059605, -0.14000000059605, -0.079999998211861), rot = vec3(-50.0, -50.0, 0.0) },
			usetime = 2000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Bandage',
		},
		server = {
			price = 50,
		},
	},

	['fakeplates'] = {
		label = 'License Plates',
		weight = 2,
		stack = false,
		server = {
			price = 5000,
		},
	},

	['baggy'] = {
		label = 'Empty Baggy',
		weight = 0.05,
		stack = 100,
		degrade = 10080,
		server = {
			price = 50,
		},
	},

	['fishing_tuna'] = {
		label = 'Tuna',
		weight = 2.5,
		stack = 25,
		degrade = 86400,
		server = {
			price = 0,
		},
	},

	['WEAPON_MARKSMANPISTOL'] = {
		label = 'Marksman Pistol',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 7500,
			license = true,
		},
	},

	['prison_drink'] = {
		label = 'Prison Drink',
		weight = 0.5,
		stack = 15,
		consume = 1,
		degrade = 1440,
		client = {
			status = {
				thirst = 100000,
			},
			anim = 'soda',
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Prison Drink',
		},
		server = {
			price = 5,
		},
	},

	['goldore'] = {
		label = 'Gold Ore',
		weight = 3,
		stack = 200,
		degrade = 129600,
		server = {
			price = 0,
		},
	},

	['WEAPON_DAGGER'] = {
		label = 'Dagger',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['WEAPON_ADVANCEDRIFLE'] = {
		label = 'Kel-Tec RFB',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['AMMO_RIFLE'] = {
		label = 'Rifle Ammo',
		weight = 1.0,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_RIFLE',
		},
		server = {
			price = 25,
		},
	},

	['pickle'] = {
		label = 'Pickle',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Pickle',
		},
		server = {
			price = 0,
		},
	},

	['purple_dongle'] = {
		label = 'USB Drive (Purple)',
		weight = 1,
		stack = false,
		close = false,
		degrade = 10080,
		client = {
			state = 'DONGLE_PURPLE',
			state = 'DONGLE_PURPLE',
		},
		server = {
			price = 5000,
		},
	},

	['pint_mcdougles'] = {
		label = 'McDougle\'s Stout',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 10080,
		client = {
			notification = 'You used McDougle\'s Stout',
		},
		server = {
			price = 50,
		},
	},

	['schematic_redlaptop'] = {
		label = 'Schematic: Red Laptop',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['pork'] = {
		label = 'Pork',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Pork',
		},
		server = {
			price = 0,
		},
	},

	['wine_bottle'] = {
		label = 'Bottle of Wine',
		weight = 0.5,
		stack = 10,
		consume = 1,
		degrade = 216000,
		client = {
			notification = 'You used Bottle of Wine',
		},
		server = {
			price = 300,
		},
	},

	['AMMO_SMG_PD'] = {
		label = 'PD SMG Ammo',
		weight = 0.5,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_SMG',
		},
		server = {
			price = 5,
		},
	},

	['sausageroll'] = {
		label = 'Sausage Roll',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 40000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Sausage Roll',
		},
		server = {
			price = 15,
		},
	},

	['whiskey'] = {
		label = 'Whiskey',
		weight = 0.3,
		stack = 50,
		consume = 1,
		degrade = 86400,
		client = {
			notification = 'You used Whiskey',
		},
		server = {
			price = 200,
		},
	},

	['evidence-paint'] = {
		label = 'Paint Fragment',
		weight = 0.25,
		stack = false,
		server = {
			price = 0,
		},
	},

	['valuegoods'] = {
		label = 'Valuable Goods',
		weight = 1,
		stack = 10,
		close = false,
		degrade = 14400,
		server = {
			price = 2450,
		},
	},

	['ATTCH_PISTOL_SILENCER'] = {
		label = 'Pistol Suppressor',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_PISTOL_SILENCER')
				end
			},
		},
	},

	['schematic_appistol'] = {
		label = 'Schematic: Glock 18c',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['watch'] = {
		label = 'Gold Watch',
		weight = 1,
		stack = 50,
		close = false,
		degrade = 14400,
		server = {
			price = 215,
		},
	},

	['repair_part_brakes'] = {
		label = 'Brakes',
		weight = 6.9,
		stack = 5,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['carpolish'] = {
		label = 'Car Polish',
		weight = 3.5,
		stack = false,
		degrade = 20160,
		server = {
			price = 275,
		},
	},

	['beer'] = {
		label = 'Beer',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Beer',
		},
		server = {
			price = 100,
		},
	},

	['raspberry_mimosa'] = {
		label = 'Raspberry Mimosa',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Raspberry Mimosa',
		},
		server = {
			price = 50,
		},
	},

	['uwu_prize_b2'] = {
		label = 'UwU Rainbow Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['fishing_shark'] = {
		label = 'A Dolphin',
		weight = 75.0,
		stack = false,
		server = {
			price = 0,
		},
	},

	['schematic_blindfold'] = {
		label = 'Schematic: Blindfold',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['WEAPON_PUMPSHOTGUN_MK2'] = {
		label = 'PD Shotgun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['camping_chair'] = {
		label = 'Foldable Chair',
		weight = 2.0,
		stack = false,
		server = {
			price = 400,
		},
	},

	['SHIV'] = {
		label = 'Shiv',
		weight = 0.5,
		stack = false,
		degrade = 30240,
		client = {
			weapon = 'WEAPON_SHIV',
		},
		server = {
			price = 2000,
		},
	},

	['unk_meat'] = {
		label = 'Meat',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Meat',
		},
		server = {
			price = 0,
		},
	},

	['repair_part_transmission'] = {
		label = 'Transmission Parts',
		weight = 9.5,
		stack = 2,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['pineapple'] = {
		label = 'Pineapple',
		weight = 0.5,
		stack = 250,
		server = {
			price = 1,
		},
	},

	['WEAPON_BALL'] = {
		label = 'Ball',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_BALL',
		},
		server = {
			price = 1000,
		},
	},

	['schematic_weapon_flashlight'] = {
		label = 'Schematic: Weapon Flashlight',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['cucumber'] = {
		label = 'Cucumber',
		weight = 0.15,
		stack = 250,
		server = {
			price = 0,
		},
	},

	['WEAPON_BAT'] = {
		label = 'Baseball Bat',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['AMMO_SNIPER'] = {
		label = 'Hunting Rifle Ammo',
		weight = 1.0,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_SNIPER',
		},
		server = {
			price = 250,
		},
	},

	['red_sequencer'] = {
		label = 'Red Keypad Sequencer',
		weight = 1,
		stack = false,
		degrade = 20160,
		server = {
			price = 25000,
		},
	},

	['pipe'] = {
		label = 'Pipe',
		weight = 0,
		stack = 100,
		close = false,
		degrade = 43200,
		server = {
			price = 12,
		},
	},

	['BOBCAT_REVOLVER'] = {
		label = 'Revolver',
		weight = 10,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_REVOLVER',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 7000,
			license = true,
		},
	},

	['cloth'] = {
		label = 'Cloth',
		weight = 0,
		stack = 1000,
		close = false,
		degrade = 43200,
		server = {
			price = 4,
		},
	},

	['coconut_milk'] = {
		label = 'Coconut Milk',
		weight = 1.0,
		stack = 100,
		server = {
			price = 3,
		},
	},

	['scuba_gear'] = {
		label = 'Scuba Gear',
		weight = 10,
		stack = false,
		degrade = 20160,
		server = {
			price = 1000,
		},
	},

	['birthday_cake'] = {
		label = 'Birthday Cake',
		weight = 2.0,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
		},
		server = {
			price = 240,
		},
	},

	['armor'] = {
		label = 'Body Armor',
		weight = 8,
		stack = 5,
		consume = 0.3,
		degrade = 10080,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Body Armor',
		},
		server = {
			price = 750,
		},
	},

	['upgrade_transmission4'] = {
		label = 'Transmission Upgrade (4)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['ATTCH_ADV_AR_SILENCER'] = {
		label = 'Adv. Rifle Suppressor',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 25000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_ADV_AR_SILENCER')
				end
			},
		},
	},

	['parts_box'] = {
		label = 'Parts Box',
		weight = 10,
		stack = false,
		consume = 1,
		degrade = 10080,
		client = {
			notification = 'You used Parts Box',
			state = 'ANIM_box',
			state = 'ANIM_box',
		},
		server = {
			price = 250,
		},
	},

	['petrock'] = {
		label = 'Pet Rock',
		weight = 1,
		stack = false,
		close = false,
		server = {
			price = 10,
		},
	},

	['bowling_ball'] = {
		label = 'Bowling Ball',
		weight = 50.0,
		stack = false,
		client = {
			state = 'ANIM_bowling_ball',
			state = 'ANIM_bowling_ball',
		},
		server = {
			price = 0,
		},
	},

	['pdarmor'] = {
		label = 'PD Body Armor',
		weight = 8,
		stack = 5,
		consume = 0.3,
		degrade = 10080,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used PD Body Armor',
		},
		server = {
			price = 25,
		},
	},

	['onion_rings'] = {
		label = 'Onion Rings',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 30000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Onion Rings',
		},
		server = {
			price = 0,
		},
	},

	['sombrero'] = {
		label = 'Sombrero',
		weight = 0,
		stack = false,
		server = {
			price = 50,
		},
	},

	['govid'] = {
		label = 'Government ID',
		weight = 0,
		stack = false,
		server = {
			price = 0,
		},
	},

	['chocolate_shake'] = {
		label = 'Chocolate Shake',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 20000,
				thirst = 80000,
			},
			anim = 'cup',
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chocolate Shake',
		},
		server = {
			price = 0,
		},
	},

	['maki_calirolls'] = {
		label = 'California Maki',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
				thirst = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used California Maki',
		},
		server = {
			price = 100,
		},
	},

	['chicken'] = {
		label = 'Chicken',
		weight = 0.1,
		stack = 250,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Chicken',
		},
		server = {
			price = 0,
		},
	},

	['fertilizer_potassium'] = {
		label = 'Fertilizer (Potassium)',
		weight = 3,
		stack = 50,
		consume = 0.3,
		degrade = 10080,
		client = {
			notification = 'You used Fertilizer (Potassium)',
		},
		server = {
			price = 600,
		},
	},

	['WEAPON_HEAVYSNIPER'] = {
		label = 'Barrett M82',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SNIPER',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['megaphone'] = {
		label = 'Megaphone',
		weight = 2,
		stack = false,
		degrade = 20160,
		client = {
			state = 'MEGAPHONE',
			state = 'MEGAPHONE',
		},
		server = {
			price = 1500,
		},
	},

	['sandwich_blt'] = {
		label = 'BLT Sandwich',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 45000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used BLT Sandwich',
		},
		server = {
			price = 5,
		},
	},

	['radio_shitty'] = {
		label = 'P6900 Radio',
		weight = 1,
		stack = false,
		degrade = 30240,
		client = {
			state = 'RADIO_CIV',
			state = 'RADIO_CIV',
		},
		server = {
			price = 2500,
		},
	},

	['radio'] = {
		label = 'Encrypted Radio',
		weight = 1,
		stack = false,
		degrade = 86400,
		client = {
			state = 'RADIO_ENCRYPTED',
			state = 'RADIO_ENCRYPTED',
		},
		server = {
			price = 725,
		},
	},

	['rental_papers'] = {
		label = 'Rental Papers',
		weight = 1,
		stack = false,
		close = false,
		degrade = 1440,
		server = {
			price = 0,
		},
	},

	['government_badge'] = {
		label = 'Badge',
		weight = 0,
		stack = false,
		server = {
			price = 0,
		},
	},

	['sandwich_egg'] = {
		label = 'Egg Sandwich',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 35000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Egg Sandwich',
		},
		server = {
			price = 3,
		},
	},

	['schematic_blue_laptop'] = {
		label = 'Schematic: Blue Laptop',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	-- ['phone'] = {
	-- 	label = 'Phone',
	-- 	weight = 1,
	-- 	stack = false,
	-- 	close = false,
	-- 	degrade = 30240,
	-- 	client = {
	-- 		state = 'PHONE',
	-- 		state = 'PHONE',
	-- 	},
	-- 	server = {
	-- 		price = 100,
	-- 	},
	-- },

	['WEAPON_PISTOL'] = {
		label = 'Pistol',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 2000,
			license = true,
		},
	},

	['uwu_prize_b4'] = {
		label = 'UwU Flower Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['sandwich_beef'] = {
		label = 'Beef Sandwich',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 42000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Beef Sandwich',
		},
		server = {
			price = 6,
		},
	},

	['sandwich'] = {
		label = 'Ham Sandwich',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 15000,
			},
			anim = 'sandwich',
			usetime = 11000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Ham Sandwich',
		},
		server = {
			price = 3,
		},
	},

	['ifak'] = {
		label = 'IFAK',
		weight = 3,
		stack = 5,
		consume = 0.3,
		degrade = 7200,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used IFAK',
		},
		server = {
			price = 200,
		},
	},

	['salvagedparts'] = {
		label = 'Salvaged Parts',
		weight = 0.25,
		stack = 200,
		degrade = 129600,
		server = {
			price = 0,
		},
	},

	['schematic_mp9'] = {
		label = 'Schematic: MP9a',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['traumakit'] = {
		label = 'Trauma Kit',
		weight = 5,
		stack = false,
		consume = 0.3,
		degrade = 7200,
		client = {
			notification = 'You used Trauma Kit',
		},
		server = {
			price = 500,
		},
	},

	['WEAPON_HK416B'] = {
		label = 'PD HK416',
		weight = 15,
		stack = false,
		degrade = 4320,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 700,
			license = true,
		},
	},

	['snow_chain'] = {
		label = 'Snowboys Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'snow',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using snow_chain')
				end
			},
		},
	},

	['ferrari_chain'] = {
		label = 'Ferrari Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'ferrari',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ferrari_chain')
				end
			},
		},
	},

	['lss_chain'] = {
		label = 'LSS Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'lss',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using lss_chain')
				end
			},
		},
	},

	['rlg_chain'] = {
		label = 'RLG Chain',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'rlg',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using rlg_chain')
				end
			},
		},
	},

	['uwu_prize_b10'] = {
		label = 'UwU Snow Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['croissant'] = {
		label = 'Croissant',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Croissant',
		},
		server = {
			price = 0,
		},
	},

	['eggs'] = {
		label = 'Eggs',
		weight = 0.15,
		stack = 250,
		server = {
			price = 2,
		},
	},

	['uwu_prize_b8'] = {
		label = 'UwU Rain Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['upgrade_turbo'] = {
		label = 'Turbo Upgrade',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_SNIPERRIFLE'] = {
		label = 'L96A1',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SNIPER',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['sparkling_wine'] = {
		label = 'Sparkling Wine',
		weight = 0.05,
		stack = 30,
		server = {
			price = 5,
		},
	},

	['WEAPON_PROXMINE'] = {
		label = 'Proximity Mine',
		weight = 12,
		stack = 10,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PROXMINE',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['uwu_prize_b1'] = {
		label = 'UwU Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['fresh_lemonade'] = {
		label = 'Fresh Lemonade',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 5000,
				thirst = 40000,
			},
			anim = 'cup',
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Fresh Lemonade',
		},
		server = {
			price = 240,
		},
	},

	['cat_tuccino'] = {
		label = 'Cat Tuccino',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 15000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Cat Tuccino',
		},
		server = {
			price = 200,
		},
	},

	['burgershot_drink'] = {
		label = 'Burger Shot Drink',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 0,
				thirst = 75000,
			},
			anim = 'bshot_drink',
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Burger Shot Drink',
		},
		server = {
			price = 10,
		},
	},

	['pumpkinspiced_latte'] = {
		label = 'Pumpkin Spice Latte',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 25000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Pumpkin Spice Latte',
		},
		server = {
			price = 200,
		},
	},

	['iced_coffee'] = {
		label = 'Iced Coffee',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 25000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Iced Coffee',
		},
		server = {
			price = 200,
		},
	},

	['pepperoni_pizza'] = {
		label = 'Pepperoni Pizza',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'pizza',
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Pepperoni Pizza',
		},
		server = {
			price = 0,
		},
	},

	['silverore'] = {
		label = 'Silver Ore',
		weight = 3,
		stack = 200,
		degrade = 129600,
		server = {
			price = 0,
		},
	},

	['fruit_explosion'] = {
		label = 'Fruit Explosion',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 30000,
				thirst = 100000,
			},
			anim = 'cup',
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Fruit Explosion',
		},
		server = {
			price = 240,
		},
	},

	['homemade_cookie'] = {
		label = 'Homemade Cookie',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Homemade Cookie',
		},
		server = {
			price = 50,
		},
	},

	['cat_cupcake'] = {
		label = 'Cat Cupcake',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 40000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = -1877813643, pos = vec3(0.019999999552965, 0.019999999552965, -0.019999999552965), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Cat Cupcake',
		},
		server = {
			price = 240,
		},
	},

	['WEAPON_STONE_HATCHET'] = {
		label = 'Stone Hatchet',
		weight = 12,
		stack = false,
		degrade = 30240,
		server = {
			price = 300,
		},
	},

	['apple_crumble'] = {
		label = 'Apple Crumble',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Apple Crumble',
		},
		server = {
			price = 240,
		},
	},

	['schematic_smg_ammo'] = {
		label = 'Schematic: SMG Ammo',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['hunting_bait'] = {
		label = 'Hunting Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 10,
		},
	},

	['WEAPON_L5'] = {
		label = 'Desert Eagle L5',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['chickenpotpie'] = {
		label = 'Chicken Pot Pie',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chicken Pot Pie',
		},
		server = {
			price = 0,
		},
	},

	['schematic_pistol_ext_mag'] = {
		label = 'Schematic: Pistol Ext. Mag',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['chain'] = {
		label = 'Gold Chain',
		weight = 0.5,
		stack = 50,
		close = false,
		degrade = 14400,
		server = {
			price = 215,
		},
	},

	['schematic_drum_mag'] = {
		label = 'Schematic: Drum Mag',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['oxy'] = {
		label = 'OxyContin',
		weight = 0.1,
		stack = 15,
		degrade = 28800,
		client = {
			status = {
				thirst = -3000,
			},
			usetime = 2800,
			disable = {
				car = false,
				move = false,
				combat = false,
			},
			drugState = {
				duration = 3600,
				type = 'oxy',
			},
		},
		server = {
			price = 200,
		},
	},

	['margherita_pizza'] = {
		label = 'Margherita Pizza',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 90000,
			},
			anim = 'pizza',
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Margherita Pizza',
		},
		server = {
			price = 0,
		},
	},

	['schematic_l5'] = {
		label = 'Schematic: Desert Eagle L5',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['adv_lockpick'] = {
		label = 'Advanced Lockpick',
		weight = 0.5,
		stack = 20,
		degrade = 40320,
		server = {
			price = 600,
		},
	},

	['WEAPON_BATTLEAXE'] = {
		label = 'Battle Axe',
		weight = 18,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['hat'] = {
		label = 'Hat',
		weight = 0,
		stack = false,
		server = {
			price = 50,
		},
	},

	['ATTCH_DRUM_MAG'] = {
		label = 'Drum Magazine',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_DRUM_MAG')
				end
			},
		},
	},

	['WEAPON_STICKYBOMB'] = {
		label = 'C4',
		weight = 12,
		stack = 10,
		degrade = 30240,
		client = {
			ammo = 'AMMO_STICKYBOMB',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['WEAPON_BOTTLE'] = {
		label = 'Broken Bottle',
		weight = 8,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['keg'] = {
		label = 'Keg of Irish Stout',
		weight = 1.5,
		stack = 5,
		server = {
			price = 150,
		},
	},

	['WEAPON_FLAREGUN'] = {
		label = 'Flaregun',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_FLAREGUN',
		},
		server = {
			price = 1000,
		},
	},

	['opal'] = {
		label = 'Opal',
		weight = 0.5,
		stack = false,
		server = {
			price = 1500,
		},
	},

	['WEAPON_AUTOSHOTGUN'] = {
		label = 'Double Barrel Shotgun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['prickly_burger'] = {
		label = 'The Prickly',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'bshot_prickly',
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used The Prickly',
		},
		server = {
			price = 50,
		},
	},

	['lemonade'] = {
		label = 'Lemonade',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 5000,
				thirst = 40000,
			},
			anim = 'cup',
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Lemonade',
		},
		server = {
			price = 240,
		},
	},

	['crisp'] = {
		label = 'Crisps',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 20000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 8000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Crisps',
		},
		server = {
			price = 25,
		},
	},

	['patty'] = {
		label = 'Hamburger Patty',
		weight = 0.2,
		stack = 200,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Hamburger Patty',
		},
		server = {
			price = 0,
		},
	},

	['milk_can'] = {
		label = 'Milk Canister',
		weight = 1.5,
		stack = 50,
		server = {
			price = 4,
		},
	},

	['schematic_adv_ar_suppressor'] = {
		label = 'Schematic: Adv. AR Suppressor',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['battery_acid'] = {
		label = 'Battery Acid',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['WEAPON_COMPACTRIFLE'] = {
		label = 'Draco',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['tacos'] = {
		label = 'Taco',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'bshot_tacos',
			usetime = 12000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Taco',
		},
		server = {
			price = 50,
		},
	},

	['card_holder'] = {
		label = 'Card Holder',
		weight = 2,
		stack = false,
		close = false,
		client = {
			container = 91,
		},
		server = {
			price = 3,
		},
	},

	['mint_mate_chain_2'] = {
		label = 'Mint Mate Chain (Large)',
		weight = 0,
		stack = false,
		client = {
			gangChain = 'mint_mate2',
		},
		server = {
			price = 50,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using mint_mate_chain_2')
				end
			},
		},
	},

	['electronics_kit'] = {
		label = 'Electronics Kit',
		weight = 0.5,
		stack = 5,
		degrade = 20160,
		server = {
			price = 7500,
		},
	},

	['refined_rubber'] = {
		label = 'Refined Rubber',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['WEAPON_PP19'] = {
		label = 'PP-19',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['schematic_mpx'] = {
		label = 'Schematic: MPX',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['WEAPON_PUMPSHOTGUN'] = {
		label = 'Pump Shotgun',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_MOLOTOV'] = {
		label = 'Molotov',
		weight = 2,
		stack = 5,
		degrade = 10080,
		client = {
			ammo = 'AMMO_MOLOTOV',
		},
		server = {
			price = 1000,
		},
	},

	['WEAPON_SNSPISTOL'] = {
		label = 'SNS Pistol',
		weight = 8,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 3500,
			license = true,
		},
	},

	['uwu_prize_b6'] = {
		label = 'UwU Heart Bear',
		weight = 0.0,
		stack = 1000,
		server = {
			price = 0,
		},
	},

	['schematic_g45'] = {
		label = 'Schematic: Glock 45',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['plastic'] = {
		label = 'Plastic',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 10,
		},
	},

	['blue_sequencer'] = {
		label = 'Blue Keypad Sequencer',
		weight = 1,
		stack = false,
		degrade = 20160,
		server = {
			price = 10000,
		},
	},

	['rootbeerfloat'] = {
		label = 'Root Beer Float',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				stress = -10000,
				hunger = 10000,
				thirst = 90000,
			},
			anim = 'cup',
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Root Beer Float',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_SMOKEGRENADE'] = {
		label = 'Smoke Grenade',
		weight = 1,
		stack = 10,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMOKEGRENADE',
			license = true,
		},
		server = {
			price = 1000,
			license = true,
		},
	},

	['fishing_rainbowtrout'] = {
		label = 'Rainbow Trout',
		weight = 2.0,
		stack = 25,
		degrade = 86400,
		server = {
			price = 150,
		},
	},

	['TESTPISTOL'] = {
		label = 'Test Pistol',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			weapon = 'WEAPON_PISTOL',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 2000,
			license = true,
		},
	},

	['WEAPON_SMG'] = {
		label = 'MP5',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['fishing_seaweed'] = {
		label = 'Seaweed',
		weight = 0.01,
		stack = 250,
		degrade = 86400,
		server = {
			price = 30,
		},
	},

	['racing_crappy'] = {
		label = 'Homemade Phone Dongle',
		weight = 1,
		stack = false,
		degrade = 720,
		client = {
			state = 'RACE_DONGLE',
			state = 'RACE_DONGLE',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_FIREEXTINGUISHER'] = {
		label = 'Fire Extinguisher',
		weight = 10,
		stack = false,
		consume = 0.3,
		degrade = 30240,
		client = {
			notification = 'You used Fire Extinguisher',
		},
		server = {
			price = 1000,
		},
	},

	['schematic_handcuffs'] = {
		label = 'Schematic: Handcuffs',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['foodbag'] = {
		label = 'Carrier Bag',
		weight = 15,
		stack = false,
		close = false,
		client = {
			container = 21,
		},
		server = {
			price = 4,
		},
	},

	['WEAPON_SNSPISTOL_MK2'] = {
		label = 'SNS Pistol MK2',
		weight = 8,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 4500,
			license = true,
		},
	},

	['nails'] = {
		label = 'Nails',
		weight = 0,
		stack = 1000,
		close = false,
		degrade = 43200,
		server = {
			price = 2,
		},
	},

	['ATTCH_WEAPON_FLASHLIGHT'] = {
		label = 'Weapon Flashlight',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_WEAPON_FLASHLIGHT')
				end
			},
		},
	},

	['harness'] = {
		label = 'Vehicle Harness',
		weight = 2.5,
		stack = false,
		server = {
			price = 1150,
		},
	},

	['WEAPON_ASSAULTRIFLE'] = {
		label = 'AK-47',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['ATTCH_HOLO'] = {
		label = 'Holographic Sight',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_HOLO')
				end
			},
		},
	},

	['meth_bag'] = {
		label = 'Meth',
		weight = 0.1,
		stack = 25,
		degrade = 28800,
		server = {
			price = 400,
		},
	},

	['WEAPON_MPX'] = {
		label = 'MPX',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_MARKSMANRIFLE'] = {
		label = 'M39 EMR',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SNIPER',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_MUSKET'] = {
		label = 'Musket',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SHOTGUN',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['phosphorous'] = {
		label = 'Phosphorous',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['fishing_bait_lugworm'] = {
		label = 'Lugworm Bait',
		weight = 0.1,
		stack = 50,
		close = false,
		degrade = 86400,
		server = {
			price = 10,
		},
	},

	['yellow_laptop'] = {
		label = 'Laptop (Yellow)',
		weight = 1,
		stack = false,
		degrade = 10080,
		server = {
			price = 2500,
		},
	},

	['citrine'] = {
		label = 'Citrine',
		weight = 0.5,
		stack = false,
		server = {
			price = 4000,
		},
	},

	['fishing_kelp'] = {
		label = 'Kelp Fish',
		weight = 1.5,
		stack = 25,
		degrade = 86400,
		server = {
			price = 90,
		},
	},

	['WEAPON_HEAVYSNIPER_MK2'] = {
		label = 'BFG-50A',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SNIPER',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_M45A1'] = {
		label = 'M45A1',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['soda'] = {
		label = 'Soda',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 0,
				thirst = 35000,
			},
			anim = 'soda',
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Soda',
		},
		server = {
			price = 25,
		},
	},

	['cardboard_box'] = {
		label = 'Box',
		weight = 50,
		stack = false,
		close = false,
		client = {
			container = 22,
			state = 'ANIM_box',
			state = 'ANIM_box',
		},
		server = {
			price = 8,
		},
	},

	['WEAPON_GLOCK19X2'] = {
		label = 'PD Glock',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 200,
			license = true,
		},
	},

	['mocha_shake'] = {
		label = 'Mocha Shake',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 10000,
				thirst = 50000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Mocha Shake',
		},
		server = {
			price = 200,
		},
	},

	['amethyst'] = {
		label = 'Amethyst',
		weight = 0.5,
		stack = false,
		server = {
			price = 4000,
		},
	},

	['BOBCAT_SMG_MK2'] = {
		label = 'SIG MPX',
		weight = 12,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_SMG_MK2',
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['latte'] = {
		label = 'Latte',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				thirst = 25000,
			},
			anim = 'coffee',
			usetime = 7500,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Latte',
		},
		server = {
			price = 200,
		},
	},

	['charlotte'] = {
		label = 'Charlotte',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Charlotte',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_P3200A'] = {
		label = 'P320 X Five Custom',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['car_bomb'] = {
		label = 'Car Bomb',
		weight = 5.0,
		stack = false,
		degrade = 30240,
		server = {
			price = 1500,
		},
	},

	['AMMO_PISTOL_PD'] = {
		label = 'PD Pistol Ammo',
		weight = 0.75,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_PISTOL',
		},
		server = {
			price = 5,
		},
	},

	['AMMO_SHOTGUN_PD'] = {
		label = 'PD Shotgun Ammo',
		weight = 0.5,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_SHOTGUN',
		},
		server = {
			price = 5,
		},
	},

	['loaf'] = {
		label = 'Bread Loaf',
		weight = 0.5,
		stack = 50,
		server = {
			price = 4,
		},
	},

	['bun'] = {
		label = 'Hamburger Bun',
		weight = 0.1,
		stack = 200,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Hamburger Bun',
		},
		server = {
			price = 0,
		},
	},

	['electronic_parts'] = {
		label = 'Electronic Parts',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 250,
		},
	},

	['schematic_smg_suppressor'] = {
		label = 'Schematic: SMG Suppressor',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['pig_bait'] = {
		label = 'Pig Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 20,
		},
	},

	['schematic_adv_pistol_suppressor'] = {
		label = 'Schematic: Adv. Pistol Suppressor',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['peas'] = {
		label = 'Peas',
		weight = 0.15,
		stack = 250,
		server = {
			price = 0,
		},
	},

	['heartstopper'] = {
		label = 'Heart Stopper',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'bshot_heartstopper',
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Heart Stopper',
		},
		server = {
			price = 65,
		},
	},

	['milkshake'] = {
		label = 'Explosive Shake',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 20000,
				thirst = 80000,
			},
			anim = 'cup',
			usetime = 10000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Explosive Shake',
		},
		server = {
			price = 0,
		},
	},

	['meth_table'] = {
		label = 'Meth Table',
		weight = 0.5,
		stack = false,
		degrade = 20160,
		server = {
			price = 200,
		},
	},

	['moneybag'] = {
		label = 'Bag of Cash',
		weight = 3,
		stack = false,
		degrade = 20160,
		server = {
			price = 10000,
		},
	},

	['WEAPON_G36'] = {
		label = 'G36',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['choux'] = {
		label = 'Choux Pastry',
		weight = 0.25,
		stack = 25,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Choux Pastry',
		},
		server = {
			price = 0,
		},
	},

	['repair_part_rad_hg'] = {
		label = 'HG Radiator',
		weight = 5.0,
		stack = 4,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['schematic_ar_suppressor'] = {
		label = 'Schematic: AR Suppressor',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['rum'] = {
		label = 'Rum',
		weight = 0.3,
		stack = 50,
		consume = 1,
		degrade = 86400,
		client = {
			notification = 'You used Rum',
		},
		server = {
			price = 200,
		},
	},

	['AMMO_SMG'] = {
		label = 'SMG Ammo',
		weight = 0.9,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_SMG',
		},
		server = {
			price = 300,
		},
	},

	['cigarette'] = {
		label = 'Cigarette',
		weight = 0.1,
		stack = 30,
		consume = 0.3,
		degrade = 14400,
		client = {
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = false,
			},
			notification = 'You used Cigarette',
		},
		server = {
			price = 3,
		},
	},

	['meteorite_icecream'] = {
		label = 'Meteorite Ice Cream',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 50000,
				thirst = 50000,
			},
			anim = 'bshot_icecream',
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Meteorite Ice Cream',
		},
		server = {
			price = 65,
		},
	},

	['weed_baggy'] = {
		label = 'Baggy of Weed',
		weight = 0.05,
		stack = 100,
		degrade = 20160,
		server = {
			price = 200,
		},
	},

	['BOBCAT_PISTOL50'] = {
		label = 'Desert Eagle',
		weight = 10,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_PISTOL50',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['WEAPON_COMBATPDW'] = {
		label = 'H&K MP5',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_SMG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_TASER'] = {
		label = 'Taser',
		weight = 5,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_STUNGUN',
		},
		server = {
			price = 200,
		},
	},

	['ATTCH_SMG_SILENCER'] = {
		label = 'SMG Suppressor',
		weight = 2.0,
		stack = false,
		degrade = 86400,
		server = {
			price = 15000,
		},
		buttons = {
			{
				label = 'Use',
				action = function(slot)
					print('Using ATTCH_SMG_SILENCER')
				end
			},
		},
	},

	['chickenfriedsteak'] = {
		label = 'Chicken Fried Steak',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Chicken Fried Steak',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_KNUCKLE'] = {
		label = 'Knuckle Dusters',
		weight = 7.5,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['acetone'] = {
		label = 'Acetone',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['chicken_bait'] = {
		label = 'Chicken Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 20,
		},
	},

	['lettuce'] = {
		label = 'Lettuce',
		weight = 0.3,
		stack = 250,
		server = {
			price = 0,
		},
	},

	['racedongle'] = {
		label = 'Phone Dongle',
		weight = 2.5,
		stack = false,
		degrade = 30240,
		client = {
			state = 'RACE_DONGLE',
			state = 'RACE_DONGLE',
		},
		server = {
			price = 0,
		},
	},

	['nitrous'] = {
		label = 'Nitrous Oxide',
		weight = 3.0,
		stack = 5,
		server = {
			price = 2000,
		},
	},

	['evidence-projectile'] = {
		label = 'Bullet Projectile',
		weight = 0.25,
		stack = false,
		server = {
			price = 0,
		},
	},

	['fishing_oil'] = {
		label = 'Fish Oil',
		weight = 0.25,
		stack = false,
		close = false,
		server = {
			price = 250,
		},
	},

	['AMMO_SHOTGUN'] = {
		label = 'Shotgun Ammo',
		weight = 0.5,
		stack = 10,
		degrade = 43200,
		client = {
			ammo = 'AMMO_SHOTGUN',
		},
		server = {
			price = 30,
		},
	},

	['rabbit_bait'] = {
		label = 'Rabbit Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 20,
		},
	},

	['WEAPON_PONY'] = {
		label = 'Pony',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 700,
		},
	},

	['million_shrtbread'] = {
		label = 'Millionare Shortbread',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 80000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 5000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Millionare Shortbread',
		},
		server = {
			price = 50,
		},
	},

	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 0.5,
		stack = false,
		degrade = 10080,
		server = {
			price = 600,
		},
	},

	['blindfold'] = {
		label = 'Blindfold',
		weight = 1,
		stack = false,
		degrade = 72000,
		server = {
			price = 2,
		},
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 0.5,
		stack = 50,
		degrade = 20160,
		server = {
			price = 200,
		},
	},

	['san_manzano_pizza'] = {
		label = 'San Manzano Pizza',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
			},
			anim = 'pizza',
			usetime = 18000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used San Manzano Pizza',
		},
		server = {
			price = 0,
		},
	},

	['WEAPON_G45'] = {
		label = 'Glock 45',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 6000,
			license = true,
		},
	},

	['BOBCAT_SNSPISTOL'] = {
		label = 'SNS Pistol',
		weight = 8,
		stack = false,
		degrade = 10080,
		client = {
			weapon = 'WEAPON_SNSPISTOL',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 3500,
			license = true,
		},
	},

	['tequila_sunrise'] = {
		label = 'Tequila Sunrise',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Tequila Sunrise',
		},
		server = {
			price = 50,
		},
	},

	['deer_bait'] = {
		label = 'Deer Bait',
		weight = 2.0,
		stack = 20,
		server = {
			price = 20,
		},
	},

	['WEAPON_PISTOL_MK2'] = {
		label = 'PD 9MM',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 2500,
			license = true,
		},
	},

	['WEAPON_CARBINERIFLE_MK2'] = {
		label = 'PD .762',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['upgrade_suspension4'] = {
		label = 'Suspension Upgrade (4)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['schematic_ak47'] = {
		label = 'Schematic: AK-47',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['drill'] = {
		label = 'Drill',
		weight = 0.5,
		stack = false,
		degrade = 10080,
		server = {
			price = 5000,
		},
	},

	['weed_bud'] = {
		label = 'Marijuana Bud',
		weight = 0.1,
		stack = 100,
		degrade = 20160,
		server = {
			price = 100,
		},
	},

	['paper_bag'] = {
		label = 'Bag',
		weight = 10,
		stack = false,
		close = false,
		client = {
			container = 20,
		},
		server = {
			price = 6,
		},
	},

	['WEAPON_NIGHTSTICK'] = {
		label = 'Nightstick',
		weight = 8,
		stack = false,
		degrade = 30240,
		server = {
			price = 1000,
		},
	},

	['WEAPON_50BEOWULF'] = {
		label = '50-BEOWULF',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['fishing_lobster'] = {
		label = 'Lobster',
		weight = 0.75,
		stack = 25,
		degrade = 86400,
		server = {
			price = 0,
		},
	},

	['sulfuric_acid'] = {
		label = 'Sulfuric Acid',
		weight = 0.25,
		stack = 100,
		degrade = 10080,
		server = {
			price = 250,
		},
	},

	['fluffyhandcuffs'] = {
		label = 'Fluffy Handcuffs',
		weight = 0.5,
		stack = false,
		degrade = 10080,
		server = {
			price = 600,
		},
	},

	['camera'] = {
		label = 'Camera',
		weight = 2.5,
		stack = false,
		consume = 0.3,
		degrade = 30240,
		client = {
			notification = 'You used Camera',
		},
		server = {
			price = 200,
		},
	},

	['repair_part_transmission_hg'] = {
		label = 'HG Transmission Parts',
		weight = 9.5,
		stack = 2,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['sashimi_mix'] = {
		label = 'Sashimi Mix',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 100000,
				thirst = 10000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			usetime = 15000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Sashimi Mix',
		},
		server = {
			price = 100,
		},
	},

	['tomato'] = {
		label = 'Tomato',
		weight = 0.15,
		stack = 250,
		server = {
			price = 0,
		},
	},

	['bloody_mary'] = {
		label = 'Bloody Mary',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Bloody Mary',
		},
		server = {
			price = 50,
		},
	},

	['WEAPON_CARBINERIFLE'] = {
		label = 'PD .556',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_SPECIALCARBINE_MK2'] = {
		label = 'HK G36C MK2',
		weight = 15,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_RIFLE',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['WEAPON_G17'] = {
		label = 'PD Glock',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			weapon = 'WEAPON_GLOCK19X2',
			ammo = 'AMMO_PISTOL',
			license = true,
		},
		server = {
			price = 200,
			license = true,
		},
	},

	['repair_part_injectors_hg'] = {
		label = 'HG Fuel Injectors',
		weight = 0.75,
		stack = 20,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['sugar'] = {
		label = 'Bag of Sugar',
		weight = 1.0,
		stack = 40,
		server = {
			price = 2,
		},
	},

	['WEAPON_WRENCH'] = {
		label = 'Pipe Wrench',
		weight = 10,
		stack = false,
		degrade = 30240,
		server = {
			price = 400,
		},
	},

	['upgrade_brakes4'] = {
		label = 'Brakes Upgrade (4)',
		weight = 1.0,
		stack = 10,
		degrade = 129600,
		server = {
			price = 1000,
		},
	},

	['accessory'] = {
		label = 'Accessory',
		weight = 0,
		stack = false,
		server = {
			price = 50,
		},
	},

	['choplist'] = {
		label = 'LSUNDG Shopping List',
		weight = 0.1,
		stack = false,
		degrade = 20160,
		server = {
			price = 0,
		},
	},

	['cat_donut'] = {
		label = 'Cat Donut',
		weight = 0.25,
		stack = 15,
		consume = 1,
		degrade = 7200,
		client = {
			status = {
				hunger = 40000,
			},
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = -1877813643, pos = vec3(0.019999999552965, 0.019999999552965, -0.019999999552965), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 9000,
			disable = {
				car = false,
				move = false,
				combat = true,
			},
			cancel = true,
			notification = 'You used Cat Donut',
		},
		server = {
			price = 240,
		},
	},

	['WEAPON_COMBATMG'] = {
		label = 'LMG',
		weight = 20,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_MG',
			license = true,
		},
		server = {
			price = 10000,
			license = true,
		},
	},

	['pickaxe'] = {
		label = 'Pickaxe',
		weight = 4.0,
		stack = false,
		degrade = 1440,
		server = {
			price = 0,
		},
	},

	['medicalkit'] = {
		label = 'Medical Kit',
		weight = 3,
		stack = false,
		consume = 0.3,
		client = {
			notification = 'You used Medical Kit',
		},
		server = {
			price = 1000,
		},
	},

	['potato'] = {
		label = 'Potato',
		weight = 0.25,
		stack = 250,
		server = {
			price = 0,
		},
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 0,
		stack = 10000,
		close = false,
		degrade = 129600,
		server = {
			price = 10,
		},
	},

	['schematic_miniuzi'] = {
		label = 'Schematic: Mini UZI',
		weight = 0,
		stack = false,
		close = false,
		degrade = 30240,
		server = {
			price = 5000,
		},
	},

	['vodka'] = {
		label = 'Vodka',
		weight = 0.3,
		stack = 50,
		consume = 1,
		degrade = 86400,
		client = {
			notification = 'You used Vodka',
		},
		server = {
			price = 150,
		},
	},

	['plastic_cup'] = {
		label = 'Plastic Cup',
		weight = 0.05,
		stack = 200,
		consume = 0.3,
		close = false,
		client = {
			notification = 'You used Plastic Cup',
		},
		server = {
			price = 5,
		},
	},

	['vodka_shot'] = {
		label = 'Shot of Vodka',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Shot of Vodka',
		},
		server = {
			price = 50,
		},
	},

	['WEAPON_PETROLCAN'] = {
		label = 'Petrol Can',
		weight = 10,
		stack = false,
		degrade = 30240,
		client = {
			ammo = 'AMMO_PETROLCAN',
		},
		server = {
			price = 150,
		},
	},

	['paleto_access_codes'] = {
		label = 'Access Codes',
		weight = 1,
		stack = false,
		degrade = 240,
		server = {
			price = 2500,
		},
	},

	['silverbar'] = {
		label = 'Silver Bar',
		weight = 0.25,
		stack = 10000,
		degrade = 129600,
		server = {
			price = 200,
		},
	},

	['jaeger_bomb'] = {
		label = 'Jägerbomb',
		weight = 0.1,
		stack = 50,
		consume = 1,
		degrade = 7200,
		client = {
			notification = 'You used Jägerbomb',
		},
		server = {
			price = 50,
		},
	},

	['microwave'] = {
		label = 'Microwave',
		weight = 50.0,
		close = false,
		degrade = 14400,
		client = {
			state = 'ANIM_microwave',
			state = 'ANIM_microwave',
		},
		server = {
			price = 500,
		},
	},

}
