require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013603Trigger = class("Q4013603Trigger", GadgetActorProxy)
Q4013603Trigger.defaultAlias = "Q4013603Trigger"
local Q40136ClientConfig = require("Quest/Client/Q40136ClientConfig")

local this
local subIDs = Q40136ClientConfig.SubIDs
local npcs = Q40136ClientConfig.Npcs
local points = Q40136ClientConfig.Points

function Q4013603Trigger:OnPostDataPrepare()
    print("[MainId: 40136][Trigger: Q4013603Trigger] OnPostDataPrepare")
    this = self
end

function Q4013603Trigger:OnPostComponentPrepare()
    print("[MainId: 40136][Trigger: Q4013603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013603Trigger:TriggerIn()
    print("[MainId: 40136][Trigger: Q4013603Trigger] TriggerIn")
    actorMgr:GetActor("40136"):RequestInteraction(npcs.Npc1073Data.alias, "", true)
    this:DestroySelf()
end

function Q4013603Trigger:PreTriggerIn()
    print("[MainId: 40136][Trigger: Q4013603Trigger] PreTriggerIn")
end

function Q4013603Trigger:LightUpTriggerIn()
    print("[MainId: 40136][Trigger: Q4013603Trigger] LightUpTriggerIn")
end

function Q4013603Trigger:TriggerOut()
    print("[MainId: 40136][Trigger: Q4013603Trigger] TriggerOut")
end

return Q4013603Trigger
