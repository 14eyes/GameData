require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318614EnterTrigger = class("Q7318614EnterTrigger", GadgetActorProxy)
Q7318614EnterTrigger.defaultAlias = "Q7318614EnterTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318614EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318614EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318614EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318614)
    this:DestroySelf()
end

function Q7318614EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318614EnterTrigger
