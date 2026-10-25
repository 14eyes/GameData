require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413601Trigger = class("Q7413601Trigger", GadgetActorProxy)
Q7413601Trigger.defaultAlias = "Q7413601Trigger"
local Q74136ClientConfig = require("Quest/Client/Q74136ClientConfig")

local this
local subIDs = Q74136ClientConfig.SubIDs
local npcs = Q74136ClientConfig.Npcs
local datas = Q74136ClientConfig.Datas

function Q7413601Trigger:OnPostDataPrepare()
    print("[MainId: 74136][Trigger: Q7413601Trigger] OnPostDataPrepare")
    this = self
end

function Q7413601Trigger:OnPostComponentPrepare()
    print("[MainId: 74136][Trigger: Q7413601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413601Trigger:TriggerIn()
    print("[MainId: 74136][Trigger: Q7413601Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74136")
    actorUtils.FinishQuestID(false, 7413601)
    actor:NarratorOnlyTaskByData(datas.Narrator_7413602)
end

function Q7413601Trigger:PreTriggerIn()
    print("[MainId: 74136][Trigger: Q7413601Trigger] PreTriggerIn")
end

function Q7413601Trigger:LightUpTriggerIn()
    print("[MainId: 74136][Trigger: Q7413601Trigger] LightUpTriggerIn")
end

function Q7413601Trigger:TriggerOut()
    print("[MainId: 74136][Trigger: Q7413601Trigger] TriggerOut")
end

return Q7413601Trigger
