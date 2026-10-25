require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302606Trigger = class("Q1302606Trigger", GadgetActorProxy)
Q1302606Trigger.defaultAlias = "Q1302606Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local gadgets = Q13026ClientConfig.Gadgets
local datas = Q13026ClientConfig.Datas

function Q1302606Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302606Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(23.1916, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302606Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13026"):NarratorOnlyTaskByData(datas.Narrator_1302602)
    this:DestroySelf()
end

function Q1302606Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302606Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302606Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302606Trigger
