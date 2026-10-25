require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217751Trigger_18 = class("Q7217751Trigger_18", GadgetActorProxy)
Q7217751Trigger_18.defaultAlias = "Q7217751Trigger_18"
local Q72177ClientConfig = require("Quest/Client/Q72177ClientConfig")

local mainID = Q72177ClientConfig.MainID
local actorAlias = Q72177ClientConfig.ActorAlias
local subIDs = Q72177ClientConfig.SubIDs
local npcs = Q72177ClientConfig.Npcs
local datas = Q72177ClientConfig.Datas

function Q7217751Trigger_18:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217751Trigger_18:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8.434461, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217751Trigger_18:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7217751)
    self:DestroySelf()
end

function Q7217751Trigger_18:TriggerOut()
    print("TriggerOut")
end

return Q7217751Trigger_18
