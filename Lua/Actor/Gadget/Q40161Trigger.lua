require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40161Trigger = class("Q40161Trigger", GadgetActorProxy)
Q40161Trigger.defaultAlias = "Q40161Trigger"
local Q40161ClientConfig = require("Quest/Client/Q40161ClientConfig")

local this
local subIDs = Q40161ClientConfig.SubIDs
local npcs = Q40161ClientConfig.Npcs
local points = Q40161ClientConfig.Points

function Q40161Trigger:OnPostDataPrepare()
    print("[MainId: 40161][Trigger: Q40161Trigger] OnPostDataPrepare")
    this = self
end

function Q40161Trigger:OnPostComponentPrepare()
    print("[MainId: 40161][Trigger: Q40161Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40161)
end

function Q40161Trigger:TriggerIn()
    print("[MainId: 40161][Trigger: Q40161Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4016101)
    this:DestroySelf()
end

function Q40161Trigger:PreTriggerIn()
    print("[MainId: 40161][Trigger: Q40161Trigger] PreTriggerIn")
end

function Q40161Trigger:LightUpTriggerIn()
    print("[MainId: 40161][Trigger: Q40161Trigger] LightUpTriggerIn")
end

function Q40161Trigger:TriggerOut()
    print("[MainId: 40161][Trigger: Q40161Trigger] TriggerOut")
end

return Q40161Trigger
