require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201600Trigger = class("Q1201600Trigger", GadgetActorProxy)
Q1201600Trigger.defaultAlias = "Q1201600Trigger"
local Q12016ClientConfig = require("Quest/Client/Q12016ClientConfig")

local this
local subIDs = Q12016ClientConfig.SubIDs
local npcs = Q12016ClientConfig.Npcs
local points = Q12016ClientConfig.Points
local datas = Q12016ClientConfig.Datas

function Q1201600Trigger:OnPostDataPrepare()
    print("[MainId: 12016][Trigger: Q1201600Trigger] OnPostDataPrepare")
    this = self
end

function Q1201600Trigger:OnPostComponentPrepare()
    print("[MainId: 12016][Trigger: Q1201600Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1201600Trigger:TriggerIn()
    print("[MainId: 12016][Trigger: Q1201600Trigger] TriggerIn")
    actorMgr:GetActor("12016"):NarratorOnlyTaskByData(datas.NarratorWithId1201601)
    this:DestroySelf()
end

function Q1201600Trigger:PreTriggerIn()
    print("[MainId: 12016][Trigger: Q1201600Trigger] PreTriggerIn")
end

function Q1201600Trigger:LightUpTriggerIn()
    print("[MainId: 12016][Trigger: Q1201600Trigger] LightUpTriggerIn")
end

function Q1201600Trigger:TriggerOut()
    print("[MainId: 12016][Trigger: Q1201600Trigger] TriggerOut")
end

return Q1201600Trigger
