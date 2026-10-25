require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local GoalMarker405 = class("GoalMarker405", GadgetActorProxy)
GoalMarker405.defaultAlias = "GoalMarker405"
local n = 0
local v = 0
local Q405Config = require("Actor/Quest/Q405/Q405Config")

function GoalMarker405:OnPostDataPrepare()
    n = 0
    v = 0
end

function GoalMarker405:OnPostComponentPrepare()
    self:AddComponentTrigger(4, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function GoalMarker405:TriggerIn()
    print("Enter Goal")
    local actorWithPos = actorMgr:CreateActorWithPos("GoalMarkerAs405", "Actor/Gadget/GoalMarkerAS", 70300005, 0, Q405Config.KeyPos, Q405Config.KeyDir, true, false)
    actorWithPos:CallDelay(5, actorWithPos.DestroySelf)
    local pos = self:GetPos()
    self:PlayEffect("Eff_FlyRace_Goal_Marker_AS", pos)
    Q405Config.gotKey = true
    local actor = actorMgr:GetActor(Q405Config.ActorAlias)
    if actor ~= nil then
        print("Finished Fly")
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function GoalMarker405:TriggerOut()
    v = v + 1
end

return GoalMarker405
