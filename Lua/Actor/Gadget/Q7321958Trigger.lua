require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321958Trigger = class("Q7321958Trigger", GadgetActorProxy)
Q7321958Trigger.defaultAlias = "Q7321958Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321958Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321958Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321958Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321958)
    this:DestroySelf()
end

function Q7321958Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321958Trigger
