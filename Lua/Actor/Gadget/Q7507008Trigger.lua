require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507008Trigger = class("Q7507008Trigger", GadgetActorProxy)
Q7507008Trigger.defaultAlias = "Q7507008Trigger"
local Q75070ClientConfig = require("Quest/Client/Q75070ClientConfig")

local this
local subIDs = Q75070ClientConfig.SubIDs
local npcs = Q75070ClientConfig.Npcs
local points = Q75070ClientConfig.Points

function Q7507008Trigger:OnPostDataPrepare()
    print("[MainId: 75070][Trigger: Q7507008Trigger] OnPostDataPrepare")
    this = self
end

function Q7507008Trigger:OnPostComponentPrepare()
    print("[MainId: 75070][Trigger: Q7507008Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75070)
end

function Q7507008Trigger:TriggerIn()
    print("[MainId: 75070][Trigger: Q7507008Trigger] TriggerIn")
    actorMgr:GetActor("75070"):RequestInteraction(npcs.Npc21586Data.alias, "", true)
    this:DestroySelf()
end

function Q7507008Trigger:PreTriggerIn()
    print("[MainId: 75070][Trigger: Q7507008Trigger] PreTriggerIn")
end

function Q7507008Trigger:LightUpTriggerIn()
    print("[MainId: 75070][Trigger: Q7507008Trigger] LightUpTriggerIn")
end

function Q7507008Trigger:TriggerOut()
    print("[MainId: 75070][Trigger: Q7507008Trigger] TriggerOut")
end

return Q7507008Trigger
