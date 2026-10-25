require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318721_EnterTrigger = class("Q7318721_EnterTrigger", GadgetActorProxy)
Q7318721_EnterTrigger.defaultAlias = "Q7318721_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs

function Q7318721_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7318721_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318721_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318721)
    self:DestroySelf()
end

function Q7318721_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318721_EnterTrigger
