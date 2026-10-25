require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7326402_EnterTrigger = class("Q7326402_EnterTrigger", GadgetActorProxy)
Q7326402_EnterTrigger.defaultAlias = "Q7326402_EnterTrigger"
local Q73264ClientConfig = require("Quest/Client/Q73264ClientConfig")

local this
local subIDs = Q73264ClientConfig.SubIDs
local npcs = Q73264ClientConfig.Npcs
local datas = Q73264ClientConfig.Datas

function Q7326402_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7326402_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7326402_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7326402)
    this:DestroySelf()
end

function Q7326402_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7326402_EnterTrigger
