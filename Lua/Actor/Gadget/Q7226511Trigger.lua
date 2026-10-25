require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226511Trigger = class("Q7226511Trigger", GadgetActorProxy)
Q7226511Trigger.defaultAlias = "Q7226511Trigger"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226511Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7226511Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72265"):FinishQuestID(false, 7226511)
    self:DestroySelf()
end

return Q7226511Trigger
