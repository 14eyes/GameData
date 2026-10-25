require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402209TriggerCancelWeather = class("Q1402209TriggerCancelWeather", GadgetActorProxy)
Q1402209TriggerCancelWeather.defaultAlias = "Q1402209TriggerCancelWeather"
local Q14022ClientConfig = require("Quest/Client/Q14022ClientConfig")

local this
local subIDs = Q14022ClientConfig.SubIDs
local npcs = Q14022ClientConfig.Npcs
local points = Q14022ClientConfig.Points
local datas = Q14022ClientConfig.Datas

function Q1402209TriggerCancelWeather:OnPostDataPrepare()
    print("[MainId: 14022][Trigger: Q1402209TriggerCancelWeather] OnPostDataPrepare")
    this = self
end

function Q1402209TriggerCancelWeather:OnPostComponentPrepare()
    print("[MainId: 14022][Trigger: Q1402209TriggerCancelWeather] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402209TriggerCancelWeather:TriggerIn()
    print("[MainId: 14022][Trigger: Q1402209TriggerCancelWeather] TriggerIn")
end

function Q1402209TriggerCancelWeather:PreTriggerIn()
    print("[MainId: 14022][Trigger: Q1402209TriggerCancelWeather] PreTriggerIn")
end

function Q1402209TriggerCancelWeather:LightUpTriggerIn()
    print("[MainId: 14022][Trigger: Q1402209TriggerCancelWeather] LightUpTriggerIn")
end

function Q1402209TriggerCancelWeather:TriggerOut()
    print("[MainId: 14022][Trigger: Q1402209TriggerCancelWeather] TriggerOut")
    actorMgr:GetActor("14022"):CancelWeather()
    this:DestroySelf()
end

return Q1402209TriggerCancelWeather
