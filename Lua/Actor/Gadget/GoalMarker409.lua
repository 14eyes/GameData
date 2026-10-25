require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local GoalMarker409 = class("GoalMarker409", GadgetActorProxy)
GoalMarker409.defaultAlias = "GoalMarker409"

GoalMarker409.shapeData = {
    shapeName = "CircleR2",
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

local n = 0
local v = 0
local Q409Config = require("Actor/Quest/Q409/Q409Config")

function GoalMarker409:OnPostDataPrepare()
    n = 0
    v = 0
end

function GoalMarker409:OnPostComponentPrepare()
    self:AddCommonTrigger(self.shapeData, self.TriggerIn, self.TriggerOut, self.TriggerTick)
end

function GoalMarker409:TriggerIn(ballMonsterID, arg2)
    print("**************GoalMarker409:TriggerIn")
    if ballMonsterID == Q409Config.BallMonsterID then
        Q409Config.Score = Q409Config.Score + 1
        self:CountNumUIUpdate(Q409Config.Score)
        local pos = self:GetPos()
        self:PlayEffect("Eff_FlyRace_Goal_Marker_AS", pos)
    end
end

function GoalMarker409:TriggerOut(arg1, arg2)
    print("TriggerOut")
end

function GoalMarker409:TriggerTick(arg1, arg2)
    print("TriggerTick")
end

return GoalMarker409
