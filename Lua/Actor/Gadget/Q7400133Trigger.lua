require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400133Trigger = class("Q7400133Trigger", GadgetActorProxy)
Q7400133Trigger.defaultAlias = "Q7400133Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points

function Q7400133Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7400133Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400133Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("74001"):RequestInteraction(npcs.Npc20995Data.alias)
end

function Q7400133Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7400133Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7400133Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7400133Trigger
