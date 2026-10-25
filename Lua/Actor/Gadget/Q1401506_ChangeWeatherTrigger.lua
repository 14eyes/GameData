require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401506_ChangeWeatherTrigger = class("Q1401506_ChangeWeatherTrigger", GadgetActorProxy)
Q1401506_ChangeWeatherTrigger.defaultAlias = "Q1401506_ChangeWeatherTrigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401506_ChangeWeatherTrigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401506_ChangeWeatherTrigger] OnPostDataPrepare")
    this = self
end

function Q1401506_ChangeWeatherTrigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401506_ChangeWeatherTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401506_ChangeWeatherTrigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_ChangeWeatherTrigger] TriggerIn")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Q1401506_ChangeWeatherTrigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_ChangeWeatherTrigger] PreTriggerIn")
end

function Q1401506_ChangeWeatherTrigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_ChangeWeatherTrigger] LightUpTriggerIn")
end

function Q1401506_ChangeWeatherTrigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401506_ChangeWeatherTrigger] TriggerOut")
end

return Q1401506_ChangeWeatherTrigger
