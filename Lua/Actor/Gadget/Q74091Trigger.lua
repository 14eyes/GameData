require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74091Trigger = class("Q74091Trigger", GadgetActorProxy)
Q74091Trigger.defaultAlias = "Q74091Trigger"
local Q74091ClientConfig = require("Quest/Client/Q74091ClientConfig")

local this
local subIDs = Q74091ClientConfig.SubIDs
local npcs = Q74091ClientConfig.Npcs
local points = Q74091ClientConfig.Points
local datas = Q74091ClientConfig.Datas

function Q74091Trigger:OnPostDataPrepare()
    print("[MainId: 74091][Trigger: Q74091Trigger] OnPostDataPrepare")
    this = self
end

function Q74091Trigger:OnPostComponentPrepare()
    print("[MainId: 74091][Trigger: Q74091Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74091Trigger:TriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger] TriggerIn")
    this:DestroySelf()
end

function Q74091Trigger:PreTriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger] PreTriggerIn")
end

function Q74091Trigger:LightUpTriggerIn()
    print("[MainId: 74091][Trigger: Q74091Trigger] LightUpTriggerIn")
end

function Q74091Trigger:TriggerOut()
    print("[MainId: 74091][Trigger: Q74091Trigger] TriggerOut")
end

return Q74091Trigger
