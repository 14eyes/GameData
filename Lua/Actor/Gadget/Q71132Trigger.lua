require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71132Trigger = class("Q71132Trigger", GadgetActorProxy)
Q71132Trigger.defaultAlias = "Q71132Trigger"
local Q71132ClientConfig = require("Quest/Client/Q71132ClientConfig")

local this
local subIDs = Q71132ClientConfig.SubIDs
local npcs = Q71132ClientConfig.Npcs

function Q71132Trigger:OnPostDataPrepare()
    print("[MainId: 71132][Trigger: Q71132Trigger] OnPostDataPrepare")
    this = self
end

function Q71132Trigger:OnPostComponentPrepare()
    print("[MainId: 71132][Trigger: Q71132Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q71132Trigger:TriggerIn()
    print("[MainId: 71132][Trigger: Q71132Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7113201)
    this:DestroySelf()
end

function Q71132Trigger:PreTriggerIn()
    print("[MainId: 71132][Trigger: Q71132Trigger] PreTriggerIn")
end

function Q71132Trigger:LightUpTriggerIn()
    print("[MainId: 71132][Trigger: Q71132Trigger] LightUpTriggerIn")
end

function Q71132Trigger:TriggerOut()
    print("[MainId: 71132][Trigger: Q71132Trigger] TriggerOut")
end

return Q71132Trigger
