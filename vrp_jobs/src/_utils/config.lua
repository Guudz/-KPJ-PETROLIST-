Config = {}

Config.Key = 38 -- [E] Key to open the interaction, check here the keys ID: https://docs.fivem.net/docs/game-references/controls/#controls

Config.AutoCamPosition = true -- If true it'll set the camera position automatically

Config.AutoCamRotation = true -- If true it'll set the camera rotation automatically

Config.HideMinimap = true -- If true it'll hide the minimap when interacting with an NPC

Config.UseOkokTextUI = true -- If true it'll use okokTextUI 

Config.CameraAnimationTime = 1000 -- Camera animation time: 1000 = 1 second

Config.TalkToNPC = {

	
	{
		npc = 'g_m_m_chemwork_01',
		header = 'Petrolist', 
		name = 'Andrei', 
		uiText = "Petrolistul",
		dialog = 'Cu ce te pot ajuta?',
		coordinates = vector3(-476.88, -2691.67, 7.76),
		heading = 224.49,
		camOffset = vector3(0.0, 0.0, 0.0),
		camRotation = vector3(0.0, 0.0, 0.0),
		interactionRange = 3, 
		options = {	
		{'In ce consta job-ul?', 'petrol:intrebare', 'c'},
		 {"Trebuie sa am uniforma?.", 'petrol:intrebare2', 'c'}, 
		 {"Vreau sa intru pe tura.", 'petrol:intratura', 'c'}, 
		{"Vreau sa ies de pe tura.", 'petrol:iesetura', 'c'}, 
		{"De unde cumpar tir si remorca?", 'petrol:intrebare3', 'c'}, 
	}

	},





	
	
	
	--[[
	-- This is the template to create new NPCs
	{
		npc = "",
		header = "",
		name = "",
		uiText = "",
		dialog = "",
		coordinates = vector3(0.0, 0.0, 0.0),
		heading = 0.0,
		camOffset = vector3(0.0, 0.0, 0.0),
		camRotation = vector3(0.0, 0.0, 0.0),
		interactionRange = 0,
		options = {
			{"", 'client:event', 'c'},
			{"", 'client:event', 'c'},
			{"", 'client:event', 'c'}, 
			{"", 'server:event', 's'}, 
			{"", 'server:event', 's'}, 
			{"", 'server:event', 's'}, 
		},
		jobs = {	-- Example jobs
			'police',
			'ambulance',
		},
	},
	]]--
}