require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400404Trigger = class("Q2400404Trigger", GadgetActorProxy)
Q2400404Trigger.defaultAlias = "Q2400404Trigger"
local Q24004ClientConfig = require("Quest/Client/Q24004ClientConfig")

local this
local subIDs = Q24004ClientConfig.SubIDs
local npcs = Q24004ClientConfig.Npcs
local points = Q24004ClientConfig.Points
local datas = Q24004ClientConfig.Datas

function Q2400404Trigger:OnPostDataPrepare()
    print("[MainId: 24004][Trigger: Q2400404Trigger] OnPostDataPrepare")
    this = self
end

function Q2400404Trigger:OnPostComponentPrepare()
    print("[MainId: 24004][Trigger: Q2400404Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400404Trigger:TriggerIn()
    print("[MainId: 24004][Trigger: Q2400404Trigger] TriggerIn")
    actorMgr:GetActor("24004"):GetQuestNpcActor(npcs.Npc5021Data.alias, 24004):NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 24004)
end

function Q2400404Trigger:PreTriggerIn()
    print("[MainId: 24004][Trigger: Q2400404Trigger] PreTriggerIn")
end

function Q2400404Trigger:LightUpTriggerIn()
    print("[MainId: 24004][Trigger: Q2400404Trigger] LightUpTriggerIn")
end

function Q2400404Trigger:TriggerOut()
    print("[MainId: 24004][Trigger: Q2400404Trigger] TriggerOut")
end

return Q2400404Trigger
