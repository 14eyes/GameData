require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318705_EnterTrigger = class("Q7318705_EnterTrigger", GadgetActorProxy)
Q7318705_EnterTrigger.defaultAlias = "Q7318705_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318705_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318705_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = -0.14, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318705_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318705)
    this:DestroySelf()
end

function Q7318705_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318705_EnterTrigger
