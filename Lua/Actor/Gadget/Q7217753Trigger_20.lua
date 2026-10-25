require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217753Trigger_20 = class("Q7217753Trigger_20", GadgetActorProxy)
Q7217753Trigger_20.defaultAlias = "Q7217753Trigger_20"
local Q72177ClientConfig = require("Quest/Client/Q72177ClientConfig")

local mainID = Q72177ClientConfig.MainID
local actorAlias = Q72177ClientConfig.ActorAlias
local subIDs = Q72177ClientConfig.SubIDs
local npcs = Q72177ClientConfig.Npcs
local datas = Q72177ClientConfig.Datas

function Q7217753Trigger_20:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217753Trigger_20:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.969806, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217753Trigger_20:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7217753)
    self:DestroySelf()
end

function Q7217753Trigger_20:TriggerOut()
    print("TriggerOut")
end

return Q7217753Trigger_20
