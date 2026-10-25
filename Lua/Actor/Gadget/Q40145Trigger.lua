require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40145Trigger = class("Q40145Trigger", GadgetActorProxy)
Q40145Trigger.defaultAlias = "Q40145Trigger"
local Q40145ClientConfig = require("Quest/Client/Q40145ClientConfig")

local this
local subIDs = Q40145ClientConfig.SubIDs
local npcs = Q40145ClientConfig.Npcs

function Q40145Trigger:OnPostDataPrepare()
    print("[MainId: 40145][Trigger: Q40145Trigger] OnPostDataPrepare")
    this = self
end

function Q40145Trigger:OnPostComponentPrepare()
    print("[MainId: 40145][Trigger: Q40145Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40145Trigger:TriggerIn()
    print("[MainId: 40145][Trigger: Q40145Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4014501)
    this:DestroySelf()
end

function Q40145Trigger:PreTriggerIn()
    print("[MainId: 40145][Trigger: Q40145Trigger] PreTriggerIn")
end

function Q40145Trigger:LightUpTriggerIn()
    print("[MainId: 40145][Trigger: Q40145Trigger] LightUpTriggerIn")
end

function Q40145Trigger:TriggerOut()
    print("[MainId: 40145][Trigger: Q40145Trigger] TriggerOut")
end

return Q40145Trigger
