require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217313Trigger = class("Q7217313Trigger", GadgetActorProxy)
Q7217313Trigger.defaultAlias = "Q7217313Trigger"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217313Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217313Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217313Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217313)
    self:DestroySelf()
end

function Q7217313Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7217313Trigger
