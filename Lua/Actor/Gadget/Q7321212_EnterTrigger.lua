require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321212_EnterTrigger = class("Q7321212_EnterTrigger", GadgetActorProxy)
Q7321212_EnterTrigger.defaultAlias = "Q7321212_EnterTrigger"
local Q73212ClientConfig = require("Quest/Client/Q73212ClientConfig")

local this
local subIDs = Q73212ClientConfig.SubIDs
local npcs = Q73212ClientConfig.Npcs
local datas = Q73212ClientConfig.Datas

function Q7321212_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321212_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321212_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321212)
    this:DestroySelf()
end

function Q7321212_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7321212_EnterTrigger
