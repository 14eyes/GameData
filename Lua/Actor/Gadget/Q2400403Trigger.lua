require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400403Trigger = class("Q2400403Trigger", GadgetActorProxy)
Q2400403Trigger.defaultAlias = "Q2400403Trigger"
local Q24004ClientConfig = require("Quest/Client/Q24004ClientConfig")

local this
local subIDs = Q24004ClientConfig.SubIDs
local npcs = Q24004ClientConfig.Npcs
local points = Q24004ClientConfig.Points
local datas = Q24004ClientConfig.Datas

function Q2400403Trigger:OnPostDataPrepare()
    print("[MainId: 24004][Trigger: Q2400403Trigger] OnPostDataPrepare")
    this = self
end

function Q2400403Trigger:OnPostComponentPrepare()
    print("[MainId: 24004][Trigger: Q2400403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400403Trigger:TriggerIn()
    print("[MainId: 24004][Trigger: Q2400403Trigger] TriggerIn")
    actorMgr:GetActor("24004"):GetQuestNpcActor(npcs.Npc5062Data.alias, 24004):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 24004)
end

function Q2400403Trigger:PreTriggerIn()
    print("[MainId: 24004][Trigger: Q2400403Trigger] PreTriggerIn")
end

function Q2400403Trigger:LightUpTriggerIn()
    print("[MainId: 24004][Trigger: Q2400403Trigger] LightUpTriggerIn")
end

function Q2400403Trigger:TriggerOut()
    print("[MainId: 24004][Trigger: Q2400403Trigger] TriggerOut")
end

return Q2400403Trigger
