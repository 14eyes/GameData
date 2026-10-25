require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710602Trigger_5 = class("Q7710602Trigger_5", GadgetActorProxy)
Q7710602Trigger_5.defaultAlias = "Q7710602Trigger_5"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710602Trigger_5:OnPostDataPrepare()
    print("Q7710602Trigger_5 - OnPostDataPrepare")
    this = self
end

function Q7710602Trigger_5:OnPostComponentPrepare()
    print("Q7710602Trigger_5 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(16, 46, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710602Trigger_5:TriggerIn()
    print("Q7710602Trigger_5 - TriggerIn")
    actorMgr:GetActor("77106"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710602Trigger_5:PreTriggerIn()
    print("Q7710602Trigger_5 - PreTriggerIn")
end

function Q7710602Trigger_5:LightUpTriggerIn()
    print("Q7710602Trigger_5 - LightUpTriggerIn")
end

function Q7710602Trigger_5:TriggerOut()
    print("Q7710602Trigger_5 - TriggerOut")
end

return Q7710602Trigger_5
