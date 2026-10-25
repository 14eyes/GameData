require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300216Trigger = class("Q1300216Trigger", GadgetActorProxy)
Q1300216Trigger.defaultAlias = "Q1300216Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300216Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300216Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300216Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1300216)
    self:DestroySelf()
end

function Q1300216Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300216Trigger
