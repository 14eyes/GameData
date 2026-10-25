require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323515Trigger = class("Q7323515Trigger", GadgetActorProxy)
Q7323515Trigger.defaultAlias = "Q7323515Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323515Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323515Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323515Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73235"):NarratorOnlyTaskByData(datas.NarratorWithId15)
    this:DestroySelf()
end

function Q7323515Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323515Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323515Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323515Trigger
