require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73018Trigger = class("Q73018Trigger", GadgetActorProxy)
Q73018Trigger.defaultAlias = "Q73018Trigger"
local Q73018ClientConfig = require("Quest/Client/Q73018ClientConfig")

local subIDs = Q73018ClientConfig.SubIDs
local npcs = Q73018ClientConfig.Npcs
local datas = Q73018ClientConfig.Datas

function Q73018Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73018Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73018Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301801)
    self:DestroySelf()
end

function Q73018Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73018Trigger
