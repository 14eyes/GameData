require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402535Trigger = class("Q7402535Trigger", GadgetActorProxy)
Q7402535Trigger.defaultAlias = "Q7402535Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402535Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402535Trigger] OnPostDataPrepare")
    this = self
end

function Q7402535Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402535Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402535Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402535Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402535)
    this:DestroySelf()
end

function Q7402535Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402535Trigger] PreTriggerIn")
end

function Q7402535Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402535Trigger] LightUpTriggerIn")
end

function Q7402535Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402535Trigger] TriggerOut")
end

return Q7402535Trigger
