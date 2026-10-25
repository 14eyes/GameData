require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302602Trigger = class("Q1302602Trigger", GadgetActorProxy)
Q1302602Trigger.defaultAlias = "Q1302602Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local datas = Q13026ClientConfig.Datas

function Q1302602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302602Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13026"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 13026)
    this:DestroySelf()
end

function Q1302602Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302602Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302602Trigger
