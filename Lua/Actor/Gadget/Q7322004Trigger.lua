require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322004Trigger = class("Q7322004Trigger", GadgetActorProxy)
Q7322004Trigger.defaultAlias = "Q7322004Trigger"
local Q73220ClientConfig = require("Quest/Client/Q73220ClientConfig")

local this
local subIDs = Q73220ClientConfig.SubIDs
local npcs = Q73220ClientConfig.Npcs
local datas = Q73220ClientConfig.Datas

function Q7322004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7322004Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7322004Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7322004Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7322004Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7322004)
    this:DestroySelf()
end

return Q7322004Trigger
