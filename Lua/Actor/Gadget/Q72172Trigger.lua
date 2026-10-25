require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72172Trigger = class("Q72172Trigger", GadgetActorProxy)
Q72172Trigger.defaultAlias = "Q72172Trigger"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function Q72172Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72172Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72172Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):FinishQuestID(false, 7217221)
    self:DestroySelf()
end

function Q72172Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72172Trigger
