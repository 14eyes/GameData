require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318628EnterTrigger = class("Q7318628EnterTrigger", GadgetActorProxy)
Q7318628EnterTrigger.defaultAlias = "Q7318628EnterTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318628EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318628EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318628EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318628)
    this:DestroySelf()
end

function Q7318628EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318628EnterTrigger
