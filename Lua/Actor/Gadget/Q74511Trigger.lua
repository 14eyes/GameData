require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74511Trigger = class("Q74511Trigger", GadgetActorProxy)
Q74511Trigger.defaultAlias = "Q74511Trigger"
local Q74511ClientConfig = require("Quest/Client/Q74511ClientConfig")

local this
local subIDs = Q74511ClientConfig.SubIDs
local npcs = Q74511ClientConfig.Npcs
local points = Q74511ClientConfig.Points

function Q74511Trigger:OnPostDataPrepare()
    print("[MainId: 74511][Trigger: Q74511Trigger] OnPostDataPrepare")
    this = self
end

function Q74511Trigger:OnPostComponentPrepare()
    print("[MainId: 74511][Trigger: Q74511Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74511Trigger:TriggerIn()
    print("[MainId: 74511][Trigger: Q74511Trigger] TriggerIn")
    actorMgr:GetActor("74511"):SetWeather("BigWorld/Weather_ClearSky")
    this:DestroySelf()
end

function Q74511Trigger:PreTriggerIn()
    print("[MainId: 74511][Trigger: Q74511Trigger] PreTriggerIn")
end

function Q74511Trigger:LightUpTriggerIn()
    print("[MainId: 74511][Trigger: Q74511Trigger] LightUpTriggerIn")
end

function Q74511Trigger:TriggerOut()
    print("[MainId: 74511][Trigger: Q74511Trigger] TriggerOut")
end

return Q74511Trigger
