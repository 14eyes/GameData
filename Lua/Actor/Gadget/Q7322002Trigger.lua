require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322002Trigger = class("Q7322002Trigger", GadgetActorProxy)
Q7322002Trigger.defaultAlias = "Q7322002Trigger"
local Q73220ClientConfig = require("Quest/Client/Q73220ClientConfig")

local this
local subIDs = Q73220ClientConfig.SubIDs
local npcs = Q73220ClientConfig.Npcs
local datas = Q73220ClientConfig.Datas

function Q7322002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7322002Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322002)
    this:DestroySelf()
end

function Q7322002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7322002Trigger
