require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322022Trigger = class("Q7322022Trigger", GadgetActorProxy)
Q7322022Trigger.defaultAlias = "Q7322022Trigger"
local Q73220ClientConfig = require("Quest/Client/Q73220ClientConfig")

local this
local subIDs = Q73220ClientConfig.SubIDs
local npcs = Q73220ClientConfig.Npcs
local datas = Q73220ClientConfig.Datas

function Q7322022Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322022Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7322022Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322022)
    this:DestroySelf()
end

function Q7322022Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7322022Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7322022Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7322022Trigger
