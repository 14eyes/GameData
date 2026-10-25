require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19095Trigger = class("Q19095Trigger", GadgetActorProxy)
Q19095Trigger.defaultAlias = "Q19095Trigger"
local Q19095ClientConfig = require("Quest/Client/Q19095ClientConfig")

local this
local subIDs = Q19095ClientConfig.SubIDs
local npcs = Q19095ClientConfig.Npcs

function Q19095Trigger:OnPostDataPrepare()
    print("[MainId: 19095][Trigger: Q19095Trigger] OnPostDataPrepare")
    this = self
end

function Q19095Trigger:OnPostComponentPrepare()
    print("[MainId: 19095][Trigger: Q19095Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 9.5, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19095Trigger:TriggerIn()
    print("[MainId: 19095][Trigger: Q19095Trigger] TriggerIn")
    actorMgr:GetActor("19095"):RequestInteraction(npcs.QinData.alias)
    this:DestroySelf()
end

function Q19095Trigger:PreTriggerIn()
    print("[MainId: 19095][Trigger: Q19095Trigger] PreTriggerIn")
end

function Q19095Trigger:LightUpTriggerIn()
    print("[MainId: 19095][Trigger: Q19095Trigger] LightUpTriggerIn")
end

function Q19095Trigger:TriggerOut()
    print("[MainId: 19095][Trigger: Q19095Trigger] TriggerOut")
end

return Q19095Trigger
