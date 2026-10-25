require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71536trigger = class("Q71536trigger", GadgetActorProxy)
Q71536trigger.defaultAlias = "Q71536trigger"
local Q71536ClientConfig = require("Quest/Client/Q71536ClientConfig")

local this
local subIDs = Q71536ClientConfig.SubIDs
local npcs = Q71536ClientConfig.Npcs
local points = Q71536ClientConfig.Points

function Q71536trigger:OnPostDataPrepare()
    print("Q71536trigger - OnPostDataPrepare")
    this = self
end

function Q71536trigger:OnPostComponentPrepare()
    print("Q71536trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71536)
end

function Q71536trigger:TriggerIn()
    print("Q71536trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71536"):RequestInteraction(npcs.Npc30682.alias, "", true)
end

function Q71536trigger:PreTriggerIn()
    print("Q71536trigger - PreTriggerIn")
end

function Q71536trigger:LightUpTriggerIn()
    print("Q71536trigger - LightUpTriggerIn")
end

function Q71536trigger:TriggerOut()
    print("Q71536trigger - TriggerOut")
end

return Q71536trigger
