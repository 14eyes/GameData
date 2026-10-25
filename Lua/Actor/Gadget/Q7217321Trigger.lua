require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217321Trigger = class("Q7217321Trigger", GadgetActorProxy)
Q7217321Trigger.defaultAlias = "Q7217321Trigger"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217321Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217321Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217321Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217321)
    self:DestroySelf()
end

function Q7217321Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7217321Trigger
