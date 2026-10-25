require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300203Trigger = class("Q300203Trigger", GadgetActorProxy)
Q300203Trigger.defaultAlias = "Q300203Trigger"
local Q3002ClientConfig = require("Quest/Client/Q3002ClientConfig")

local subIDs = Q3002ClientConfig.SubIDs
local npcs = Q3002ClientConfig.Npcs
local datas = Q3002ClientConfig.Datas

function Q300203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300203Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300203)
    self:DestroySelf()
end

function Q300203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300203Trigger
