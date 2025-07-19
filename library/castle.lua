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

--- Returns a table of all actors with the tag.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#actorsWithTag)
---@param tag string
---@return Actor[]
function castle.actorsWithTag(tag) end

--- Returns the number of actors with the tag.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#numActorsWithTag)
---@param tag string
---@return number
function castle.numActorsWithTag(tag) end
 
--- Creates a text box at the bottom of the screen. When the user taps the text box it disappears. action is optional and can be 
--- used to change the tap action -- currently the only supported value for action is "none" which causes the text box to not 
--- disappear on tap.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#createTextBox)
---@param message string
---@param action function
function castle.createTextBox(message, action) end

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

--- Returns a table of currently active touches.
--- 
--- The results are in order of oldest to latest touch. 
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getTouches)
---@return Touch[]
function castle.getTouches() end


--- Returns a table with the same fields as each element of [castle.getTouches()](https://docs.castle.xyz/docs/scripts/castle-library-reference#getTouches)
---
--- it returns the currently active touch with that id, or nil if no such touch is active. 
--- If touchId is not given the oldest active touch is returned.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getTouch)
---@param touchId? number
---@return Touch | nil touch
function castle.getTouch(touchId) end

--- Returns a table of all the actors overlap with the given touch.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getActorsAtTouch)
---@param touchId number
---@return Actor[]
function castle.getActorsAtTouch(touchId) end

--- Returns two values -- the x and y tilt of the device. 
--- These values change with the angle at which the user is holding the device.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getDeviceTilt)
---@return number x
---@return number y
function castle.getDeviceTilt() end

--- Returns the x tilt of the device.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getDeviceTiltX)
---@return number x
function castle.getDeviceTiltX() end

--- Returns the y tilt of the device.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getDeviceTiltY)
---@return number y
function castle.getDeviceTiltY() end

--- Triggers a rule that is listening for the script message event.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#sendTriggerMessage)
---@param message string
function castle.sendTriggerMessage(message) end

--- Update a ticker with a diff. Tickers might behave inconsistently if you set them with absolute values.
---
--- If you try to reset the ticker to 1 like this:
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#updateTicker)
---@param ticker string
---@param diff number
function castle.updateTicker(ticker, diff) end

--- Returns the time elapsed since the card started, in seconds.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#getTime)
---@return number seconds
function castle.getTime() end

--- Runs the function after a delay.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#runAfterDelay)
---@param delay number
---@param action function
function castle.runAfterDelay(delay, action) end

--- Runs the function after a delay repeatedly.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#repeatAtInterval)
---@param interval number
---@param action function
function castle.repeatAtInterval(interval, action) end

--- Stops a repeat created by castle.[repeatAtInterval](https://docs.castle.xyz/docs/scripts/castle-library-reference#repeatAtInterval).
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#stopRepeat)
---@param handler any
function castle.stopRepeat(handler) end

--- WARNING: We recommend not using this. 
--- It will prevent the rest of your script (including onUpdate and onMessage) from running until it returns. 
--- You can almost always perform the same logic with a combination of the other time functions.
--- 
--- Pauses the entire script for the number of seconds.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#sleep)
---@param seconds number
function castle.sleep(seconds) end

--- Restart the card.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/castle-library-reference#restartCard)
function castle.restartCard() end