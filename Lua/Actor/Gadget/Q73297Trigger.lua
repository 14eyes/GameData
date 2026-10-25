require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73297Trigger = class("Q73297Trigger", GadgetActorProxy)
Q73297Trigger.defaultAlias = "Q73297Trigger"
local Q73297ClientConfig = require("Quest/Client/Q73297ClientConfig")

local this
local subIDs = Q73297ClientConfig.SubIDs
local npcs = Q73297ClientConfig.Npcs
local datas = Q73297ClientConfig.Datas

function Q73297Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73297Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73297Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329702)
    this:DestroySelf()
end

function Q73297Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73297Trigger
