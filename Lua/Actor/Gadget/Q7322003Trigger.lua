require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322003Trigger = class("Q7322003Trigger", GadgetActorProxy)
Q7322003Trigger.defaultAlias = "Q7322003Trigger"
local Q73220ClientConfig = require("Quest/Client/Q73220ClientConfig")

local this
local subIDs = Q73220ClientConfig.SubIDs
local npcs = Q73220ClientConfig.Npcs
local datas = Q73220ClientConfig.Datas

function Q7322003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7322003Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322003)
    this:DestroySelf()
end

function Q7322003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7322003Trigger
