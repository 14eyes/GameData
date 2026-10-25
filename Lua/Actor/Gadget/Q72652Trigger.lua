require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72652Trigger = class("Q72652Trigger", GadgetActorProxy)
Q72652Trigger.defaultAlias = "Q72652Trigger"
local Q72652ClientConfig = require("Quest/Client/Q72652ClientConfig")

local mainID = Q72652ClientConfig.MainID
local actorAlias = Q72652ClientConfig.ActorAlias
local subIDs = Q72652ClientConfig.SubIDs
local datas = Q72652ClientConfig.Datas

function Q72652Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72652Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72652Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):NarratorOnlyTask({{dialogID = 726520301, duration = 3}})
    self:DestroySelf()
end

function Q72652Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72652Trigger
