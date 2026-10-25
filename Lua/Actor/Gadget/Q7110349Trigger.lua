require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110349Trigger = class("Q7110349Trigger", GadgetActorProxy)
Q7110349Trigger.defaultAlias = "Q7110349Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110349Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110349Trigger] OnPostDataPrepare")
    this = self
end

function Q7110349Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110349Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110349Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110349Trigger] TriggerIn")
    actorMgr:GetActor("71103"):CallDelayByQuest("", 1, function(arg1)
        local actor = actorMgr:GetActor("71103")
        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc2501Data.alias, 71103)
        actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.XiaoMaoRun02, 999, 997, -1, nil, nil, nil, nil, nil, nil, false)
    end)

    this:DestroySelf()
end

function Q7110349Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110349Trigger] PreTriggerIn")
end

function Q7110349Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110349Trigger] LightUpTriggerIn")
end

function Q7110349Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110349Trigger] TriggerOut")
end

return Q7110349Trigger
