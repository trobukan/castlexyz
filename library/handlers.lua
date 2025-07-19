---@meta

--- handler is called when the actor is created
---@source https://docs.castle.xyz/docs/scripts/tutorials/handlers#oncreate
function onCreate()
end

--- is called every frame
---@param dt number time
---@source https://docs.castle.xyz/docs/scripts/tutorials/handlers#onupdate
function onUpdate(dt)
end

--- handler is used to pass messages from Castle rules into the script.
---@source https://docs.castle.xyz/docs/scripts/tutorials/handlers#onmessage
---@param message string
---@param triggeringActor Actor
function onMessage(message, triggeringActor)
end