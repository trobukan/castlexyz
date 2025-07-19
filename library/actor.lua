---@class Actor.Layout
---@field x? number The X position
---@field y? number The Y position
---@field rotation? number The rotation in degrees
---@field widthScale? number The width scale. Can be set to negative to flip the actor horizontally.
---@field heightScale? number The height scale. Can be set to negative to flip the actor vertically.
---@field visible? boolean Is the actor is visible or not.
---@field enabled? boolean Is the layout is enabled or not. 

---@class Actor.Drawing
---@field currentFrame? number The current frame of the actor. Setting this changes the frame.
---@field playMode? "still"|"play once"|"loop" Controls how the drawing animates.
---@field framesPerSecond? number The speed of the animation if `drawing.playMode` is set to "play once" or "loop".
---@field loopStartFrame? number The first frame of the loop if `drawing.playMode` is set to "play once" or "loop".
---@field loopEndFrame? number The last frame of the loop if `drawing.playMode` is set to "play once" or "loop".
---@field opacity? number The opacity represented as a number between 0 and 1.
---@field initialFrame? number The frame that the drawing starts at when the actor is created.

---@class Actor.Text
---@field content? string

---@class Actor.FixedMotion
---@field vx? number The X velocity.
---@field vy? number The y velocity.
---@field rotationsPerSecond? number
---@field enabled? boolean Is fixed motion enabled. Only works if fixed motion has been added in the editor.

---@class Actor.DynamicMotion
---@field vx? number The x velocity.
---@field vy? number The y velocity.
---@field rotationSpeed? number The rotational velocity.
---@field density? number
---@field enabled? boolean Is dynamic motion enabled. Only works if dynamic motion has been added in the editor.

---@class Actor.Gravity 
---@field strength? number
---@field enabled? boolean Is gravity enabled. Only works if gravity has been added in the editor.

---@class Actor.Bounce 
---@field rebound? number
---@field enabled? boolean Is bounce enabled. Only works if bounce has been added in the editor.

---@class Actor.Friction 
---@field amount? number
---@field enabled? boolean Is friction enabled. Only works if friction has been added in the editor.

---@class Actor.SlowDown
---@field translation? number
---@field rotation? number
---@field enabled? boolean Is slow down enabled. Only works if slow down has been added in the editor.

---@class Actor.SpeedLimit
---@field maxSpeed? number
---@field enabled? boolean Is speed limit enabled. Only works if speed limit has been added in the editor.

---@class Actor.AxisLock
---@field rotates? boolean A `boolean` representing whether the actor can rotate.
---@field enabled? boolean Is axis lock enabled. Only works if axis lock has been added in the editor.

---@class Actor.AnalogicStick
---@field speed? number
---@field turnFriction? number
---@field axes? "x" | "y" | "x and y" Must be one of: "x", "y", "x and y".
---@field enabled? boolean Is analog stick. Only works if analog stick has been added in the editor.

---@class Actor.SlingShot
---@field speed? number 
---@field enabled? boolean Is slingshot enabled. Only works if slingshot has been added in the editor.

---@class Actor.Counter
---@field value? number
---@field enabled? boolean Is counter enabled. Only works if counter has been added in the editor.

---@class Actor.Camera
---@field zoom? number
---@field angle? number
---@field enabled? boolean Is camera enabled. Only works if camera has been added in the editor.

---@class Actor.Tilt
---@field acceleration? number
---@field axes? "x" | "y" | "x and y" Must be one of: "x", "y", "x and y".
---@field enabled? boolean Is tilt enabled. Only works if tilt has been added in the editor.

---@class Actor.FaceTracking
---@field featureType? "left eye" | "right eye" | "nose" | "mouth"
---@field offsetX? number
---@field offsetY? number
---@field enabled? boolean Is face tracking enabled. Only works if face tracking has been added in the editor.

---@class Actor
---@field layout? Actor.Layout
---@field drawing? Actor.Drawing
---@field text? Actor.Text
---@field fixedMotion? Actor.FixedMotion
---@field dynamicMotion? Actor.DynamicMotion
---@field gravity? Actor.Gravity
---@field bounce? Actor.Bounce
---@field friction? Actor.Friction
---@field slowDown? Actor.SlowDown
---@field speedLimit? Actor.SpeedLimit
---@field axisLock? Actor.AxisLock
---@field slingShot? Actor.SlingShot
---@field counter? Actor.Counter
---@field camera? Actor.Camera
---@field tilt? Actor.Tilt
---@field faceTracking? Actor.FaceTracking
local Actor = {}

---@type Actor
my = {}

--- The speed of an actor.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#speed)
---@return number speed
function Actor:speed() end

--- The angle that the actor is moving at.
--- When the actor is moving horizontally to the right this returns 0.
--- When the actor is moving vertically upward this returns -90.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#angleOfMotion)
---@return number angle
function Actor:angleOfMotion() end


--- The distance between actor and other (where other is also an actor).
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#distanceTo)
---@param other Actor
---@return number distance
function Actor:distanceTo(other) end

--- The angle between actor and other (where other is also an actor) in degrees.
--- When other is to the right of actor with the same y value this returns 0, 
--- and when other is above actor at the same x value this returns -90.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#angleTo)
---@param other Actor
---@return number angle
function Actor:angleTo(other) end

--- Rotates the actor to face the direction in which it is moving.
---
--- The amount is optional -- it causes the actor to rotate partway to the target direction rather than fully.
--- An amount of 0.5 rotates the actor halfway to the target. If this function is being called every update,
--- a small amount like 0.01 causes the actor to rotate smoothly to the target.
--- An amount of 1.0 rotates the actor fully to the target immediately (the default).
--- And an amount of 0 doesn't rotate the actor at all.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#faceDirectionOfMotion)
---@param amount? number
function Actor:faceDirectionOfMotion(amount) end

--- Puts the actor in front of all other actors.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#moveToFront)
---@param amount? number
function Actor:moveToFront(amount) end

--- Puts the actor behind all other actors.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#moveToBack)
---@param amount? number
function Actor:moveToBack(amount) end

--- Sets this actor as the target of the camera. The camera is the viewport into the scene.
--- This can be used to follow the actor as it goes off-screen.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#followWithCamera)
---@param amount? number
function Actor:followWithCamera(amount) end

--- Returns whether the actor has the given tag.
--- 
--- This function only accepts one tag to check for. To check for multiple tags use `actor:hasTag("first") and actor:hasTag("second")`
---  to check if all the tags are present, or `actor:hasTag("first") or actor:hasTag("second")` to check if just one of the tags is present.
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#hasTag)
---@param tag string
---@return boolean
function Actor:hasTag(tag) end

--- Adds the tag to the actor.
--- 
--- This function accepts multiple parameters, so you can add multiple tags with `actor:addTag("first", "second")`
---
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#hasTag)
---@param ... string
function Actor:addTag(...) end

--- Removes the tag from the actor.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#hasTag)
---@param ... string
function Actor:removeTag(...) end

--- Returns whether the actor is colliding another actor with the given tag.
---
--- The tag parameter is optional -- if it's not given, 
--- the function returns whether the actor is colliding with any other actor regardless of tag.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#isColliding)
---@param tag? string
---@return boolean
function Actor:isColliding(tag) end

--- Returns a table of all actors that are colliding this actor that have the given tag.
--- 
--- he tag parameter is optional -- if it's not given
--- the function returns all of the actors that are colliding with this actor, regardless of tag.
--- 
--- [View Official Documentation](https://docs.castle.xyz/docs/scripts/actor-reference#getCollidingActors)
---@param tag? string
---@return Actor[]
function Actor:getCollidingActors(tag) end