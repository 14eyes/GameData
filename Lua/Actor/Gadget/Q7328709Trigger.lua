require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328709Trigger = class("Q7328709Trigger", GadgetActorProxy)
Q7328709Trigger.defaultAlias = "Q7328709Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328709Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328709Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328709Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328709)
    this:DestroySelf()
end

function Q7328709Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328709Trigger
