require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408801Trigger = class("Q7408801Trigger", GadgetActorProxy)
Q7408801Trigger.defaultAlias = "Q7408801Trigger"
local Q74088ClientConfig = require("Quest/Client/Q74088ClientConfig")

local this
local subIDs = Q74088ClientConfig.SubIDs
local npcs = Q74088ClientConfig.Npcs
local points = Q74088ClientConfig.Points

function Q7408801Trigger:OnPostDataPrepare()
    print("[MainId: 74088][Trigger: Q7408801Trigger] OnPostDataPrepare")
    this = self
end

function Q7408801Trigger:OnPostComponentPrepare()
    print("[MainId: 74088][Trigger: Q7408801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408801Trigger:TriggerIn()
    print("[MainId: 74088][Trigger: Q7408801Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408801)
    this:DestroySelf()
end

function Q7408801Trigger:PreTriggerIn()
    print("[MainId: 74088][Trigger: Q7408801Trigger] PreTriggerIn")
end

function Q7408801Trigger:LightUpTriggerIn()
    print("[MainId: 74088][Trigger: Q7408801Trigger] LightUpTriggerIn")
end

function Q7408801Trigger:TriggerOut()
    print("[MainId: 74088][Trigger: Q7408801Trigger] TriggerOut")
end

return Q7408801Trigger
