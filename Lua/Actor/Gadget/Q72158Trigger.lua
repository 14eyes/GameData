require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72158Trigger = class("Q72158Trigger", GadgetActorProxy)
Q72158Trigger.defaultAlias = "Q72158Trigger"
local Q72158ClientConfig = require("Quest/Client/Q72158ClientConfig")

local subIDs = Q72158ClientConfig.SubIDs
local npcs = Q72158ClientConfig.Npcs
local datas = Q72158ClientConfig.Datas

function Q72158Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72158Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72158Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72158")
    actor:NarratorOnlyTask(datas.Paimon04, nil, "")
    actor:FinishQuestID(false, 7215804)
    self:DestroySelf()
end

function Q72158Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72158Trigger
