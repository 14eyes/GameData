require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73067Trigger01 = class("Q73067Trigger01", GadgetActorProxy)
Q73067Trigger01.defaultAlias = "Q73067Trigger01"
local Q73067ClientConfig = require("Quest/Client/Q73067ClientConfig")

local subIDs = Q73067ClientConfig.SubIDs
local npcs = Q73067ClientConfig.Npcs
local datas = Q73067ClientConfig.Datas

function Q73067Trigger01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73067Trigger01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73067Trigger01:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306701)
    local actor = actorMgr:GetActor("73067")
    actor:NarratorOnlyTask(datas.NarratorTable01, nil, "")
    actor:EnterSceneLookCamera({x = 119.0, y = 254.0, z = 2479.0}, 0, 3, true, false)
    self:DestroySelf()
end

function Q73067Trigger01:TriggerOut()
    print("TriggerOut")
end

return Q73067Trigger01
