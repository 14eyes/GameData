require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322001Trigger = class("Q7322001Trigger", GadgetActorProxy)
Q7322001Trigger.defaultAlias = "Q7322001Trigger"
local Q73220ClientConfig = require("Quest/Client/Q73220ClientConfig")

local this
local subIDs = Q73220ClientConfig.SubIDs
local npcs = Q73220ClientConfig.Npcs
local datas = Q73220ClientConfig.Datas

function Q7322001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7322001Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322001)
    this:DestroySelf()
end

function Q7322001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7322001Trigger
