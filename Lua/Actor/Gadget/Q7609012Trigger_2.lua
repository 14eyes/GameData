require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609012Trigger_2 = class("Q7609012Trigger_2", GadgetActorProxy)
Q7609012Trigger_2.defaultAlias = "Q7609012Trigger_2"
local Q76090ClientConfig = require("Quest/Client/Q76090ClientConfig")

local this
local subIDs = Q76090ClientConfig.SubIDs
local npcs = Q76090ClientConfig.Npcs
local points = Q76090ClientConfig.Points

function Q7609012Trigger_2:OnPostDataPrepare()
    print("Q7609012Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7609012Trigger_2:OnPostComponentPrepare()
    print("Q7609012Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76090)
end

function Q7609012Trigger_2:TriggerIn()
    print("Q7609012Trigger_2 - TriggerIn")
    actorMgr:GetActor("76090"):RequestInteraction(npcs.Npc22264.alias, "", true)
    this:DestroySelf()
end

function Q7609012Trigger_2:PreTriggerIn()
    print("Q7609012Trigger_2 - PreTriggerIn")
end

function Q7609012Trigger_2:LightUpTriggerIn()
    print("Q7609012Trigger_2 - LightUpTriggerIn")
end

function Q7609012Trigger_2:TriggerOut()
    print("Q7609012Trigger_2 - TriggerOut")
end

return Q7609012Trigger_2
