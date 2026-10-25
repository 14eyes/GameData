require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710601Trigger = class("Q7710601Trigger", GadgetActorProxy)
Q7710601Trigger.defaultAlias = "Q7710601Trigger"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710601Trigger:OnPostDataPrepare()
    print("Q7710601Trigger - OnPostDataPrepare")
    this = self
end

function Q7710601Trigger:OnPostComponentPrepare()
    print("Q7710601Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(74, 77, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710601Trigger:TriggerIn()
    print("Q7710601Trigger - TriggerIn")
    actorMgr:GetActor("77106"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710601Trigger:PreTriggerIn()
    print("Q7710601Trigger - PreTriggerIn")
end

function Q7710601Trigger:LightUpTriggerIn()
    print("Q7710601Trigger - LightUpTriggerIn")
end

function Q7710601Trigger:TriggerOut()
    print("Q7710601Trigger - TriggerOut")
end

return Q7710601Trigger
