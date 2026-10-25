require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7327903_EnterTrigger = class("Q7327903_EnterTrigger", GadgetActorProxy)
Q7327903_EnterTrigger.defaultAlias = "Q7327903_EnterTrigger"
local Q73279ClientConfig = require("Quest/Client/Q73279ClientConfig")

local this
local subIDs = Q73279ClientConfig.SubIDs
local npcs = Q73279ClientConfig.Npcs
local datas = Q73279ClientConfig.Datas

function Q7327903_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7327903_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7327903_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7327903)
end

function Q7327903_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7327903_EnterTrigger
