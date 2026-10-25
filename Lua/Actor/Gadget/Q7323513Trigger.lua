require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323513Trigger = class("Q7323513Trigger", GadgetActorProxy)
Q7323513Trigger.defaultAlias = "Q7323513Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323513Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323513Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323513Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73235"):NarratorOnlyTaskByData(datas.NarratorWithId13)
    actorMgr:GetActor("73235"):EnterSceneLookCamera({x = 375.187, y = 308.196, z = 6932.032}, 0, 3, true, true)
    this:DestroySelf()
end

function Q7323513Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323513Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323513Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323513Trigger
