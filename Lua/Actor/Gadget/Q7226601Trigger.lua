require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226601Trigger = class("Q7226601Trigger", GadgetActorProxy)
Q7226601Trigger.defaultAlias = "Q7226601Trigger"
local Q72266ClientConfig = require("Quest/Client/Q72266ClientConfig")

local subIDs = Q72266ClientConfig.SubIDs
local npcs = Q72266ClientConfig.Npcs
local datas = Q72266ClientConfig.Datas

function Q7226601Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226601Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226601Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72266"):FinishQuestID(false, 7226601)
    self:DestroySelf()
end

function Q7226601Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226601Trigger
