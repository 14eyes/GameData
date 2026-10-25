require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413612Trigger = class("Q7413612Trigger", GadgetActorProxy)
Q7413612Trigger.defaultAlias = "Q7413612Trigger"
local Q74136ClientConfig = require("Quest/Client/Q74136ClientConfig")

local this
local subIDs = Q74136ClientConfig.SubIDs
local npcs = Q74136ClientConfig.Npcs
local datas = Q74136ClientConfig.Datas

function Q7413612Trigger:OnPostDataPrepare()
    print("[MainId: 74136][Trigger: Q7413612Trigger] OnPostDataPrepare")
    this = self
end

function Q7413612Trigger:OnPostComponentPrepare()
    print("[MainId: 74136][Trigger: Q7413612Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413612Trigger:TriggerIn()
    print("[MainId: 74136][Trigger: Q7413612Trigger] TriggerIn")
    actorMgr:GetActor("74136"):NarratorOnlyTaskByData(datas.Narrator_7413601)
    actorUtils.FinishQuestID(false, 7413612)
end

function Q7413612Trigger:PreTriggerIn()
    print("[MainId: 74136][Trigger: Q7413612Trigger] PreTriggerIn")
end

function Q7413612Trigger:LightUpTriggerIn()
    print("[MainId: 74136][Trigger: Q7413612Trigger] LightUpTriggerIn")
end

function Q7413612Trigger:TriggerOut()
    print("[MainId: 74136][Trigger: Q7413612Trigger] TriggerOut")
end

return Q7413612Trigger
