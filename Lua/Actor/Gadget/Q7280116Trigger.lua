require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280116Trigger = class("Q7280116Trigger", GadgetActorProxy)
Q7280116Trigger.defaultAlias = "Q7280116Trigger"
local Q72801ClientConfig = require("Quest/Client/Q72801ClientConfig")

local subIDs = Q72801ClientConfig.SubIDs
local npcs = Q72801ClientConfig.Npcs
local datas = Q72801ClientConfig.Datas

function Q7280116Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280116Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280116Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72801")
    actor:FinishQuestID(false, 7280110)
    actor:CallDelay(4, function(arg1)
        actorMgr:GetActor("72801"):NarratorOnlyTaskByData(datas.NarratorWithId7280116)
    end)

    self:DestroySelf()
end

function Q7280116Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280116Trigger
