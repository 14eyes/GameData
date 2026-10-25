require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321941Trigger = class("Q7321941Trigger", GadgetActorProxy)
Q7321941Trigger.defaultAlias = "Q7321941Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321941Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321941Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321941Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321941)
    this:DestroySelf()
end

function Q7321941Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321941Trigger
