require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710601Trigger_1 = class("Q7710601Trigger_1", GadgetActorProxy)
Q7710601Trigger_1.defaultAlias = "Q7710601Trigger_1"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710601Trigger_1:OnPostDataPrepare()
    print("Q7710601Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7710601Trigger_1:OnPostComponentPrepare()
    print("Q7710601Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 20, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710601Trigger_1:TriggerIn()
    print("Q7710601Trigger_1 - TriggerIn")
    actorMgr:GetActor("77106"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710601Trigger_1:PreTriggerIn()
    print("Q7710601Trigger_1 - PreTriggerIn")
end

function Q7710601Trigger_1:LightUpTriggerIn()
    print("Q7710601Trigger_1 - LightUpTriggerIn")
end

function Q7710601Trigger_1:TriggerOut()
    print("Q7710601Trigger_1 - TriggerOut")
end

return Q7710601Trigger_1
