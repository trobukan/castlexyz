---@meta

--- The onCreate handler is called when the actor is created
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/tutorials/handlers#oncreate)
function onCreate() end

--- The onUpdate() handler is called every frame
--- 
--- You should use this handler when you want to continuously move an actor, 
--- or continuously check the value of something, such as your position or a variable.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/tutorials/handlers#onupdate)
---@param dt number
function onUpdate(dt) end

--- The onMessage handler is used to pass messages from Castle rules into the script.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/tutorials/handlers#onmessage)
---@param message string
---@param triggeringActor Actor
function onMessage(message, triggeringActor) end