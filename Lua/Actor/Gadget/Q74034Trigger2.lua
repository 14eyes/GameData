require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74034Trigger2 = class("Q74034Trigger2", GadgetActorProxy)
Q74034Trigger2.defaultAlias = "Q74034Trigger2"
local Q74034ClientConfig = require("Quest/Client/Q74034ClientConfig")

local this
local subIDs = Q74034ClientConfig.SubIDs
local npcs = Q74034ClientConfig.Npcs
local points = Q74034ClientConfig.Points

function Q74034Trigger2:OnPostDataPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger2] OnPostDataPrepare")
    this = self
end

function Q74034Trigger2:OnPostComponentPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74034Trigger2:TriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7403406)
    this:DestroySelf()
end

function Q74034Trigger2:PreTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger2] PreTriggerIn")
end

function Q74034Trigger2:LightUpTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger2] LightUpTriggerIn")
end

function Q74034Trigger2:TriggerOut()
    print("[MainId: 74034][Trigger: Q74034Trigger2] TriggerOut")
end

return Q74034Trigger2
