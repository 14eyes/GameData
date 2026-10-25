require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local GoalMarker408 = class("GoalMarker408", GadgetActorProxy)
GoalMarker408.defaultAlias = "GoalMarker408"
local n = 0
local v = 0
local Q408Config = require("Actor/Quest/Q408/Q408Config")

function GoalMarker408:OnPostDataPrepare()
    n = 0
    v = 0
end

function GoalMarker408:OnPostComponentPrepare()
    self:AddComponentTrigger(4, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function GoalMarker408:TriggerIn()
    print("Enter Goal")
    local actorWithPos = actorMgr:CreateActorWithPos("GoalMarkerAs408", "Actor/Gadget/GoalMarkerAS", 70300005, 0, Q408Config.KeyPos, Q408Config.KeyDir, true, false)
    actorWithPos:CallDelay(5, actorWithPos.DestroySelf)
    local pos = self:GetPos()
    self:PlayEffect("Eff_FlyRace_Goal_Marker_AS", pos)
    Q408Config.gotKey = true
    local actor = actorMgr:GetActor(Q408Config.ActorAlias)
    if actor ~= nil then
        print("Finished RiverRun")
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function GoalMarker408:TriggerOut()
    v = v + 1
end

return GoalMarker408
