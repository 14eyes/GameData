require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328711Trigger = class("Q7328711Trigger", GadgetActorProxy)
Q7328711Trigger.defaultAlias = "Q7328711Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328711Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328711Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328711Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328711)
    this:DestroySelf()
end

function Q7328711Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328711Trigger
