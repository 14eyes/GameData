require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310302_EnterTrigger = class("Q7310302_EnterTrigger", GadgetActorProxy)
Q7310302_EnterTrigger.defaultAlias = "Q7310302_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310302_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310302_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3.859872, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310302_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310302)
    this:DestroySelf()
end

function Q7310302_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310302_EnterTrigger
