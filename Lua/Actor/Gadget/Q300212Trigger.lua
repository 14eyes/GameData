require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300212Trigger = class("Q300212Trigger", GadgetActorProxy)
Q300212Trigger.defaultAlias = "Q300212Trigger"
local Q3002ClientConfig = require("Quest/Client/Q3002ClientConfig")

local subIDs = Q3002ClientConfig.SubIDs
local npcs = Q3002ClientConfig.Npcs
local datas = Q3002ClientConfig.Datas

function Q300212Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300212Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300212Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300212)
    self:DestroySelf()
end

function Q300212Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300212Trigger
