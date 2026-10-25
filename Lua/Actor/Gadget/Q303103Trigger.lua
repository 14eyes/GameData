require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303103Trigger = class("Q303103Trigger", GadgetActorProxy)
Q303103Trigger.defaultAlias = "Q303103Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303103Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 303103)
    this:DestroySelf()
end

function Q303103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303103Trigger
