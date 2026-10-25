require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513604_Trigger = class("Q7513604_Trigger", GadgetActorProxy)
Q7513604_Trigger.defaultAlias = "Q7513604_Trigger"
local Q75136ClientConfig = require("Quest/Client/Q75136ClientConfig")

local this
local subIDs = Q75136ClientConfig.SubIDs
local npcs = Q75136ClientConfig.Npcs

function Q7513604_Trigger:OnPostDataPrepare()
    print("Q7513604_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513604_Trigger:OnPostComponentPrepare()
    print("Q7513604_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.064059, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75136)
end

function Q7513604_Trigger:TriggerIn()
    print("Q7513604_Trigger - TriggerIn")
    actorMgr:GetActor("75136"):RequestInteraction(npcs.Npc21583Data.alias, "", true)
end

function Q7513604_Trigger:PreTriggerIn()
    print("Q7513604_Trigger - PreTriggerIn")
end

function Q7513604_Trigger:LightUpTriggerIn()
    print("Q7513604_Trigger - LightUpTriggerIn")
end

function Q7513604_Trigger:TriggerOut()
    print("Q7513604_Trigger - TriggerOut")
end

return Q7513604_Trigger
