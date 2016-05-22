function init()
	world.logInfo("MI console initialising!")
	entity.setInteractive(true)
end

function update(dt)
	--world.logInfo("MI console is now updating!")
end

function onInteraction(args)
	world.logInfo("sourceID = " .. args.sourceId)
	local interactionConfig = entity.configParameter("interactionConfig")
	return {"ScriptConsole", interactionConfig}
end

function die()
	world.logInfo("MI console just died")
end