require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404903_EnterRegion = class("Q7404903_EnterRegion", GadgetActorProxy)
Q7404903_EnterRegion.defaultAlias = "Q7404903_EnterRegion"
local Q74049ClientConfig = require("Quest/Client/Q74049ClientConfig")

local this
local subIDs = Q74049ClientConfig.SubIDs
local npcs = Q74049ClientConfig.Npcs
local points = Q74049ClientConfig.Points

function Q7404903_EnterRegion:OnPostDataPrepare()
    print("[MainId: 74049][Trigger: Q7404903_EnterRegion] OnPostDataPrepare")
    this = self
end

function Q7404903_EnterRegion:OnPostComponentPrepare()
    print("[MainId: 74049][Trigger: Q7404903_EnterRegion] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404903_EnterRegion:TriggerIn()
    print("[MainId: 74049][Trigger: Q7404903_EnterRegion] TriggerIn")
    actorUtils.FinishQuestID(false, 7404903)
    this:DestroySelf()
end

function Q7404903_EnterRegion:PreTriggerIn()
    print("[MainId: 74049][Trigger: Q7404903_EnterRegion] PreTriggerIn")
end

function Q7404903_EnterRegion:LightUpTriggerIn()
    print("[MainId: 74049][Trigger: Q7404903_EnterRegion] LightUpTriggerIn")
end

function Q7404903_EnterRegion:TriggerOut()
    print("[MainId: 74049][Trigger: Q7404903_EnterRegion] TriggerOut")
end

return Q7404903_EnterRegion
