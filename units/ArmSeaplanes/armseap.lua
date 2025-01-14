return {
	armseap = {
		acceleration = 0.20,
		brakerate = 0.375,
		buildcostenergy = 6500,
		buildcostmetal = 290,
		buildpic = "ARMSEAP.DDS",
		buildtime = 14825,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB VTOL NOTSHIP",
		collide = true,
		cruisealt = 100,
		description = "Torpedo Gunship",
		energymake = 0.7,
		energyuse = 0.7,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1240,
		maxslope = 10,
		maxvelocity = 9.04,
		maxwaterdepth = 255,
		name = "Albatross",
		nochasecategory = "VTOL",
		objectname = "ARMSEAP",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 455,
		turnrate = 720,
		blocking = false,
		customparams = {
			
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			crashExplosionGenerators = {
				"crashing-small",
				"crashing-small",
				"crashing-small2",
				"crashing-small3",
				"crashing-small3",
			}
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel1",
			},
		},
		weapondefs = {
			armseap_weapon1 = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.1,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo",
				name = "Homing torpedo launcher",
				noselfdamage = true,
				range = 660,
				reloadtime = 1.3,
				soundhit = "xplodep2",
				soundstart = "bombrel",
				startvelocity = 100,
				tolerance = 12000,
				tracks = true,
				turnrate = 99000,
				turret = false,
				waterweapon = true,
				weaponacceleration = 15,
				weapontimer = 5,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 100,
				damage = {
					bombers = 15,
					commanders = 67,
					default = 155,
					fighters = 15,
					vtol = 15,
				},
				customparams = {
					bar_model = "cortorpedo.s3o",
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTSHIP",
				def = "ARMSEAP_WEAPON1",
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
