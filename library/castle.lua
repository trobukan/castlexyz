---@meta

---@class Castle
castle = {}

--- Creates a new actor using a name of a blueprint and the initial x and y position
--- 
--- This returns an actor variable that you can use to access actor properties or pass into other functions.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#createActor)
---@param blueprint string
---@param x number
---@param y number
---@return Actor 
function castle.createActor(blueprint, x, y) end

--- Destroys an actor.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#destroyActor)
---@param actor Actor
function castle.destroyActor(actor) end

--- Returns the closest actor with the tag, or nil.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#closestActorWithTag)
---@param tag string
---@return Actor | nil
function castle.closestActorWithTag(tag) end

---@param tag string
---@return Actor[]
function castle.actorsWithTag(tag)
end

---@param tag string
---@return number
function castle.numActorsWithTag(tag)
end

---@param message string
---@param action function
function castle.createTextBox(message, action)
end

---@class Touch
---@field id number
---@field x number
---@field y number
---@field deltaX number
---@field deltaY number
---@field initialX number
---@field initialY number
---@field pressed boolean
---@field duration number

---@return Touch[]
function castle.getTouches()
end

---@param touchId? number
---@return Touch | nil
function castle.getTouch(touchId)    
end

---@param touchId number
---@return Actor[]
function castle.getActorsAtTouch(touchId)
end

---@return number, number
function castle.getDeviceTilt()
end

---@return number
function castle.getDeviceTiltX()    
end

---@return number
function castle.getDeviceTiltY()    
end

---@param message string
function castle.sendTriggerMessage(message)    
end

---@param ticker string
---@param diff number
function castle.updateTicker(ticker, diff)    
end

---@return number
function castle.getTime()    
end

---@param delay number
---@param action function
function castle.runAfterDelay(delay, action) 
end

---@param interval number
---@param action function
function castle.repeatAtInterval(interval, action)
end

---@param handler any
function castle.stopRepeat(handler)    
end

---@param seconds number
function castle.sleep(seconds)    
end

function castle.restartCard()
end