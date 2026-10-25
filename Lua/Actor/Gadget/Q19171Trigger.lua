require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19171Trigger = class("Q19171Trigger", GadgetActorProxy)
Q19171Trigger.defaultAlias = "Q19171Trigger"
local Q19171ClientConfig = require("Quest/Client/Q19171ClientConfig")

local this
local subIDs = Q19171ClientConfig.SubIDs
local npcs = Q19171ClientConfig.Npcs
local datas = Q19171ClientConfig.Datas

function Q19171Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19171Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19171Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917101)
    this:DestroySelf()
end

function Q19171Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19171Trigger
