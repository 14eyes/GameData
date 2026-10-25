require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513706_Trigger = class("Q7513706_Trigger", GadgetActorProxy)
Q7513706_Trigger.defaultAlias = "Q7513706_Trigger"
local Q75137ClientConfig = require("Quest/Client/Q75137ClientConfig")

local this
local subIDs = Q75137ClientConfig.SubIDs
local npcs = Q75137ClientConfig.Npcs
local points = Q75137ClientConfig.Points

function Q7513706_Trigger:OnPostDataPrepare()
    print("Q7513706_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513706_Trigger:OnPostComponentPrepare()
    print("Q7513706_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75137)
end

function Q7513706_Trigger:TriggerIn()
    print("Q7513706_Trigger - TriggerIn")
    actorMgr:GetActor("75137"):RequestInteraction(npcs.Npc21604Data.alias, "", true)
end

function Q7513706_Trigger:PreTriggerIn()
    print("Q7513706_Trigger - PreTriggerIn")
end

function Q7513706_Trigger:LightUpTriggerIn()
    print("Q7513706_Trigger - LightUpTriggerIn")
end

function Q7513706_Trigger:TriggerOut()
    print("Q7513706_Trigger - TriggerOut")
end

return Q7513706_Trigger
