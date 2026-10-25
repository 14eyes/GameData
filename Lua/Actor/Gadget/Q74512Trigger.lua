require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74512Trigger = class("Q74512Trigger", GadgetActorProxy)
Q74512Trigger.defaultAlias = "Q74512Trigger"
local Q74512ClientConfig = require("Quest/Client/Q74512ClientConfig")

local this
local subIDs = Q74512ClientConfig.SubIDs
local npcs = Q74512ClientConfig.Npcs
local points = Q74512ClientConfig.Points

function Q74512Trigger:OnPostDataPrepare()
    print("[MainId: 74512][Trigger: Q74512Trigger] OnPostDataPrepare")
    this = self
end

function Q74512Trigger:OnPostComponentPrepare()
    print("[MainId: 74512][Trigger: Q74512Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74512Trigger:TriggerIn()
    print("[MainId: 74512][Trigger: Q74512Trigger] TriggerIn")
    actorMgr:GetActor("74512"):SetWeather("BigWorld/Weather_ClearSky")
    this:DestroySelf()
end

function Q74512Trigger:PreTriggerIn()
    print("[MainId: 74512][Trigger: Q74512Trigger] PreTriggerIn")
end

function Q74512Trigger:LightUpTriggerIn()
    print("[MainId: 74512][Trigger: Q74512Trigger] LightUpTriggerIn")
end

function Q74512Trigger:TriggerOut()
    print("[MainId: 74512][Trigger: Q74512Trigger] TriggerOut")
end

return Q74512Trigger
