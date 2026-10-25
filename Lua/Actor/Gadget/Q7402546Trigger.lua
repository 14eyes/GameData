require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402546Trigger = class("Q7402546Trigger", GadgetActorProxy)
Q7402546Trigger.defaultAlias = "Q7402546Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402546Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402546Trigger] OnPostDataPrepare")
    this = self
end

function Q7402546Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402546Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402546Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402546Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402546)
    this:DestroySelf()
end

function Q7402546Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402546Trigger] PreTriggerIn")
end

function Q7402546Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402546Trigger] LightUpTriggerIn")
end

function Q7402546Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402546Trigger] TriggerOut")
end

return Q7402546Trigger
