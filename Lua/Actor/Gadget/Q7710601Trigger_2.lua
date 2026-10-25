require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710601Trigger_2 = class("Q7710601Trigger_2", GadgetActorProxy)
Q7710601Trigger_2.defaultAlias = "Q7710601Trigger_2"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710601Trigger_2:OnPostDataPrepare()
    print("Q7710601Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7710601Trigger_2:OnPostComponentPrepare()
    print("Q7710601Trigger_2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(16, 46, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710601Trigger_2:TriggerIn()
    print("Q7710601Trigger_2 - TriggerIn")
    actorMgr:GetActor("77106"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710601Trigger_2:PreTriggerIn()
    print("Q7710601Trigger_2 - PreTriggerIn")
end

function Q7710601Trigger_2:LightUpTriggerIn()
    print("Q7710601Trigger_2 - LightUpTriggerIn")
end

function Q7710601Trigger_2:TriggerOut()
    print("Q7710601Trigger_2 - TriggerOut")
end

return Q7710601Trigger_2
