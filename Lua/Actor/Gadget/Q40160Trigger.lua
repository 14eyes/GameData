require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40160Trigger = class("Q40160Trigger", GadgetActorProxy)
Q40160Trigger.defaultAlias = "Q40160Trigger"
local Q40160ClientConfig = require("Quest/Client/Q40160ClientConfig")

local this
local subIDs = Q40160ClientConfig.SubIDs
local npcs = Q40160ClientConfig.Npcs
local points = Q40160ClientConfig.Points

function Q40160Trigger:OnPostDataPrepare()
    print("[MainId: 40160][Trigger: Q40160Trigger] OnPostDataPrepare")
    this = self
end

function Q40160Trigger:OnPostComponentPrepare()
    print("[MainId: 40160][Trigger: Q40160Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40160)
end

function Q40160Trigger:TriggerIn()
    print("[MainId: 40160][Trigger: Q40160Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4016001)
    this:DestroySelf()
end

function Q40160Trigger:PreTriggerIn()
    print("[MainId: 40160][Trigger: Q40160Trigger] PreTriggerIn")
end

function Q40160Trigger:LightUpTriggerIn()
    print("[MainId: 40160][Trigger: Q40160Trigger] LightUpTriggerIn")
end

function Q40160Trigger:TriggerOut()
    print("[MainId: 40160][Trigger: Q40160Trigger] TriggerOut")
end

return Q40160Trigger
