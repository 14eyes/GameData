require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72653Trigger = class("Q72653Trigger", GadgetActorProxy)
Q72653Trigger.defaultAlias = "Q72653Trigger"
local Q72653ClientConfig = require("Quest/Client/Q72653ClientConfig")

local mainID = Q72653ClientConfig.MainID
local actorAlias = Q72653ClientConfig.ActorAlias
local subIDs = Q72653ClientConfig.SubIDs
local datas = Q72653ClientConfig.Datas

function Q72653Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72653Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72653Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):NarratorOnlyTask({{dialogID = 726530301, duration = 3}})
    self:DestroySelf()
end

function Q72653Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72653Trigger
