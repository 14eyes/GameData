require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012805TriggerCancelWeather = class("Q4012805TriggerCancelWeather", GadgetActorProxy)
Q4012805TriggerCancelWeather.defaultAlias = "Q4012805TriggerCancelWeather"
local Q40128ClientConfig = require("Quest/Client/Q40128ClientConfig")

local this
local subIDs = Q40128ClientConfig.SubIDs
local npcs = Q40128ClientConfig.Npcs
local points = Q40128ClientConfig.Points
local datas = Q40128ClientConfig.Datas

function Q4012805TriggerCancelWeather:OnPostDataPrepare()
    print("[MainId: 40128][Trigger: Q4012805TriggerCancelWeather] OnPostDataPrepare")
    this = self
end

function Q4012805TriggerCancelWeather:OnPostComponentPrepare()
    print("[MainId: 40128][Trigger: Q4012805TriggerCancelWeather] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012805TriggerCancelWeather:TriggerIn()
    print("[MainId: 40128][Trigger: Q4012805TriggerCancelWeather] TriggerIn")
end

function Q4012805TriggerCancelWeather:PreTriggerIn()
    print("[MainId: 40128][Trigger: Q4012805TriggerCancelWeather] PreTriggerIn")
end

function Q4012805TriggerCancelWeather:LightUpTriggerIn()
    print("[MainId: 40128][Trigger: Q4012805TriggerCancelWeather] LightUpTriggerIn")
end

function Q4012805TriggerCancelWeather:TriggerOut()
    print("[MainId: 40128][Trigger: Q4012805TriggerCancelWeather] TriggerOut")
    actorMgr:GetActor("40128"):CancelWeather()
    this:DestroySelf()
end

return Q4012805TriggerCancelWeather
