require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326423Trigger = class("Q7326423Trigger", GadgetActorProxy)
Q7326423Trigger.defaultAlias = "Q7326423Trigger"
local Q73264ClientConfig = require("Quest/Client/Q73264ClientConfig")

local this
local subIDs = Q73264ClientConfig.SubIDs
local npcs = Q73264ClientConfig.Npcs
local datas = Q73264ClientConfig.Datas

function Q7326423Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326423Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326423Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7326423)
    this:DestroySelf()
end

function Q7326423Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7326423Trigger
