require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303007Trigger = class("Q2303007Trigger", GadgetActorProxy)
Q2303007Trigger.defaultAlias = "Q2303007Trigger"
local Q23030ClientConfig = require("Quest/Client/Q23030ClientConfig")

local subIDs = Q23030ClientConfig.SubIDs
local npcs = Q23030ClientConfig.Npcs
local datas = Q23030ClientConfig.Datas

function Q2303007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2303007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303007Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2303007)
    self:DestroySelf()
end

function Q2303007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2303007Trigger
