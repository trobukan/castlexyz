

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
function onMessage()
end

---@class Layout
---@field x? number 
---@field y? number 
---@field rotation? number 
---@field widthScale? number
---@field heightScale? number
---@field visible? boolean
---@field enabled? boolean

---@class Drawing
---@field currentFrame? number
---@field playMode "still"|"play once"|"loop"?
---@field framesPerSecond? number
---@field loopStartFrame? number
---@field loopEndFrame? number
---@field opacity? number
---@field initialFrame? number

---@class Actor
---@field layout? Layout
---@field drawing? Drawing

---@type Actor
local my = {
    layout = {
        x = 0,
        y = 0,
        rotation = 0,
        widthScale = 0,
        heightScale = 0,
        visible = false,
        enabled = false
    },
    drawing = {
        currentFrame = 0,
        
    }
}

---@class Castle
castle = {}

--- Destroys an actor.
---@param my Actor
function castle.destroyActor(my)
end
