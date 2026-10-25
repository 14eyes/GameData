require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300506Trigger = class("Q300506Trigger", GadgetActorProxy)
Q300506Trigger.defaultAlias = "Q300506Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300506Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300506Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300506Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300506)
    self:DestroySelf()
end

function Q300506Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300506Trigger
