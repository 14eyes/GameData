require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger14 = class("Q14038Trigger14", GadgetActorProxy)
Q14038Trigger14.defaultAlias = "Q14038Trigger14"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger14:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger14] OnPostDataPrepare")
    this = self
end

function Q14038Trigger14:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger14] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger14:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger14] TriggerIn")
    actorMgr:GetActor("14038"):SetWeather("Homeworld/Weather_ClearSky_HomeWorld_Interior_02")
end

function Q14038Trigger14:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger14] PreTriggerIn")
end

function Q14038Trigger14:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger14] LightUpTriggerIn")
end

function Q14038Trigger14:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger14] TriggerOut")
    actorMgr:GetActor("14038"):CancelWeather()
end

return Q14038Trigger14
