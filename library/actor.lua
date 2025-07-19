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

---@class Text
---@field content? string

---@class FixedMotion
---@field vx? number
---@field vy? number
---@field rotationsPerSecond? number
---@field enabled? boolean

---@class DynamicMotion: FixedMotion
---@field density? number

---@class Gravity 
---@field strength? number
---@field enabled? boolean

---@class Bounce 
---@field rebound? number
---@field enabled? boolean

---@class Friction 
---@field amount? number
---@field enabled? boolean

---@class SlowDown
---@field translation? number
---@field rotation? number
---@field enabled? boolean

---@class SpeedLimit
---@field maxSpeed? number
---@field enabled? number

---@class AxisLock
---@field rotates? boolean
---@field enabled? boolean

---@class AnalogicStick
---@field speed? number
---@field turnFriction? number
---@field axes? "x"|"y"

---@class Actor
---@field layout? Layout
---@field drawing? Drawing
---@field text? Text
---@field fixedMotion? FixedMotion
---@field dynamicMotion? DynamicMotion
---@field gravity? Gravity
---@field bounce? Bounce
---@field friction? Friction
---@field slowDown? SlowDown
---@field speedLimit SpeedLimit
---@field axisLock AxisLock

---@type Actor
my = {}
