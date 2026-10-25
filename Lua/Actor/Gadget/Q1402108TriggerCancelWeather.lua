require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402108TriggerCancelWeather = class("Q1402108TriggerCancelWeather", GadgetActorProxy)
Q1402108TriggerCancelWeather.defaultAlias = "Q1402108TriggerCancelWeather"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402108TriggerCancelWeather:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402108TriggerCancelWeather] OnPostDataPrepare")
    this = self
end

function Q1402108TriggerCancelWeather:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402108TriggerCancelWeather] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402108TriggerCancelWeather:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402108TriggerCancelWeather] TriggerIn")
end

function Q1402108TriggerCancelWeather:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402108TriggerCancelWeather] PreTriggerIn")
end

function Q1402108TriggerCancelWeather:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402108TriggerCancelWeather] LightUpTriggerIn")
end

function Q1402108TriggerCancelWeather:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402108TriggerCancelWeather] TriggerOut")
    actorMgr:GetActor("14021"):CancelWeather()
    this:DestroySelf()
end

return Q1402108TriggerCancelWeather
