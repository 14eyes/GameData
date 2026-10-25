require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217747Trigger_40 = class("Q7217747Trigger_40", GadgetActorProxy)
Q7217747Trigger_40.defaultAlias = "Q7217747Trigger_40"
local Q72177ClientConfig = require("Quest/Client/Q72177ClientConfig")

local mainID = Q72177ClientConfig.MainID
local actorAlias = Q72177ClientConfig.ActorAlias
local subIDs = Q72177ClientConfig.SubIDs
local npcs = Q72177ClientConfig.Npcs
local datas = Q72177ClientConfig.Datas

function Q7217747Trigger_40:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217747Trigger_40:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15.27892, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217747Trigger_40:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7217747)
    self:DestroySelf()
end

function Q7217747Trigger_40:TriggerOut()
    print("TriggerOut")
end

return Q7217747Trigger_40
