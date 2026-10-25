require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402553Trigger = class("Q7402553Trigger", GadgetActorProxy)
Q7402553Trigger.defaultAlias = "Q7402553Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402553Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402553Trigger] OnPostDataPrepare")
    this = self
end

function Q7402553Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402553Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402553Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402553Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402553)
    this:DestroySelf()
end

function Q7402553Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402553Trigger] PreTriggerIn")
end

function Q7402553Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402553Trigger] LightUpTriggerIn")
end

function Q7402553Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402553Trigger] TriggerOut")
end

return Q7402553Trigger
