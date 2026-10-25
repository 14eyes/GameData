require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013320Trigger = class("Q4013320Trigger", GadgetActorProxy)
Q4013320Trigger.defaultAlias = "Q4013320Trigger"
local Q40133ClientConfig = require("Quest/Client/Q40133ClientConfig")

local this
local subIDs = Q40133ClientConfig.SubIDs
local npcs = Q40133ClientConfig.Npcs
local points = Q40133ClientConfig.Points
local datas = Q40133ClientConfig.Datas

function Q4013320Trigger:OnPostDataPrepare()
    print("[MainId: 40133][Trigger: Q4013320Trigger] OnPostDataPrepare")
    this = self
end

function Q4013320Trigger:OnPostComponentPrepare()
    print("[MainId: 40133][Trigger: Q4013320Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013320Trigger:TriggerIn()
    print("[MainId: 40133][Trigger: Q4013320Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013320)
    this:DestroySelf()
end

function Q4013320Trigger:PreTriggerIn()
    print("[MainId: 40133][Trigger: Q4013320Trigger] PreTriggerIn")
end

function Q4013320Trigger:LightUpTriggerIn()
    print("[MainId: 40133][Trigger: Q4013320Trigger] LightUpTriggerIn")
end

function Q4013320Trigger:TriggerOut()
    print("[MainId: 40133][Trigger: Q4013320Trigger] TriggerOut")
end

return Q4013320Trigger
