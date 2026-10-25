require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326410_EnterTrigger = class("Q7326410_EnterTrigger", GadgetActorProxy)
Q7326410_EnterTrigger.defaultAlias = "Q7326410_EnterTrigger"
local Q73264ClientConfig = require("Quest/Client/Q73264ClientConfig")

local this
local subIDs = Q73264ClientConfig.SubIDs
local npcs = Q73264ClientConfig.Npcs
local datas = Q73264ClientConfig.Datas

function Q7326410_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326410_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326410_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7326410)
    this:DestroySelf()
end

function Q7326410_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7326410_EnterTrigger
