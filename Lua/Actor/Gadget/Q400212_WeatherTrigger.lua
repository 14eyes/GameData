require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400212_WeatherTrigger = class("Q400212_WeatherTrigger", GadgetActorProxy)
Q400212_WeatherTrigger.defaultAlias = "Q400212_WeatherTrigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400212_WeatherTrigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400212_WeatherTrigger] OnPostDataPrepare")
    this = self
end

function Q400212_WeatherTrigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400212_WeatherTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400212_WeatherTrigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400212_WeatherTrigger] TriggerIn")
    globalActor:ChangeWeather("BigWorld/Weather_Rain_Light_Fdc")
    this:DestroySelf()
end

function Q400212_WeatherTrigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400212_WeatherTrigger] PreTriggerIn")
end

function Q400212_WeatherTrigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400212_WeatherTrigger] LightUpTriggerIn")
end

function Q400212_WeatherTrigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400212_WeatherTrigger] TriggerOut")
end

return Q400212_WeatherTrigger
