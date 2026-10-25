require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328706Trigger = class("Q7328706Trigger", GadgetActorProxy)
Q7328706Trigger.defaultAlias = "Q7328706Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328706Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328706)
    this:DestroySelf()
end

function Q7328706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328706Trigger
