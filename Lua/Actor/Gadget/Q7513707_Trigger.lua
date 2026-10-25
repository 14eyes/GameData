require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513707_Trigger = class("Q7513707_Trigger", GadgetActorProxy)
Q7513707_Trigger.defaultAlias = "Q7513707_Trigger"
local Q75137ClientConfig = require("Quest/Client/Q75137ClientConfig")

local this
local subIDs = Q75137ClientConfig.SubIDs
local npcs = Q75137ClientConfig.Npcs
local points = Q75137ClientConfig.Points

function Q7513707_Trigger:OnPostDataPrepare()
    print("Q7513707_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513707_Trigger:OnPostComponentPrepare()
    print("Q7513707_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75137)
end

function Q7513707_Trigger:TriggerIn()
    print("Q7513707_Trigger - TriggerIn")
    actorMgr:GetActor("75137"):RequestInteraction(npcs.Npc21603Data.alias, "", false)
end

function Q7513707_Trigger:PreTriggerIn()
    print("Q7513707_Trigger - PreTriggerIn")
end

function Q7513707_Trigger:LightUpTriggerIn()
    print("Q7513707_Trigger - LightUpTriggerIn")
end

function Q7513707_Trigger:TriggerOut()
    print("Q7513707_Trigger - TriggerOut")
end

return Q7513707_Trigger
