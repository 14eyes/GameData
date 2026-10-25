require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local GoalMarker404 = class("GoalMarker404", GadgetActorProxy)
GoalMarker404.defaultAlias = "GoalMarker404"
local n = 0
local v = 0
local Q404Config = require("Actor/Quest/Q404/Q404Config")

function GoalMarker404:OnPostDataPrepare()
    n = 0
    v = 0
end

function GoalMarker404:OnPostComponentPrepare()
    self:AddComponentTrigger(4, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function GoalMarker404:TriggerIn()
    print("Enter Goal")
    local actorWithPos = actorMgr:CreateActorWithPos("GoalMarkerAs404", "Actor/Gadget/GoalMarkerAS", 70300005, 0, Q404Config.KeyPos, Q404Config.KeyDir, false, false)
    actorWithPos:CallDelay(5, actorWithPos.DestroySelf)
    local v = actorMgr:CreateActorWithPos("GoalMarkerAs4042", "Actor/Gadget/GoalMarkerAS", 70300005, 0, Q404Config.KeyPos2, Q404Config.KeyDir2, false, false)
    v:CallDelay(5, v.DestroySelf)
    local pos = self:GetPos()
    self:PlayEffect("Eff_FlyRace_Goal_Marker_AS", pos)
    Q404Config.gotKey = true
    local actor = actorMgr:GetActor(Q404Config.ActorAlias)
    if actor ~= nil then
        print("Finished Fly")
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function GoalMarker404:TriggerOut()
    v = v + 1
end

return GoalMarker404
