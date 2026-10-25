require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75155Trigger = class("Q75155Trigger", GadgetActorProxy)
Q75155Trigger.defaultAlias = "Q75155Trigger"
local Q75155ClientConfig = require("Quest/Client/Q75155ClientConfig")

local this
local subIDs = Q75155ClientConfig.SubIDs
local npcs = Q75155ClientConfig.Npcs

function Q75155Trigger:OnPostDataPrepare()
    print("[MainId: 75155][Trigger: Q75155Trigger] OnPostDataPrepare")
    this = self
end

function Q75155Trigger:OnPostComponentPrepare()
    print("[MainId: 75155][Trigger: Q75155Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75155)
end

function Q75155Trigger:TriggerIn()
    print("[MainId: 75155][Trigger: Q75155Trigger] TriggerIn")
    this:DestroySelf()
end

function Q75155Trigger:PreTriggerIn()
    print("[MainId: 75155][Trigger: Q75155Trigger] PreTriggerIn")
end

function Q75155Trigger:LightUpTriggerIn()
    print("[MainId: 75155][Trigger: Q75155Trigger] LightUpTriggerIn")
end

function Q75155Trigger:TriggerOut()
    print("[MainId: 75155][Trigger: Q75155Trigger] TriggerOut")
end

return Q75155Trigger
