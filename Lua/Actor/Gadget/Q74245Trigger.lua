require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74245Trigger = class("Q74245Trigger", GadgetActorProxy)
Q74245Trigger.defaultAlias = "Q74245Trigger"
local Q74245ClientConfig = require("Quest/Client/Q74245ClientConfig")

local this
local subIDs = Q74245ClientConfig.SubIDs
local npcs = Q74245ClientConfig.Npcs

function Q74245Trigger:OnPostDataPrepare()
    print("[MainId: 74245][Trigger: Q74245Trigger] OnPostDataPrepare")
    this = self
end

function Q74245Trigger:OnPostComponentPrepare()
    print("[MainId: 74245][Trigger: Q74245Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74245)
end

function Q74245Trigger:TriggerIn()
    print("[MainId: 74245][Trigger: Q74245Trigger] TriggerIn")
end

function Q74245Trigger:PreTriggerIn()
    print("[MainId: 74245][Trigger: Q74245Trigger] PreTriggerIn")
end

function Q74245Trigger:LightUpTriggerIn()
    print("[MainId: 74245][Trigger: Q74245Trigger] LightUpTriggerIn")
end

function Q74245Trigger:TriggerOut()
    print("[MainId: 74245][Trigger: Q74245Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7424501)
    this:DestroySelf()
end

return Q74245Trigger
