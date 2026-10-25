require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79047Trigger = class("Q79047Trigger", GadgetActorProxy)
Q79047Trigger.defaultAlias = "Q79047Trigger"
local Q79047ClientConfig = require("Quest/Client/Q79047ClientConfig")

local this
local subIDs = Q79047ClientConfig.SubIDs
local npcs = Q79047ClientConfig.Npcs

function Q79047Trigger:OnPostDataPrepare()
    print("[MainId: 79047][Trigger: Q79047Trigger] OnPostDataPrepare")
    this = self
end

function Q79047Trigger:OnPostComponentPrepare()
    print("[MainId: 79047][Trigger: Q79047Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79047Trigger:TriggerIn()
    print("[MainId: 79047][Trigger: Q79047Trigger] TriggerIn")
end

function Q79047Trigger:PreTriggerIn()
    print("[MainId: 79047][Trigger: Q79047Trigger] PreTriggerIn")
end

function Q79047Trigger:LightUpTriggerIn()
    print("[MainId: 79047][Trigger: Q79047Trigger] LightUpTriggerIn")
end

function Q79047Trigger:TriggerOut()
    print("[MainId: 79047][Trigger: Q79047Trigger] TriggerOut")
end

return Q79047Trigger
