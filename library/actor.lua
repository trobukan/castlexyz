---@class Actor.Layout
---@field x? number 
---@field y? number 
---@field rotation? number 
---@field widthScale? number
---@field heightScale? number
---@field visible? boolean
---@field enabled? boolean

---@class Actor.Drawing
---@field currentFrame? number
---@field playMode "still"|"play once"|"loop"?
---@field framesPerSecond? number
---@field loopStartFrame? number
---@field loopEndFrame? number
---@field opacity? number
---@field initialFrame? number

---@class Actor.Text
---@field content? string

---@class Actor.FixedMotion
---@field vx? number
---@field vy? number
---@field rotationsPerSecond? number
---@field enabled? boolean

---@class Actor.DynamicMotion
---@field vx? number
---@field vy? number
---@field rotationSpeed? number
---@field density? number
---@field enabled? boolean

---@class Actor.Gravity 
---@field strength? number
---@field enabled? boolean

---@class Actor.Bounce 
---@field rebound? number
---@field enabled? boolean

---@class Actor.Friction 
---@field amount? number
---@field enabled? boolean

---@class Actor.SlowDown
---@field translation? number
---@field rotation? number
---@field enabled? boolean

---@class Actor.SpeedLimit
---@field maxSpeed? number
---@field enabled? number

---@class Actor.AxisLock
---@field rotates? boolean
---@field enabled? boolean

---@class Actor.AnalogicStick
---@field speed? number
---@field turnFriction? number
---@field axes? "x"|"y"

---@class Actor.SlingShot
---@field speed number
---@field enabled boolean

---@class Actor.Counter
---@field value number
---@field enable boolean

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

---@type Actor
my = {}
