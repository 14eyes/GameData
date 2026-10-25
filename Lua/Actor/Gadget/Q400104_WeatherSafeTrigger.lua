require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400104_WeatherSafeTrigger = class("Q400104_WeatherSafeTrigger", GadgetActorProxy)
Q400104_WeatherSafeTrigger.defaultAlias = "Q400104_WeatherSafeTrigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400104_WeatherSafeTrigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400104_WeatherSafeTrigger] OnPostDataPrepare")
    this = self
end

function Q400104_WeatherSafeTrigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400104_WeatherSafeTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(145.668, 91.58344, 23.07814, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400104_WeatherSafeTrigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400104_WeatherSafeTrigger] TriggerIn")
end

function Q400104_WeatherSafeTrigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400104_WeatherSafeTrigger] PreTriggerIn")
end

function Q400104_WeatherSafeTrigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400104_WeatherSafeTrigger] LightUpTriggerIn")
end

function Q400104_WeatherSafeTrigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400104_WeatherSafeTrigger] TriggerOut")
    globalActor:LeaveWeather()
    this:DestroySelf()
end

return Q400104_WeatherSafeTrigger
