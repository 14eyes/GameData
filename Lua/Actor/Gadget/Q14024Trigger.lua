require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14024Trigger = class("Q14024Trigger", GadgetActorProxy)
Q14024Trigger.defaultAlias = "Q14024Trigger"
local Q14024ClientConfig = require("Quest/Client/Q14024ClientConfig")

local this
local subIDs = Q14024ClientConfig.SubIDs
local npcs = Q14024ClientConfig.Npcs
local points = Q14024ClientConfig.Points
local datas = Q14024ClientConfig.Datas

function Q14024Trigger:OnPostDataPrepare()
    print("[MainId: 14024][Trigger: Q14024Trigger] OnPostDataPrepare")
    this = self
end

function Q14024Trigger:OnPostComponentPrepare()
    print("[MainId: 14024][Trigger: Q14024Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14024)
end

function Q14024Trigger:TriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14024")
    actor:EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
    actor:CreateQuestNpcById(1402401, npcs.Npc13883Data.id, 0)
    actor:GetQuestNpcActor(npcs.Npc13883Data.alias):WalkToRouteTask(datas.RoutePointsData, function(arg1)
        actorMgr:GetActor("14024"):GetQuestNpcActor(npcs.Npc13883Data.alias):DestroyWithDitherEx(2)
    end)

    actor:QuestNarratorTask(datas.Narrator_1402402)
    actorUtils.FinishQuestID(false, 1402401)
    this:DestroySelf()
end

function Q14024Trigger:PreTriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger] PreTriggerIn")
end

function Q14024Trigger:LightUpTriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger] LightUpTriggerIn")
end

function Q14024Trigger:TriggerOut()
    print("[MainId: 14024][Trigger: Q14024Trigger] TriggerOut")
end

return Q14024Trigger
