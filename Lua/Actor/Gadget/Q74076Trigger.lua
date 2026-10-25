require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74076Trigger = class("Q74076Trigger", GadgetActorProxy)
Q74076Trigger.defaultAlias = "Q74076Trigger"
local Q74076ClientConfig = require("Quest/Client/Q74076ClientConfig")

local this
local subIDs = Q74076ClientConfig.SubIDs
local npcs = Q74076ClientConfig.Npcs
local datas = Q74076ClientConfig.Datas

function Q74076Trigger:OnPostDataPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger] OnPostDataPrepare")
    this = self
end

function Q74076Trigger:OnPostComponentPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74076Trigger:TriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7407601)
    this:DestroySelf()
end

function Q74076Trigger:PreTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger] PreTriggerIn")
end

function Q74076Trigger:LightUpTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger] LightUpTriggerIn")
end

function Q74076Trigger:TriggerOut()
    print("[MainId: 74076][Trigger: Q74076Trigger] TriggerOut")
end

return Q74076Trigger
