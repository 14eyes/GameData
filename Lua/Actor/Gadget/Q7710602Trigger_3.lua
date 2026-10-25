require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710602Trigger_3 = class("Q7710602Trigger_3", GadgetActorProxy)
Q7710602Trigger_3.defaultAlias = "Q7710602Trigger_3"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710602Trigger_3:OnPostDataPrepare()
    print("Q7710602Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q7710602Trigger_3:OnPostComponentPrepare()
    print("Q7710602Trigger_3 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(48, 16, 56, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710602Trigger_3:TriggerIn()
    print("Q7710602Trigger_3 - TriggerIn")
    actorMgr:GetActor("77106"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710602Trigger_3:PreTriggerIn()
    print("Q7710602Trigger_3 - PreTriggerIn")
end

function Q7710602Trigger_3:LightUpTriggerIn()
    print("Q7710602Trigger_3 - LightUpTriggerIn")
end

function Q7710602Trigger_3:TriggerOut()
    print("Q7710602Trigger_3 - TriggerOut")
end

return Q7710602Trigger_3
