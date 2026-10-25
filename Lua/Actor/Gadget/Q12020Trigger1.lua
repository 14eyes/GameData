require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12020Trigger1 = class("Q12020Trigger1", GadgetActorProxy)
Q12020Trigger1.defaultAlias = "Q12020Trigger1"
local Q12020ClientConfig = require("Quest/Client/Q12020ClientConfig")

local subIDs = Q12020ClientConfig.SubIDs
local npcs = Q12020ClientConfig.Npcs

function Q12020Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12020Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12020Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12020"):FinishQuestID(false, 1202001)
end

function Q12020Trigger1:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12020Trigger1
