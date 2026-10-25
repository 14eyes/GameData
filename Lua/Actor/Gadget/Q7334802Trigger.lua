require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7334802Trigger = class("Q7334802Trigger", GadgetActorProxy)
Q7334802Trigger.defaultAlias = "Q7334802Trigger"
local Q73348ClientConfig = require("Quest/Client/Q73348ClientConfig")

local this
local subIDs = Q73348ClientConfig.SubIDs
local npcs = Q73348ClientConfig.Npcs
local points = Q73348ClientConfig.Points
local datas = Q73348ClientConfig.Datas

function Q7334802Trigger:OnPostDataPrepare()
    print("[MainId: 73348][Trigger: Q7334802Trigger] OnPostDataPrepare")
    this = self
end

function Q7334802Trigger:OnPostComponentPrepare()
    print("[MainId: 73348][Trigger: Q7334802Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7334802Trigger:TriggerIn()
    print("[MainId: 73348][Trigger: Q7334802Trigger] TriggerIn")
    actorMgr:GetActor("73348"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q7334802Trigger:PreTriggerIn()
    print("[MainId: 73348][Trigger: Q7334802Trigger] PreTriggerIn")
end

function Q7334802Trigger:LightUpTriggerIn()
    print("[MainId: 73348][Trigger: Q7334802Trigger] LightUpTriggerIn")
end

function Q7334802Trigger:TriggerOut()
    print("[MainId: 73348][Trigger: Q7334802Trigger] TriggerOut")
end

return Q7334802Trigger
