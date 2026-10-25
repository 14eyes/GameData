require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73294Trigger = class("Q73294Trigger", GadgetActorProxy)
Q73294Trigger.defaultAlias = "Q73294Trigger"
local Q73294ClientConfig = require("Quest/Client/Q73294ClientConfig")

local this
local subIDs = Q73294ClientConfig.SubIDs
local npcs = Q73294ClientConfig.Npcs
local datas = Q73294ClientConfig.Datas

function Q73294Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73294Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73294Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329404)
    this:DestroySelf()
end

function Q73294Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73294Trigger
