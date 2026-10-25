require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73067Trigger09 = class("Q73067Trigger09", GadgetActorProxy)
Q73067Trigger09.defaultAlias = "Q73067Trigger09"
local Q73067ClientConfig = require("Quest/Client/Q73067ClientConfig")

local subIDs = Q73067ClientConfig.SubIDs
local npcs = Q73067ClientConfig.Npcs
local datas = Q73067ClientConfig.Datas

function Q73067Trigger09:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73067Trigger09:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(19, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73067Trigger09:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306709)
    self:DestroySelf()
end

function Q73067Trigger09:TriggerOut()
    print("TriggerOut")
end

return Q73067Trigger09
