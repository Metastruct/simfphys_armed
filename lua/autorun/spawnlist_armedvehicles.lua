local light_table = {	
	ems_sounds = {"ambient/alarms/apc_alarm_loop1.wav"},
}
list.Set( "simfphys_lights", "capc_siren", light_table)

local light_table = {
	L_HeadLampPos = Vector(20.15,133,21),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(-54.51,133,21),
	R_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-62.74,-161,27),
	L_RearLampAng = Angle(40,-90,0),
	R_RearLampPos = Vector(28.33,-161,27),
	R_RearLampAng = Angle(40,-90,0),
	
	Headlight_sprites = { 
		Vector(29.15,133,21),
		Vector(-63.66,133,21),
	},
	Headlamp_sprites = { 
		Vector(20.15,133,21),
		Vector(-54.51,133,21),
	},
	Rearlight_sprites = {
		Vector(-62.74,-161,27),
		Vector(28.33,-161,27)
	},
	Brakelight_sprites = {
		Vector(-62.74,-161,27),
		Vector(28.33,-161,27)
	}
}
list.Set( "simfphys_lights", "conapc_armed", light_table)

local V = {
	Name = "HL2 Combine APC",
	Model = "models/combine_apc.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",

	Members = {
		Mass = 3500,
		MaxHealth = 6000,
		
		LightsTable = "capc_siren",
		
		IsArmored = true,
		
		FrontWheelRadius = 28,
		RearWheelRadius = 28,
		
		SeatOffset = Vector(-25,0,104),
		SeatPitch = 0,
		
		PassengerSeats = {
		},
		
		FrontHeight = 10,
		FrontConstant = 50000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,
		
		RearHeight = 10,
		RearConstant = 50000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 70,
		Efficiency = 1.8,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(32.82,-78.31,81.89),
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/apc/apc_idle1.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/apc/apc_firstgear_loop1.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "",
		
		Sound_Throttle = "",
		
		snd_horn = "ambient/alarms/apc_alarm_pass1.wav",
		
		ForceTransmission = 1,
		DifferentialGear = 0.3,
		Gears = {-0.1,0,0.1,0.2,0.3}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_combineapc_armed", V )


local V = {
	Name = "HL2 Jeep taucannon",
	Model = "models/buggy.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",

	Members = {
		Mass = 1700,
		
		LightsTable = "jeep",
		
		FrontWheelRadius = 18,
		RearWheelRadius = 20,

		SeatOffset = Vector(0,0,-2),
		SeatPitch = 0,

		PassengerSeats = {
			{
				pos = Vector(16,-36,16),
				ang = Angle(0,0,0),
				weapons = true,
			},
			{
				pos = Vector(31 ,-98 ,42),
				ang = Angle(0,180,0),
				weapons = true,
			},
			{
				pos = Vector(-31 ,-98 ,42),
				ang = Angle(0,180,0),
				weapons = true,
			},
		},
		Attachments = {
			{
				model = "models/nova/jeep_seat.mdl",				
				color = Color(255,255,255,255),
				pos = Vector(16,-36,16),
				ang = Angle(0,0,0),
			},
			
		},
		
		
		FrontHeight = 13.5,
		FrontConstant = 27000,
		FrontDamping = 2800,
		FrontRelativeDamping = 2800,
		
		RearHeight = 13.5,
		RearConstant = 32000,
		RearDamping = 2900,
		RearRelativeDamping = 2900,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 44,
		Efficiency = 1.337,
		GripOffset = 0,
		BrakePower = 40,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 6500,
		PeakTorque = 100,
		PowerbandStart = 2200,
		PowerbandEnd = 6300,
		
		FuelFillPos = Vector(17.64,-14.55,30.06),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 0.5,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/v8/v8_idle_loop1.wav",
		
		snd_low = "vehicles/v8/first.wav",
		snd_low_revdown = "vehicles/v8/v8_throttle_off_fast_loop1.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/v8/second.wav",
		snd_mid_gearup = "vehicles/v8/v8_firstgear_rev_loop1.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "vehicles/v8/v8_idle_loop1.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/v8/second.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "vehicles/v8/third.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		--
		
		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		ForceTransmission = 1,
		DifferentialGear = 0.3,
		Gears = {-0.15,0,0.15,0.25,0.35,0.45}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jeep_armed", V )


local V = {
	Name = "HL2 Jeep airboatgun",
	Model = "models/buggy.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",

	Members = {
		Mass = 1700,
		
		LightsTable = "jeep",
		
		FrontWheelRadius = 18,
		RearWheelRadius = 20,

		SeatOffset = Vector(0,0,-2),
		SeatPitch = 0,

		PassengerSeats = {
			{
				pos = Vector(16,-36,16),
				ang = Angle(0,0,0),
				weapons = true,
			},
			{
				pos = Vector(31 ,-98 ,42),
				ang = Angle(0,180,0),
				weapons = true,
			},
			{
				pos = Vector(-31 ,-98 ,42),
				ang = Angle(0,180,0),
				weapons = true,
			},
		},
		Attachments = {
			{
				model = "models/nova/jeep_seat.mdl",				
				color = Color(255,255,255,255),
				pos = Vector(16,-36,16),
				ang = Angle(0,0,0),
			},
			
		},
		
		
		FrontHeight = 13.5,
		FrontConstant = 27000,
		FrontDamping = 2800,
		FrontRelativeDamping = 2800,
		
		RearHeight = 13.5,
		RearConstant = 32000,
		RearDamping = 2900,
		RearRelativeDamping = 2900,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 44,
		Efficiency = 1.337,
		GripOffset = 0,
		BrakePower = 40,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 6500,
		PeakTorque = 100,
		PowerbandStart = 2200,
		PowerbandEnd = 6300,
		
		FuelFillPos = Vector(17.64,-14.55,30.06),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 0.5,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "vehicles/v8/v8_idle_loop1.wav",
		
		snd_low = "vehicles/v8/first.wav",
		snd_low_revdown = "vehicles/v8/v8_throttle_off_fast_loop1.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/v8/second.wav",
		snd_mid_gearup = "vehicles/v8/v8_firstgear_rev_loop1.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "vehicles/v8/v8_idle_loop1.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/v8/second.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "vehicles/v8/third.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		--
		
		snd_horn = "simulated_vehicles/horn_5.wav", 
		
		ForceTransmission = 1,
		DifferentialGear = 0.3,
		Gears = {-0.15,0,0.15,0.25,0.35,0.45}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jeep_armed2", V )


local V = {
	Name = "Synergy Elite Jeep taucannon",
	Model = "models/vehicles/buggy_elite.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",

	Members = {
		Mass = 1700,
		
		LightsTable = "elitejeep",
		
		FrontWheelRadius = 18,
		RearWheelRadius = 20,
		
		SeatOffset = Vector(0,0,-3),
		SeatPitch = 0,
		
		PassengerSeats = {
			{
			pos = Vector(16,-35,16),
			ang = Angle(0,0,0)
			}
		},
		
		Backfire = true,
		ExhaustPositions = {
			{
				pos = Vector(-15.69,-105.94,14.94),
				ang = Angle(90,-90,0)
			},
			{
				pos = Vector(16.78,-105.46,14.35),
				ang = Angle(90,-90,0)
			}
		},
		
		StrengthenSuspension = true,
		
		FrontHeight = 13.5,
		FrontConstant = 27000,
		FrontDamping = 2200,
		FrontRelativeDamping = 1500, 
		
		RearHeight = 13.5,
		RearConstant = 32000,
		RearDamping = 2200,
		RearRelativeDamping = 1500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 44,
		Efficiency = 1.4,
		GripOffset = 0,
		BrakePower = 40,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 100,
		PowerbandStart = 2500,
		PowerbandEnd = 7300,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(20.92,6.95,26.83),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 0.6,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/v8elite/v8elite_idle.wav",
		
		snd_low = "simulated_vehicles/v8elite/v8elite_low.wav",
		snd_low_revdown = "simulated_vehicles/v8elite/v8elite_revdown.wav",
		snd_low_pitch = 0.8,
		
		snd_mid = "simulated_vehicles/v8elite/v8elite_mid.wav",
		snd_mid_gearup = "simulated_vehicles/v8elite/v8elite_second.wav",
		snd_mid_pitch = 1,
		
		snd_horn = "simulated_vehicles/horn_4.wav",
		
		DifferentialGear = 0.38,
		Gears = {-0.1,0,0.1,0.18,0.25,0.31,0.40}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_v8elite_armed", V )


local V = {
	Name = "Synergy Elite Jeep airboatgun",
	Model = "models/vehicles/buggy_elite.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",

	Members = {
		Mass = 1700,
		
		LightsTable = "elitejeep",
		
		FrontWheelRadius = 18,
		RearWheelRadius = 20,
		
		SeatOffset = Vector(0,0,-3),
		SeatPitch = 0,
		
		PassengerSeats = {
			{
			pos = Vector(16,-35,16),
			ang = Angle(0,0,0)
			}
		},
		
		Backfire = true,
		ExhaustPositions = {
			{
				pos = Vector(-15.69,-105.94,14.94),
				ang = Angle(90,-90,0)
			},
			{
				pos = Vector(16.78,-105.46,14.35),
				ang = Angle(90,-90,0)
			}
		},
		
		StrengthenSuspension = true,
		
		FrontHeight = 13.5,
		FrontConstant = 27000,
		FrontDamping = 2200,
		FrontRelativeDamping = 1500, 
		
		RearHeight = 13.5,
		RearConstant = 32000,
		RearDamping = 2200,
		RearRelativeDamping = 1500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 44,
		Efficiency = 1.4,
		GripOffset = 0,
		BrakePower = 40,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 100,
		PowerbandStart = 2500,
		PowerbandEnd = 7300,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(20.92,6.95,26.83),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 0.6,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/v8elite/v8elite_idle.wav",
		
		snd_low = "simulated_vehicles/v8elite/v8elite_low.wav",
		snd_low_revdown = "simulated_vehicles/v8elite/v8elite_revdown.wav",
		snd_low_pitch = 0.8,
		
		snd_mid = "simulated_vehicles/v8elite/v8elite_mid.wav",
		snd_mid_gearup = "simulated_vehicles/v8elite/v8elite_second.wav",
		snd_mid_pitch = 1,
		
		snd_horn = "simulated_vehicles/horn_4.wav",
		
		DifferentialGear = 0.38,
		Gears = {-0.1,0,0.1,0.18,0.25,0.31,0.40}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_v8elite_armed2", V )


local V = {
	Name = "HL2 APC",
	Model = "models/props_vehicles/apc001.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",
	SpawnOffset = Vector(0,0,60),

	Members = {
		Mass = 4800,
		
		MaxHealth = 4500,
		
		IsArmored = true,
		
		EnginePos = Vector(-16.1,-81.68,47.25),
		
		LightsTable = "conapc",
		
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_vehicles/apc_tire001.mdl",
		CustomWheelPosFL = Vector(-45,77,-22),
		CustomWheelPosFR = Vector(45,77,-22),
		CustomWheelPosRL = Vector(-45,-74,-22),
		CustomWheelPosRR = Vector(45,-74,-22),
		CustomWheelAngleOffset = Angle(0,180,0),
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(65,-13,35),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(13,75,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(0,0,-3.5),
				ang = Angle(0,0,0)
			},
		},
		
		Attachments = {
			{
				model = "models/hunter/plates/plate075x105.mdl",
				material = "lights/white",
				color = Color(0,0,0,255),
				pos = Vector(0.04,57.5,16.74),
				ang = Angle(90,-90,0)
			},
			{
				model = "models/hunter/plates/plate025x05.mdl",
				material = "lights/white",
				color = Color(0,0,0,255),
				pos = Vector(-25.08,91.34,29.46),
				ang = Angle(4.2,-109.19,68.43)
			},
			{
				pos = Vector(-24.63,77.76,8.65),
				ang = Angle(24.05,-12.81,-1.87),
				model = "models/hunter/plates/plate05x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(24.63,77.76,8.65),
				ang = Angle(24.05,-167.19,1.87),
				model = "models/hunter/plates/plate05x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(-30.17,61.36,32.79),
				ang = Angle(-1.21,-92.38,-130.2),
				model = "models/hunter/plates/plate025x05.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(30.17,61.36,32.79),
				ang = Angle(-1.21,-87.62,130.2),
				model = "models/hunter/plates/plate025x05.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(0,72.92,40.54),
				ang = Angle(0,-180,0.79),
				model = "models/hunter/plates/plate1x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(25.08,91.34,29.46),
				ang = Angle(4.2,-70.81,-68.43),
				model = "models/hunter/plates/plate025x05.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(-29.63,79.02,19.28),
				ang = Angle(90,-18,0),
				model = "models/hunter/plates/plate05x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(29.63,79.02,19.28),
				ang = Angle(90,-162,0),
				model = "models/hunter/plates/plate05x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(0,75.33,5.91),
				ang = Angle(0,0,0),
				model = "models/hunter/plates/plate1x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(0,98.02,35.74),
				ang = Angle(63,90,0),
				model = "models/hunter/plates/plate025x025.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			},
			{
				pos = Vector(0,100.55,7.41),
				ang = Angle(90,-90,0),
				model = "models/hunter/plates/plate1x1.mdl",
				material = "lights/white",
				color = Color(0,0,0,255)
			}
		},
		
		FrontHeight = 20,
		FrontConstant = 50000,
		FrontDamping = 4000,
		FrontRelativeDamping = 3000,
		
		RearHeight = 20,
		RearConstant = 50000,
		RearDamping = 4000,
		RearRelativeDamping = 3000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 140,
		Efficiency = 1.25,
		GripOffset = -14,
		BrakePower = 120,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 5500,
		PeakTorque = 180,
		PowerbandStart = 1000,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-61.34,49.71,15.98),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 120,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "simulated_vehicles/misc/Nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_2.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.27,
		Gears = {-0.09,0,0.09,0.18,0.28,0.35}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_conscriptapc_armed", V )


local V = {
	Name = "DIPRIP - Ratmobile",
	Model = "models/ratmobile/ratmobile.mdl",
	Category = "Armed Vehicles",
	SpawnOffset = Vector(0,0,25),

	Members = {
		Mass = 4800,
		FrontWheelMass = 225,
		RearWheelMass = 225,
		
		LightsTable = "driprip_ratmobile",
		
		FirstPersonViewPos = Vector(0,0,40),
		
		IsArmored = true,
		
		EnginePos = Vector(20,0,0),
		
		MaxHealth = 5000,
		
		FrontWheelRadius = 20,
		RearWheelRadius = 20,
		
		SeatOffset = Vector(-35,0,15),
		SeatPitch = 0,
		
		CustomMassCenter = Vector(0,0,-5),

		ExhaustPositions = {
			{
				pos = Vector(6.54,44.25,13.19),
				ang = Angle(-15,0,0)
			},
			{
				pos = Vector(-1.85,44.15,14.79),
				ang = Angle(-15,0,0)
			},
			{
				pos = Vector(-9.87,44.49,16.03),
				ang = Angle(-15,0,0)
			},
			{
				pos = Vector(6.54,-44.25,13.19),
				ang = Angle(-15,0,0)
			},
			{
				pos = Vector(-1.85,-44.15,14.79),
				ang = Angle(-15,0,0)
			},
			{
				pos = Vector(-9.87,-44.49,16.03),
				ang = Angle(-15,0,0)
			},
			{
				pos = Vector(-92.45,20.94,-6.35),
				ang = Angle(-90,0,0)
			},
			{
				pos = Vector(-92.45,-20.94,-6.35),
				ang = Angle(-90,0,0)
			},
		},

		FrontHeight = 16,
		FrontConstant = 70000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 16.5,
		RearConstant = 70000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,
		
		StrengthenSuspension = true,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 140,
		Efficiency = 1,
		GripOffset = 5,
		BrakePower = 120,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 320,
		PowerbandStart = 1500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-75.5,-0.01,9.58),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 120,
		
		PowerBias = 0.25,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "simulated_vehicles/ratmobile/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/ratmobile/loop.wav",
		Sound_MidPitch = 0.9,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_HighPitch = 0,
		Sound_HighVolume = 0,
		Sound_HighFadeInRPMpercent = 0,
		Sound_HighFadeInRate = 0,
		
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.28,
		Gears = {-0.1,0,0.1,0.2,0.3,0.4,0.5}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_ratmobile", V )


local V = {
	Name = "DIPRIP - Chaos126p",
	Model = "models/chaos126p/chaos126p.mdl",
	Category = "Armed Vehicles",
	SpawnOffset = Vector(0,0,30),

	Members = {
		Mass = 4800,
		FrontWheelMass = 225,
		RearWheelMass = 225,
		
		FirstPersonViewPos = Vector(0,0,40),
		
		IsArmored = true,
		
		EnginePos = Vector(49.98,0,14.16),
		
		MaxHealth = 5000,
		
		FrontWheelRadius = 22,
		RearWheelRadius = 23.5,
		
		SeatOffset = Vector(-6,0,23),
		SeatPitch = 0,
		
		CustomMassCenter = Vector(0,0,0),

		ExhaustPositions = {
			{
				pos = Vector(-73.69,21.88,21.45),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-77.48,23.3,16.93),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-81.22,23.87,12.01),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-75.21,6.14,-13.95),
				ang = Angle(-90,0,0)
			},
			
			{
				pos = Vector(-73.69,-21.88,21.45),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-77.48,-23.3,16.93),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-81.22,-23.87,12.01),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-75.21,-6.14,-13.95),
				ang = Angle(-90,0,0)
			},
		},

		FrontHeight = 17,
		FrontConstant = 70000,
		FrontDamping = 8000,
		FrontRelativeDamping = 8000,
		
		RearHeight = 18,
		RearConstant = 70000,
		RearDamping = 8000,
		RearRelativeDamping = 8000,
		
		StrengthenSuspension = true,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 140,
		Efficiency = 1,
		GripOffset = 5,
		BrakePower = 120,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 280,
		PowerbandStart = 1500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-12.89,32.29,4.28),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 120,
		
		PowerBias = 0.25,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "simulated_vehicles/4banger/4banger_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/4banger/4banger_mid.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_HighPitch = 0,
		Sound_HighVolume = 0,
		Sound_HighFadeInRPMpercent = 0,
		Sound_HighFadeInRate = 0,
		
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.25,
		Gears = {-0.1,0,0.1,0.2,0.3,0.4,0.5}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_chaos126p", V )


local V = {
	Name = "DIPRIP - Hedgehog",
	Model = "models/hedgehog/hedgehog.mdl",
	Category = "Armed Vehicles",
	SpawnOffset = Vector(0,0,25),

	Members = {
		Mass = 4800,
		FrontWheelMass = 225,
		RearWheelMass = 225,
		
		FirstPersonViewPos = Vector(0,0,40),
		
		IsArmored = true,
		
		EnginePos = Vector(-83.52,0,30.16),
		
		MaxHealth = 5000,
		
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		
		SeatOffset = Vector(-25,0,37),
		SeatPitch = 0,
		
		CustomMassCenter = Vector(0,0,2),

		ExhaustPositions = {
			{
				pos = Vector(-77.06,11.36,43.69),
				ang = Angle(0,0,15)
			},
			{
				pos = Vector(-82.32,11.36,43.69),
				ang = Angle(0,0,15)
			},
			{
				pos = Vector(-87.7,11.36,43.69),
				ang = Angle(0,0,15)
			},
			{
				pos = Vector(-103.14,16.92,-6),
				ang = Angle(-90,0,0)
			},
			{
				pos = Vector(-77.06,-11.36,43.69),
				ang = Angle(0,0,-15)
			},
			{
				pos = Vector(-82.32,-11.36,43.69),
				ang = Angle(0,0,-15)
			},
			{
				pos = Vector(-87.7,-11.36,43.69),
				ang = Angle(0,0,-15)
			},
			{
				pos = Vector(-103.14,-16.92,-6),
				ang = Angle(-90,0,0)
			},
		},

		FrontHeight = 15,
		FrontConstant = 70000,
		FrontDamping = 8500,
		FrontRelativeDamping = 8500,
		
		RearHeight = 15,
		RearConstant = 70000,
		RearDamping = 8500,
		RearRelativeDamping = 8500,
		
		StrengthenSuspension = true,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 8,
		
		MaxGrip = 140,
		Efficiency = 1,
		GripOffset = 5,
		BrakePower = 120,
		BulletProofTires = true,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-29.73,36.13,28.99),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 120,
		
		PowerBias = 0.25,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "simulated_vehicles/hedgehog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/hedgehog/loop.wav",
		Sound_MidPitch = 0.8,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_HighPitch = 0,
		Sound_HighVolume = 0,
		Sound_HighFadeInRPMpercent = 0,
		Sound_HighFadeInRate = 0,
		
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.32,
		Gears = {-0.1,0,0.1,0.2,0.3,0.4,0.5}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_hedgehog", V )


local V = {
	Name = "DOD:S Tiger Tank",
	Model = "models/blu/tanks/tiger.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 10000,
		AirFriction = 5,
		Inertia = Vector(14017.5,46543,47984.5),
		
		MaxHealth = 8000,
		
		IsArmored = true,
		
		FirstPersonViewPos = Vector(0,-50,15),
		
		FrontWheelRadius = 45,
		RearWheelRadius = 45,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(110,45,45),
		CustomWheelPosFR = Vector(110,-45,45),
		CustomWheelPosML = Vector(5,45,40),
		CustomWheelPosMR = Vector(5,-45,40),
		CustomWheelPosRL = Vector(-100,45,45),
		CustomWheelPosRR = Vector(-100,-45,45),
		CustomWheelAngleOffset = Angle(0,0,90),
		
		CustomMassCenter = Vector(0,0,5),
		
		CustomSteerAngle = 60,
		
		SeatOffset = Vector(70,0,55),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
			
		ExhaustPositions = {
			{
				pos = Vector(-118,-16.62,72.6),
				ang = Angle(115,0,0)
			},
			{
				pos = Vector(-118,-16.62,72.6),
				ang = Angle(115,60,0)
			},
			{
				pos = Vector(-118,-16.62,72.6),
				ang = Angle(115,-60,0)
			},
			
			{
				pos = Vector(-118,16.62,72.6),
				ang = Angle(115,0,0)
			},
			{
				pos = Vector(-118,16.62,72.6),
				ang = Angle(115,60,0)
			},
			{
				pos = Vector(-118,16.62,72.6),
				ang = Angle(115,-60,0)
			},
		},

		
		PassengerSeats = {
			{
				pos = Vector(0,0,50),
				ang = Angle(0,-90,0)
			}
		},
		
		FrontHeight = 23,
		FrontConstant = 50000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 23,
		RearConstant = 50000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 14,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 6,
		
		MaxGrip = 800,
		Efficiency = 0.42,
		GripOffset = -300,
		BrakePower = 150,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 4500,
		PeakTorque = 320,
		PowerbandStart = 600,
		PowerbandEnd = 3500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/tiger/tiger_high.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.2,
		Gears = {-0.1,0,0.05,0.07,0.09,0.11,0.13,0.16}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_tank", V )



local V = {
	Name = "DOD:S Sherman Tank",
	Model = "models/blu/tanks/sherman.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Armed Vehicles",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 8000,
		AirFriction = 7,
		Inertia = Vector(14000,47000,48000),
		
		MaxHealth = 6000,
		
		IsArmored = true,
		
		FirstPersonViewPos = Vector(0,-50,15),
		
		FrontWheelRadius = 40,
		RearWheelRadius = 40,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(100,35,50),
		CustomWheelPosFR = Vector(100,-35,50),
		CustomWheelPosML = Vector(-5,35,50),
		CustomWheelPosMR = Vector(-5,-35,50),
		CustomWheelPosRL = Vector(-110,35,50),
		CustomWheelPosRR = Vector(-110,-35,50),
		CustomWheelAngleOffset = Angle(0,0,90),
		
		CustomMassCenter = Vector(0,0,3),
		
		CustomSteerAngle = 60,
		
		SeatOffset = Vector(60,-20,55),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-90.47,17.01,52.77),
				ang = Angle(180,0,0)
			},
			{
				pos = Vector(-90.47,-17.01,52.77),
				ang = Angle(180,0,0)
			},
		},

		
		PassengerSeats = {
			{
				pos = Vector(50,-20,30),
				ang = Angle(0,-90,0)
			}
		},
		
		FrontHeight = 20,
		FrontConstant = 50000,
		FrontDamping = 4000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 20,
		RearConstant = 50000,
		RearDamping = 4000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 14,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 6,
		
		MaxGrip = 800,
		Efficiency = 0.85,
		GripOffset = -300,
		BrakePower = 150,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 4500,
		PeakTorque = 250,
		PowerbandStart = 600,
		PowerbandEnd = 3500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-46.03,-34.64,75.23),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "simulated_vehicles/sherman/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/sherman/low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 0.75,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.85,
		
		Sound_High = "simulated_vehicles/sherman/high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 20,
		Sound_HighFadeInRate = 0.2,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.3,
		Gears = {-0.1,0,0.05,0.08,0.11,0.14,0.17}
	}
}
--list.Set( "simfphys_vehicles", "sim_fphys_tank2", V )
