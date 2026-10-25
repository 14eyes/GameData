require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14024Trigger1 = class("Q14024Trigger1", GadgetActorProxy)
Q14024Trigger1.defaultAlias = "Q14024Trigger1"
local Q14024ClientConfig = require("Quest/Client/Q14024ClientConfig")

local this
local subIDs = Q14024ClientConfig.SubIDs
local npcs = Q14024ClientConfig.Npcs
local points = Q14024ClientConfig.Points
local datas = Q14024ClientConfig.Datas

function Q14024Trigger1:OnPostDataPrepare()
    print("[MainId: 14024][Trigger: Q14024Trigger1] OnPostDataPrepare")
    this = self
end

function Q14024Trigger1:OnPostComponentPrepare()
    print("[MainId: 14024][Trigger: Q14024Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14024)
end

function Q14024Trigger1:TriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("14024")
    actor:CreateQuestNpcById(1402405, npcs.Npc13883Data.id, 0)
    actor:GetQuestNpcActor(npcs.Npc13883Data.alias):WalkToRouteTask(datas.RoutePointsData_01, function(arg1)
        actorMgr:GetActor("14024"):GetQuestNpcActor(npcs.Npc13883Data.alias):DestroyWithDitherEx(2)
    end)

    actor:QuestNarratorTask(datas.Narrator_1402403)
    actorUtils.FinishQuestID(false, 1402405)
    this:DestroySelf()
end

function Q14024Trigger1:PreTriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger1] PreTriggerIn")
end

function Q14024Trigger1:LightUpTriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger1] LightUpTriggerIn")
end

function Q14024Trigger1:TriggerOut()
    print("[MainId: 14024][Trigger: Q14024Trigger1] TriggerOut")
end

return Q14024Trigger1
