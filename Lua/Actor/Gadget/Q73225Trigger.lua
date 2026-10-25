require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73225Trigger = class("Q73225Trigger", GadgetActorProxy)
Q73225Trigger.defaultAlias = "Q73225Trigger"
local Q73225ClientConfig = require("Quest/Client/Q73225ClientConfig")

local subIDs = Q73225ClientConfig.SubIDs
local npcs = Q73225ClientConfig.Npcs
local datas = Q73225ClientConfig.Datas

function Q73225Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73225Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73225Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322501)
    self:DestroySelf()
end

function Q73225Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73225Trigger
