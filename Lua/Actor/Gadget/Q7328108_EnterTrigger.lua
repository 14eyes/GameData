require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328108_EnterTrigger = class("Q7328108_EnterTrigger", GadgetActorProxy)
Q7328108_EnterTrigger.defaultAlias = "Q7328108_EnterTrigger"
local Q73281ClientConfig = require("Quest/Client/Q73281ClientConfig")

local this
local subIDs = Q73281ClientConfig.SubIDs
local npcs = Q73281ClientConfig.Npcs
local datas = Q73281ClientConfig.Datas

function Q7328108_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328108_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328108_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328108)
    this:DestroySelf()
end

function Q7328108_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328108_EnterTrigger
