require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24002Trigger = class("Q24002Trigger", GadgetActorProxy)
Q24002Trigger.defaultAlias = "Q24002Trigger"
local Q24002ClientConfig = require("Quest/Client/Q24002ClientConfig")

local this
local subIDs = Q24002ClientConfig.SubIDs
local npcs = Q24002ClientConfig.Npcs
local points = Q24002ClientConfig.Points
local datas = Q24002ClientConfig.Datas

function Q24002Trigger:OnPostDataPrepare()
    print("[MainId: 24002][Trigger: Q24002Trigger] OnPostDataPrepare")
    this = self
end

function Q24002Trigger:OnPostComponentPrepare()
    print("[MainId: 24002][Trigger: Q24002Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q24002Trigger:TriggerIn()
    print("[MainId: 24002][Trigger: Q24002Trigger] TriggerIn")
end

function Q24002Trigger:PreTriggerIn()
    print("[MainId: 24002][Trigger: Q24002Trigger] PreTriggerIn")
end

function Q24002Trigger:LightUpTriggerIn()
    print("[MainId: 24002][Trigger: Q24002Trigger] LightUpTriggerIn")
end

function Q24002Trigger:TriggerOut()
    print("[MainId: 24002][Trigger: Q24002Trigger] TriggerOut")
    actorMgr:GetActor("24002"):ClearNarratorTask()
end

return Q24002Trigger
