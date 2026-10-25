require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401506_LeaveWeatherTrigger = class("Q1401506_LeaveWeatherTrigger", GadgetActorProxy)
Q1401506_LeaveWeatherTrigger.defaultAlias = "Q1401506_LeaveWeatherTrigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401506_LeaveWeatherTrigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401506_LeaveWeatherTrigger] OnPostDataPrepare")
    this = self
end

function Q1401506_LeaveWeatherTrigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401506_LeaveWeatherTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401506_LeaveWeatherTrigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_LeaveWeatherTrigger] TriggerIn")
end

function Q1401506_LeaveWeatherTrigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_LeaveWeatherTrigger] PreTriggerIn")
end

function Q1401506_LeaveWeatherTrigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401506_LeaveWeatherTrigger] LightUpTriggerIn")
end

function Q1401506_LeaveWeatherTrigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401506_LeaveWeatherTrigger] TriggerOut")
    globalActor:LeaveWeather()
end

return Q1401506_LeaveWeatherTrigger
