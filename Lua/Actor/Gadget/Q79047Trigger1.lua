require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79047Trigger1 = class("Q79047Trigger1", GadgetActorProxy)
Q79047Trigger1.defaultAlias = "Q79047Trigger1"
local Q79047ClientConfig = require("Quest/Client/Q79047ClientConfig")

local this
local subIDs = Q79047ClientConfig.SubIDs
local npcs = Q79047ClientConfig.Npcs

function Q79047Trigger1:OnPostDataPrepare()
    print("[MainId: 79047][Trigger: Q79047Trigger1] OnPostDataPrepare")
    this = self
end

function Q79047Trigger1:OnPostComponentPrepare()
    print("[MainId: 79047][Trigger: Q79047Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79047Trigger1:TriggerIn()
    print("[MainId: 79047][Trigger: Q79047Trigger1] TriggerIn")
end

function Q79047Trigger1:PreTriggerIn()
    print("[MainId: 79047][Trigger: Q79047Trigger1] PreTriggerIn")
end

function Q79047Trigger1:LightUpTriggerIn()
    print("[MainId: 79047][Trigger: Q79047Trigger1] LightUpTriggerIn")
end

function Q79047Trigger1:TriggerOut()
    print("[MainId: 79047][Trigger: Q79047Trigger1] TriggerOut")
end

return Q79047Trigger1
