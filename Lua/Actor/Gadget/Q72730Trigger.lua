require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72730Trigger = class("Q72730Trigger", GadgetActorProxy)
Q72730Trigger.defaultAlias = "Q72730Trigger"
local Q72730ClientConfig = require("Quest/Client/Q72730ClientConfig")

local this
local subIDs = Q72730ClientConfig.SubIDs
local npcs = Q72730ClientConfig.Npcs
local datas = Q72730ClientConfig.Datas

function Q72730Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q72730Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72730Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7273001)
    this:DestroySelf()
end

function Q72730Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72730Trigger
