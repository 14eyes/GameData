require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506202Trigger = class("Q7506202Trigger", GadgetActorProxy)
Q7506202Trigger.defaultAlias = "Q7506202Trigger"
local Q75062ClientConfig = require("Quest/Client/Q75062ClientConfig")

local this
local subIDs = Q75062ClientConfig.SubIDs
local npcs = Q75062ClientConfig.Npcs
local points = Q75062ClientConfig.Points

function Q7506202Trigger:OnPostDataPrepare()
    print("[MainId: 75062][Trigger: Q7506202Trigger] OnPostDataPrepare")
    this = self
end

function Q7506202Trigger:OnPostComponentPrepare()
    print("[MainId: 75062][Trigger: Q7506202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75062)
end

function Q7506202Trigger:TriggerIn()
    print("[MainId: 75062][Trigger: Q7506202Trigger] TriggerIn")
end

function Q7506202Trigger:PreTriggerIn()
    print("[MainId: 75062][Trigger: Q7506202Trigger] PreTriggerIn")
end

function Q7506202Trigger:LightUpTriggerIn()
    print("[MainId: 75062][Trigger: Q7506202Trigger] LightUpTriggerIn")
end

function Q7506202Trigger:TriggerOut()
    print("[MainId: 75062][Trigger: Q7506202Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506202)
    this:DestroySelf()
end

return Q7506202Trigger
