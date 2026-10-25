require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7012008Trigger = class("Q7012008Trigger", GadgetActorProxy)
Q7012008Trigger.defaultAlias = "Q7012008Trigger"
local Q70120ClientConfig = require("Quest/Client/Q70120ClientConfig")

local this
local subIDs = Q70120ClientConfig.SubIDs
local npcs = Q70120ClientConfig.Npcs
local points = Q70120ClientConfig.Points

function Q7012008Trigger:OnPostDataPrepare()
    print("Q7012008Trigger - OnPostDataPrepare")
    this = self
end

function Q7012008Trigger:OnPostComponentPrepare()
    print("Q7012008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70120)
end

function Q7012008Trigger:TriggerIn()
    print("Q7012008Trigger - TriggerIn")
    actorMgr:GetActor("70120"):RequestInteraction(npcs.Npc17217.alias, "", true)
    this:DestroySelf()
end

function Q7012008Trigger:PreTriggerIn()
    print("Q7012008Trigger - PreTriggerIn")
end

function Q7012008Trigger:LightUpTriggerIn()
    print("Q7012008Trigger - LightUpTriggerIn")
end

function Q7012008Trigger:TriggerOut()
    print("Q7012008Trigger - TriggerOut")
end

return Q7012008Trigger
