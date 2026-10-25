require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328202_EnterTrigger = class("Q7328202_EnterTrigger", GadgetActorProxy)
Q7328202_EnterTrigger.defaultAlias = "Q7328202_EnterTrigger"
local Q73282ClientConfig = require("Quest/Client/Q73282ClientConfig")

local this
local subIDs = Q73282ClientConfig.SubIDs
local npcs = Q73282ClientConfig.Npcs
local datas = Q73282ClientConfig.Datas

function Q7328202_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328202_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7328202_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328202)
    this:DestroySelf()
end

function Q7328202_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7328202_EnterTrigger
