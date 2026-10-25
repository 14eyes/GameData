require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local TriggerTest = class("TriggerTest", GadgetActorProxy)
TriggerTest.defaultAlias = "TriggerTest"

TriggerTest.shapeData = {
    shapeName = "CircleR5",
    shapePosOffset = {x = 0, y = 0, z = 0},
    shapeEulerOffset = {x = 0, y = 0, z = 0},
    shapeHeight = 0.0,
    campID = campHelper.CAMP_PLAYER,
    targetType = TargetType.AllExceptSelf,
    liftType = TimerLimitType.Infinite,
    liftTime = 0.0,
    triggerType = TimerLimitType.Infinite,
    checkCD = 0.15
}

function TriggerTest:OnPostDataPrepare() end

function TriggerTest:OnPostComponentPrepare()
    self:AddCommonTrigger(self.shapeData, self.TriggerIn, self.TriggerOut, self.TriggerTick)
end

function TriggerTest:TriggerIn(arg1, arg2)
    print("TriggerIn")
end

function TriggerTest:TriggerOut(arg1, arg2)
    print("TriggerOut")
end

function TriggerTest:TriggerTick(arg1, arg2)
    print("TriggerTick")
end

return TriggerTest
