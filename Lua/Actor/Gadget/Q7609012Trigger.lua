require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609012Trigger = class("Q7609012Trigger", GadgetActorProxy)
Q7609012Trigger.defaultAlias = "Q7609012Trigger"
local Q76090ClientConfig = require("Quest/Client/Q76090ClientConfig")

local this
local subIDs = Q76090ClientConfig.SubIDs
local npcs = Q76090ClientConfig.Npcs
local points = Q76090ClientConfig.Points

function Q7609012Trigger:OnPostDataPrepare()
    print("Q7609012Trigger - OnPostDataPrepare")
    this = self
end

function Q7609012Trigger:OnPostComponentPrepare()
    print("Q7609012Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76090)
end

function Q7609012Trigger:TriggerIn()
    print("Q7609012Trigger - TriggerIn")
    actorMgr:GetActor("76090"):RequestInteraction(npcs.Npc22264.alias, "", true)
    this:DestroySelf()
end

function Q7609012Trigger:PreTriggerIn()
    print("Q7609012Trigger - PreTriggerIn")
end

function Q7609012Trigger:LightUpTriggerIn()
    print("Q7609012Trigger - LightUpTriggerIn")
end

function Q7609012Trigger:TriggerOut()
    print("Q7609012Trigger - TriggerOut")
end

return Q7609012Trigger
