require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72731Trigger = class("Q72731Trigger", GadgetActorProxy)
Q72731Trigger.defaultAlias = "Q72731Trigger"
local Q72731ClientConfig = require("Quest/Client/Q72731ClientConfig")

local this
local subIDs = Q72731ClientConfig.SubIDs
local npcs = Q72731ClientConfig.Npcs
local datas = Q72731ClientConfig.Datas

function Q72731Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q72731Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72731Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7273103)
    this:DestroySelf()
end

function Q72731Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72731Trigger
