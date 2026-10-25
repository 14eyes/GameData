require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414203Trigger = class("Q7414203Trigger", GadgetActorProxy)
Q7414203Trigger.defaultAlias = "Q7414203Trigger"
local Q74142ClientConfig = require("Quest/Client/Q74142ClientConfig")

local this
local subIDs = Q74142ClientConfig.SubIDs
local npcs = Q74142ClientConfig.Npcs
local points = Q74142ClientConfig.Points
local datas = Q74142ClientConfig.Datas

function Q7414203Trigger:OnPostDataPrepare()
    print("[MainId: 74142][Trigger: Q7414203Trigger] OnPostDataPrepare")
    this = self
end

function Q7414203Trigger:OnPostComponentPrepare()
    print("[MainId: 74142][Trigger: Q7414203Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414203Trigger:TriggerIn()
    print("[MainId: 74142][Trigger: Q7414203Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414203)
    this:DestroySelf()
end

function Q7414203Trigger:PreTriggerIn()
    print("[MainId: 74142][Trigger: Q7414203Trigger] PreTriggerIn")
end

function Q7414203Trigger:LightUpTriggerIn()
    print("[MainId: 74142][Trigger: Q7414203Trigger] LightUpTriggerIn")
end

function Q7414203Trigger:TriggerOut()
    print("[MainId: 74142][Trigger: Q7414203Trigger] TriggerOut")
end

return Q7414203Trigger
