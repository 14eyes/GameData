require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73067Trigger06 = class("Q73067Trigger06", GadgetActorProxy)
Q73067Trigger06.defaultAlias = "Q73067Trigger06"
local Q73067ClientConfig = require("Quest/Client/Q73067ClientConfig")

local subIDs = Q73067ClientConfig.SubIDs
local npcs = Q73067ClientConfig.Npcs
local datas = Q73067ClientConfig.Datas

function Q73067Trigger06:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73067Trigger06:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73067Trigger06:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306706)
    self:DestroySelf()
end

function Q73067Trigger06:TriggerOut()
    print("TriggerOut")
end

return Q73067Trigger06
