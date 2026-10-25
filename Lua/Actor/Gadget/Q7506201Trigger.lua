require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506201Trigger = class("Q7506201Trigger", GadgetActorProxy)
Q7506201Trigger.defaultAlias = "Q7506201Trigger"
local Q75062ClientConfig = require("Quest/Client/Q75062ClientConfig")

local this
local subIDs = Q75062ClientConfig.SubIDs
local npcs = Q75062ClientConfig.Npcs
local points = Q75062ClientConfig.Points

function Q7506201Trigger:OnPostDataPrepare()
    print("[MainId: 75062][Trigger: Q7506201Trigger] OnPostDataPrepare")
    this = self
end

function Q7506201Trigger:OnPostComponentPrepare()
    print("[MainId: 75062][Trigger: Q7506201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75062)
end

function Q7506201Trigger:TriggerIn()
    print("[MainId: 75062][Trigger: Q7506201Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506201)
    this:DestroySelf()
end

function Q7506201Trigger:PreTriggerIn()
    print("[MainId: 75062][Trigger: Q7506201Trigger] PreTriggerIn")
end

function Q7506201Trigger:LightUpTriggerIn()
    print("[MainId: 75062][Trigger: Q7506201Trigger] LightUpTriggerIn")
end

function Q7506201Trigger:TriggerOut()
    print("[MainId: 75062][Trigger: Q7506201Trigger] TriggerOut")
end

return Q7506201Trigger
