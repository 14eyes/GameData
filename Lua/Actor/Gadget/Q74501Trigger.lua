require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74501Trigger = class("Q74501Trigger", GadgetActorProxy)
Q74501Trigger.defaultAlias = "Q74501Trigger"
local Q74501ClientConfig = require("Quest/Client/Q74501ClientConfig")

local this
local subIDs = Q74501ClientConfig.SubIDs
local npcs = Q74501ClientConfig.Npcs
local points = Q74501ClientConfig.Points

function Q74501Trigger:OnPostDataPrepare()
    print("[MainId: 74501][Trigger: Q74501Trigger] OnPostDataPrepare")
    this = self
end

function Q74501Trigger:OnPostComponentPrepare()
    print("[MainId: 74501][Trigger: Q74501Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74501Trigger:TriggerIn()
    print("[MainId: 74501][Trigger: Q74501Trigger] TriggerIn")
end

function Q74501Trigger:PreTriggerIn()
    print("[MainId: 74501][Trigger: Q74501Trigger] PreTriggerIn")
end

function Q74501Trigger:LightUpTriggerIn()
    print("[MainId: 74501][Trigger: Q74501Trigger] LightUpTriggerIn")
end

function Q74501Trigger:TriggerOut()
    print("[MainId: 74501][Trigger: Q74501Trigger] TriggerOut")
    actorMgr:GetActor("74501"):LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
    this:DestroySelf()
end

return Q74501Trigger
