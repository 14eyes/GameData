require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226619Trigger = class("Q7226619Trigger", GadgetActorProxy)
Q7226619Trigger.defaultAlias = "Q7226619Trigger"
local Q72266ClientConfig = require("Quest/Client/Q72266ClientConfig")

local subIDs = Q72266ClientConfig.SubIDs
local npcs = Q72266ClientConfig.Npcs
local datas = Q72266ClientConfig.Datas

function Q7226619Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226619Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226619Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72266"):FinishQuestID(false, 7226619)
    self:DestroySelf()
end

function Q7226619Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226619Trigger
