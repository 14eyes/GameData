require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402540Trigger = class("Q7402540Trigger", GadgetActorProxy)
Q7402540Trigger.defaultAlias = "Q7402540Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402540Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402540Trigger] OnPostDataPrepare")
    this = self
end

function Q7402540Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402540Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402540Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402540Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402540)
    this:DestroySelf()
end

function Q7402540Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402540Trigger] PreTriggerIn")
end

function Q7402540Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402540Trigger] LightUpTriggerIn")
end

function Q7402540Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402540Trigger] TriggerOut")
end

return Q7402540Trigger
