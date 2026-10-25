require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406202Trigger = class("Q7406202Trigger", GadgetActorProxy)
Q7406202Trigger.defaultAlias = "Q7406202Trigger"
local Q74062ClientConfig = require("Quest/Client/Q74062ClientConfig")

local this
local subIDs = Q74062ClientConfig.SubIDs
local npcs = Q74062ClientConfig.Npcs
local points = Q74062ClientConfig.Points

function Q7406202Trigger:OnPostDataPrepare()
    print("[MainId: 74062][Trigger: Q7406202Trigger] OnPostDataPrepare")
    this = self
end

function Q7406202Trigger:OnPostComponentPrepare()
    print("[MainId: 74062][Trigger: Q7406202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406202Trigger:TriggerIn()
    print("[MainId: 74062][Trigger: Q7406202Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406202)
    this:DestroySelf()
end

function Q7406202Trigger:PreTriggerIn()
    print("[MainId: 74062][Trigger: Q7406202Trigger] PreTriggerIn")
end

function Q7406202Trigger:LightUpTriggerIn()
    print("[MainId: 74062][Trigger: Q7406202Trigger] LightUpTriggerIn")
end

function Q7406202Trigger:TriggerOut()
    print("[MainId: 74062][Trigger: Q7406202Trigger] TriggerOut")
end

return Q7406202Trigger
