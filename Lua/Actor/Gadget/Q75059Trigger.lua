require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75059Trigger = class("Q75059Trigger", GadgetActorProxy)
Q75059Trigger.defaultAlias = "Q75059Trigger"
local Q75059ClientConfig = require("Quest/Client/Q75059ClientConfig")

local this
local subIDs = Q75059ClientConfig.SubIDs
local npcs = Q75059ClientConfig.Npcs

function Q75059Trigger:OnPostDataPrepare()
    print("[MainId: 75059][Trigger: Q75059Trigger] OnPostDataPrepare")
    this = self
end

function Q75059Trigger:OnPostComponentPrepare()
    print("[MainId: 75059][Trigger: Q75059Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75059)
end

function Q75059Trigger:TriggerIn()
    print("[MainId: 75059][Trigger: Q75059Trigger] TriggerIn")
    this:DestroySelf()
end

function Q75059Trigger:PreTriggerIn()
    print("[MainId: 75059][Trigger: Q75059Trigger] PreTriggerIn")
end

function Q75059Trigger:LightUpTriggerIn()
    print("[MainId: 75059][Trigger: Q75059Trigger] LightUpTriggerIn")
end

function Q75059Trigger:TriggerOut()
    print("[MainId: 75059][Trigger: Q75059Trigger] TriggerOut")
end

return Q75059Trigger
