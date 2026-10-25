require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710602Trigger_4 = class("Q7710602Trigger_4", GadgetActorProxy)
Q7710602Trigger_4.defaultAlias = "Q7710602Trigger_4"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710602Trigger_4:OnPostDataPrepare()
    print("Q7710602Trigger_4 - OnPostDataPrepare")
    this = self
end

function Q7710602Trigger_4:OnPostComponentPrepare()
    print("Q7710602Trigger_4 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 17, 58, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710602Trigger_4:TriggerIn()
    print("Q7710602Trigger_4 - TriggerIn")
    actorMgr:GetActor("77106"):RequestInteraction(npcs.Npc7653.alias, "", true)
end

function Q7710602Trigger_4:PreTriggerIn()
    print("Q7710602Trigger_4 - PreTriggerIn")
end

function Q7710602Trigger_4:LightUpTriggerIn()
    print("Q7710602Trigger_4 - LightUpTriggerIn")
end

function Q7710602Trigger_4:TriggerOut()
    print("Q7710602Trigger_4 - TriggerOut")
end

return Q7710602Trigger_4
