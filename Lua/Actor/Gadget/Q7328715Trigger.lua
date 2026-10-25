require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328715Trigger = class("Q7328715Trigger", GadgetActorProxy)
Q7328715Trigger.defaultAlias = "Q7328715Trigger"
local Q73287ClientConfig = require("Quest/Client/Q73287ClientConfig")

local this
local subIDs = Q73287ClientConfig.SubIDs
local npcs = Q73287ClientConfig.Npcs
local datas = Q73287ClientConfig.Datas

function Q7328715Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328715Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328715Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328715)
    this:DestroySelf()
end

function Q7328715Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328715Trigger
