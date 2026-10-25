require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223509Trigger = class("Q7223509Trigger", GadgetActorProxy)
Q7223509Trigger.defaultAlias = "Q7223509Trigger"
local Q72235ClientConfig = require("Quest/Client/Q72235ClientConfig")

local subIDs = Q72235ClientConfig.SubIDs
local datas = Q72235ClientConfig.Datas

function Q7223509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223509Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72235"):FinishQuestID(false, 7223509)
    self:DestroySelf()
end

function Q7223509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223509Trigger
