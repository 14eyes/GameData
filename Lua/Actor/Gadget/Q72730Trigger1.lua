require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72730Trigger1 = class("Q72730Trigger1", GadgetActorProxy)
Q72730Trigger1.defaultAlias = "Q72730Trigger1"
local Q72730ClientConfig = require("Quest/Client/Q72730ClientConfig")

local this
local subIDs = Q72730ClientConfig.SubIDs
local npcs = Q72730ClientConfig.Npcs
local datas = Q72730ClientConfig.Datas

function Q72730Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q72730Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72730Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7273003)
    this:DestroySelf()
end

function Q72730Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72730Trigger1
