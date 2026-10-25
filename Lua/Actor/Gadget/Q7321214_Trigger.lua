require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321214_Trigger = class("Q7321214_Trigger", GadgetActorProxy)
Q7321214_Trigger.defaultAlias = "Q7321214_Trigger"
local Q73212ClientConfig = require("Quest/Client/Q73212ClientConfig")

local this
local subIDs = Q73212ClientConfig.SubIDs
local npcs = Q73212ClientConfig.Npcs
local datas = Q73212ClientConfig.Datas

function Q7321214_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321214_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321214_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321214)
    this:DestroySelf()
end

function Q7321214_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321214_Trigger
