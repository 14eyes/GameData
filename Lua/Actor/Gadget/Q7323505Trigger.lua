require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323505Trigger = class("Q7323505Trigger", GadgetActorProxy)
Q7323505Trigger.defaultAlias = "Q7323505Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323505Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73235"):NarratorOnlyTaskByData(datas.NarratorWithId05)
    this:DestroySelf()
end

function Q7323505Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323505Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323505Trigger
