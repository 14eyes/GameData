require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408701Trigger = class("Q7408701Trigger", GadgetActorProxy)
Q7408701Trigger.defaultAlias = "Q7408701Trigger"
local Q74087ClientConfig = require("Quest/Client/Q74087ClientConfig")

local this
local subIDs = Q74087ClientConfig.SubIDs
local npcs = Q74087ClientConfig.Npcs
local points = Q74087ClientConfig.Points

function Q7408701Trigger:OnPostDataPrepare()
    print("[MainId: 74087][Trigger: Q7408701Trigger] OnPostDataPrepare")
    this = self
end

function Q7408701Trigger:OnPostComponentPrepare()
    print("[MainId: 74087][Trigger: Q7408701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408701Trigger:TriggerIn()
    print("[MainId: 74087][Trigger: Q7408701Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408701)
    this:DestroySelf()
end

function Q7408701Trigger:PreTriggerIn()
    print("[MainId: 74087][Trigger: Q7408701Trigger] PreTriggerIn")
end

function Q7408701Trigger:LightUpTriggerIn()
    print("[MainId: 74087][Trigger: Q7408701Trigger] LightUpTriggerIn")
end

function Q7408701Trigger:TriggerOut()
    print("[MainId: 74087][Trigger: Q7408701Trigger] TriggerOut")
end

return Q7408701Trigger
