require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72654Trigger = class("Q72654Trigger", GadgetActorProxy)
Q72654Trigger.defaultAlias = "Q72654Trigger"
local Q72654ClientConfig = require("Quest/Client/Q72654ClientConfig")

local mainID = Q72654ClientConfig.MainID
local actorAlias = Q72654ClientConfig.ActorAlias
local subIDs = Q72654ClientConfig.SubIDs
local datas = Q72654ClientConfig.Datas

function Q72654Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72654Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72654Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):NarratorOnlyTask({{dialogID = 726540301, duration = 3}})
    self:DestroySelf()
end

function Q72654Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72654Trigger
