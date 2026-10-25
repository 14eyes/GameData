require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74034Trigger3 = class("Q74034Trigger3", GadgetActorProxy)
Q74034Trigger3.defaultAlias = "Q74034Trigger3"
local Q74034ClientConfig = require("Quest/Client/Q74034ClientConfig")

local this
local subIDs = Q74034ClientConfig.SubIDs
local npcs = Q74034ClientConfig.Npcs
local points = Q74034ClientConfig.Points

function Q74034Trigger3:OnPostDataPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger3] OnPostDataPrepare")
    this = self
end

function Q74034Trigger3:OnPostComponentPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74034Trigger3:TriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 7403408)
    this:DestroySelf()
end

function Q74034Trigger3:PreTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger3] PreTriggerIn")
end

function Q74034Trigger3:LightUpTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger3] LightUpTriggerIn")
end

function Q74034Trigger3:TriggerOut()
    print("[MainId: 74034][Trigger: Q74034Trigger3] TriggerOut")
end

return Q74034Trigger3
