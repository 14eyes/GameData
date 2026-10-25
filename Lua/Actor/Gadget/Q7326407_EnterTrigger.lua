require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326407_EnterTrigger = class("Q7326407_EnterTrigger", GadgetActorProxy)
Q7326407_EnterTrigger.defaultAlias = "Q7326407_EnterTrigger"
local Q73264ClientConfig = require("Quest/Client/Q73264ClientConfig")

local this
local subIDs = Q73264ClientConfig.SubIDs
local npcs = Q73264ClientConfig.Npcs
local datas = Q73264ClientConfig.Datas

function Q7326407_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326407_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(26, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326407_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7326407)
    this:DestroySelf()
end

function Q7326407_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7326407_EnterTrigger
