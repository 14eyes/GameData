require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408803Trigger = class("Q7408803Trigger", GadgetActorProxy)
Q7408803Trigger.defaultAlias = "Q7408803Trigger"
local Q74088ClientConfig = require("Quest/Client/Q74088ClientConfig")

local this
local subIDs = Q74088ClientConfig.SubIDs
local npcs = Q74088ClientConfig.Npcs
local points = Q74088ClientConfig.Points

function Q7408803Trigger:OnPostDataPrepare()
    print("[MainId: 74088][Trigger: Q7408803Trigger] OnPostDataPrepare")
    this = self
end

function Q7408803Trigger:OnPostComponentPrepare()
    print("[MainId: 74088][Trigger: Q7408803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408803Trigger:TriggerIn()
    print("[MainId: 74088][Trigger: Q7408803Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408803)
    this:DestroySelf()
end

function Q7408803Trigger:PreTriggerIn()
    print("[MainId: 74088][Trigger: Q7408803Trigger] PreTriggerIn")
end

function Q7408803Trigger:LightUpTriggerIn()
    print("[MainId: 74088][Trigger: Q7408803Trigger] LightUpTriggerIn")
end

function Q7408803Trigger:TriggerOut()
    print("[MainId: 74088][Trigger: Q7408803Trigger] TriggerOut")
end

return Q7408803Trigger
