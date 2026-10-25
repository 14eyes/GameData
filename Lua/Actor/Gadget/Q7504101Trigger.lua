require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7504101Trigger = class("Q7504101Trigger", GadgetActorProxy)
Q7504101Trigger.defaultAlias = "Q7504101Trigger"
local Q75041ClientConfig = require("Quest/Client/Q75041ClientConfig")

local this
local subIDs = Q75041ClientConfig.SubIDs
local npcs = Q75041ClientConfig.Npcs
local points = Q75041ClientConfig.Points

function Q7504101Trigger:OnPostDataPrepare()
    print("[MainId: 75041][Trigger: Q7504101Trigger] OnPostDataPrepare")
    this = self
end

function Q7504101Trigger:OnPostComponentPrepare()
    print("[MainId: 75041][Trigger: Q7504101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75041)
end

function Q7504101Trigger:TriggerIn()
    print("[MainId: 75041][Trigger: Q7504101Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7504101)
    this:DestroySelf()
end

function Q7504101Trigger:PreTriggerIn()
    print("[MainId: 75041][Trigger: Q7504101Trigger] PreTriggerIn")
end

function Q7504101Trigger:LightUpTriggerIn()
    print("[MainId: 75041][Trigger: Q7504101Trigger] LightUpTriggerIn")
end

function Q7504101Trigger:TriggerOut()
    print("[MainId: 75041][Trigger: Q7504101Trigger] TriggerOut")
end

return Q7504101Trigger
