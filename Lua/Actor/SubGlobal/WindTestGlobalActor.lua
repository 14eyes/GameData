require("Actor/ActorCommon")
local SubGlobalActorProxy = require("Actor/SubGlobal/SubGlobalActorProxy")

local WindTestGlobalActor = class("WindTestGlobalActor", SubGlobalActorProxy)
WindTestGlobalActor.defaultAlias = "WindTestGlobal"
WindTestGlobalActor.SpeedFieldDir = {x = 2.71, y = -9, z = -26.08}

WindTestGlobalActor.SpeedFieldPos = {
    {x = 1600.12, y = 330, z = -6262.65},
    {x = 1602.83, y = 324, z = -6288.73},
    {x = 1605.54, y = 318, z = -6314.81},
    {x = 1608.24, y = 312, z = -6340.89},
    {x = 1610.95, y = 306, z = -6366.97},
    {x = 1613.66, y = 300, z = -6393.05},
    {x = 1616.37, y = 294, z = -6419.13},
    {x = 1619.08, y = 288, z = -6445.21},
    {x = 1621.79, y = 282, z = -6471.29},
    {x = 1624.49, y = 276, z = -6497.36},
    {x = 1627.2, y = 270, z = -6523.44},
    {x = 1629.91, y = 264, z = -6549.52}
}

function WindTestGlobalActor.StartSpeedField() end
function WindTestGlobalActor.EndSpeedField() end
function WindTestGlobalActor:DoTestHour() end

function WindTestGlobalActor:Register()
    self:RegisterHourCallback(self.DoTestHour)
end

function WindTestGlobalActor:Unregister()
    self:UnregisterHourCallback(self.DoTestHour)
end

function WindTestGlobalActor:Start() end
return WindTestGlobalActor
