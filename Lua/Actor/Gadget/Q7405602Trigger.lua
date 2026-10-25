require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405602Trigger = class("Q7405602Trigger", GadgetActorProxy)
Q7405602Trigger.defaultAlias = "Q7405602Trigger"
local Q74056ClientConfig = require("Quest/Client/Q74056ClientConfig")

local this
local subIDs = Q74056ClientConfig.SubIDs
local npcs = Q74056ClientConfig.Npcs

function Q7405602Trigger:OnPostDataPrepare()
    print("[MainId: 74056][Trigger: Q7405602Trigger] OnPostDataPrepare")
    this = self
end

function Q7405602Trigger:OnPostComponentPrepare()
    print("[MainId: 74056][Trigger: Q7405602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405602Trigger:TriggerIn()
    print("[MainId: 74056][Trigger: Q7405602Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405602)
    this:DestroySelf()
end

function Q7405602Trigger:PreTriggerIn()
    print("[MainId: 74056][Trigger: Q7405602Trigger] PreTriggerIn")
end

function Q7405602Trigger:LightUpTriggerIn()
    print("[MainId: 74056][Trigger: Q7405602Trigger] LightUpTriggerIn")
end

function Q7405602Trigger:TriggerOut()
    print("[MainId: 74056][Trigger: Q7405602Trigger] TriggerOut")
end

return Q7405602Trigger
