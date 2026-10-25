require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74034Trigger1 = class("Q74034Trigger1", GadgetActorProxy)
Q74034Trigger1.defaultAlias = "Q74034Trigger1"
local Q74034ClientConfig = require("Quest/Client/Q74034ClientConfig")

local this
local subIDs = Q74034ClientConfig.SubIDs
local npcs = Q74034ClientConfig.Npcs
local points = Q74034ClientConfig.Points

function Q74034Trigger1:OnPostDataPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger1] OnPostDataPrepare")
    this = self
end

function Q74034Trigger1:OnPostComponentPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74034Trigger1:TriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7403404)
    this:DestroySelf()
end

function Q74034Trigger1:PreTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger1] PreTriggerIn")
end

function Q74034Trigger1:LightUpTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger1] LightUpTriggerIn")
end

function Q74034Trigger1:TriggerOut()
    print("[MainId: 74034][Trigger: Q74034Trigger1] TriggerOut")
end

return Q74034Trigger1
