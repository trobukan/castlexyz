---@meta

---@class Castle
castle = {}

--- Destroys an actor.
---@param actor Actor
function castle.destroyActor(actor)
end

---@param tag string
---@return Actor?
function castle.closestActorWithTag(tag)    
end

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

---@param touchId number
---@return Touch[]
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
function runAfterDelay(delay, action) 
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