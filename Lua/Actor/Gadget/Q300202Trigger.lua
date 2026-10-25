require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300202Trigger = class("Q300202Trigger", GadgetActorProxy)
Q300202Trigger.defaultAlias = "Q300202Trigger"
local Q3002ClientConfig = require("Quest/Client/Q3002ClientConfig")

local subIDs = Q3002ClientConfig.SubIDs
local npcs = Q3002ClientConfig.Npcs
local datas = Q3002ClientConfig.Datas

function Q300202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300202Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300202)
    self:DestroySelf()
end

function Q300202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300202Trigger
