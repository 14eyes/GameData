require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513305_Trigger = class("Q7513305_Trigger", GadgetActorProxy)
Q7513305_Trigger.defaultAlias = "Q7513305_Trigger"
local Q75133ClientConfig = require("Quest/Client/Q75133ClientConfig")

local this
local subIDs = Q75133ClientConfig.SubIDs
local npcs = Q75133ClientConfig.Npcs
local points = Q75133ClientConfig.Points

function Q7513305_Trigger:OnPostDataPrepare()
    print("Q7513305_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513305_Trigger:OnPostComponentPrepare()
    print("Q7513305_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75133)
end

function Q7513305_Trigger:TriggerIn()
    print("Q7513305_Trigger - TriggerIn")
    actorMgr:GetActor("75133"):RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Q7513305_Trigger:PreTriggerIn()
    print("Q7513305_Trigger - PreTriggerIn")
end

function Q7513305_Trigger:LightUpTriggerIn()
    print("Q7513305_Trigger - LightUpTriggerIn")
end

function Q7513305_Trigger:TriggerOut()
    print("Q7513305_Trigger - TriggerOut")
end

return Q7513305_Trigger
