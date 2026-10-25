require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007Dorm2Trigger = class("Q3007Dorm2Trigger", GadgetActorProxy)
Q3007Dorm2Trigger.defaultAlias = "Q3007Dorm2Trigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007Dorm2Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007Dorm2Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007Dorm2Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300713)
    self:DestroySelf()
end

function Q3007Dorm2Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3007Dorm2Trigger
