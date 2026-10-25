require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73527Trigger = class("Q73527Trigger", GadgetActorProxy)
Q73527Trigger.defaultAlias = "Q73527Trigger"
local Q73527ClientConfig = require("Quest/Client/Q73527ClientConfig")

local this
local subIDs = Q73527ClientConfig.SubIDs
local npcs = Q73527ClientConfig.Npcs
local points = Q73527ClientConfig.Points
local datas = Q73527ClientConfig.Datas

function Q73527Trigger:OnPostDataPrepare()
    print("[MainId: 73527][Trigger: Q73527Trigger] OnPostDataPrepare")
    this = self
end

function Q73527Trigger:OnPostComponentPrepare()
    print("[MainId: 73527][Trigger: Q73527Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73527Trigger:TriggerIn()
    print("[MainId: 73527][Trigger: Q73527Trigger] TriggerIn")
    actorMgr:GetActor("73527"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73527)
    this:DestroySelf()
end

function Q73527Trigger:PreTriggerIn()
    print("[MainId: 73527][Trigger: Q73527Trigger] PreTriggerIn")
end

function Q73527Trigger:LightUpTriggerIn()
    print("[MainId: 73527][Trigger: Q73527Trigger] LightUpTriggerIn")
end

function Q73527Trigger:TriggerOut()
    print("[MainId: 73527][Trigger: Q73527Trigger] TriggerOut")
end

return Q73527Trigger
