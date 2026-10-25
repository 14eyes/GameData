require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217706Trigger_11 = class("Q7217706Trigger_11", GadgetActorProxy)
Q7217706Trigger_11.defaultAlias = "Q7217706Trigger_11"
local Q72177ClientConfig = require("Quest/Client/Q72177ClientConfig")

local mainID = Q72177ClientConfig.MainID
local actorAlias = Q72177ClientConfig.ActorAlias
local subIDs = Q72177ClientConfig.SubIDs
local npcs = Q72177ClientConfig.Npcs
local datas = Q72177ClientConfig.Datas

function Q7217706Trigger_11:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217706Trigger_11:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217706Trigger_11:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7217706)
    self:DestroySelf()
end

function Q7217706Trigger_11:TriggerOut()
    print("TriggerOut")
end

return Q7217706Trigger_11
