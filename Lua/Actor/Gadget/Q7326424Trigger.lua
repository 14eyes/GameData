require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326424Trigger = class("Q7326424Trigger", GadgetActorProxy)
Q7326424Trigger.defaultAlias = "Q7326424Trigger"
local Q73264ClientConfig = require("Quest/Client/Q73264ClientConfig")

local this
local subIDs = Q73264ClientConfig.SubIDs
local npcs = Q73264ClientConfig.Npcs
local datas = Q73264ClientConfig.Datas

function Q7326424Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326424Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326424Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7326424)
    this:DestroySelf()
end

function Q7326424Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7326424Trigger
