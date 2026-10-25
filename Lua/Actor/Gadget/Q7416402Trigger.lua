require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7416402Trigger = class("Q7416402Trigger", GadgetActorProxy)
Q7416402Trigger.defaultAlias = "Q7416402Trigger"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q7416402Trigger:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q7416402Trigger] OnPostDataPrepare")
    this = self
end

function Q7416402Trigger:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q7416402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7416402Trigger:TriggerIn()
    print("[MainId: 74164][Trigger: Q7416402Trigger] TriggerIn")
    actorMgr:GetActor("74164"):NarratorOnlyTaskByData(datas.Narrator_7416401)
    this:DestroySelf()
end

function Q7416402Trigger:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q7416402Trigger] PreTriggerIn")
end

function Q7416402Trigger:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q7416402Trigger] LightUpTriggerIn")
end

function Q7416402Trigger:TriggerOut()
    print("[MainId: 74164][Trigger: Q7416402Trigger] TriggerOut")
end

return Q7416402Trigger
