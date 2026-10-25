require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402702_Trigger = class("Q1402702_Trigger", GadgetActorProxy)
Q1402702_Trigger.defaultAlias = "Q1402702_Trigger"
local Q14027ClientConfig = require("Quest/Client/Q14027ClientConfig")

local this
local subIDs = Q14027ClientConfig.SubIDs
local npcs = Q14027ClientConfig.Npcs

function Q1402702_Trigger:OnPostDataPrepare()
    print("Q1402702_Trigger - OnPostDataPrepare")
    this = self
end

function Q1402702_Trigger:OnPostComponentPrepare()
    print("Q1402702_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14027)
end

function Q1402702_Trigger:TriggerIn()
    print("Q1402702_Trigger - TriggerIn")
    actorMgr:GetActor("14027"):RequestInteraction(npcs.Npc5027.alias, "", true)
    this:DestroySelf()
end

function Q1402702_Trigger:PreTriggerIn()
    print("Q1402702_Trigger - PreTriggerIn")
end

function Q1402702_Trigger:LightUpTriggerIn()
    print("Q1402702_Trigger - LightUpTriggerIn")
end

function Q1402702_Trigger:TriggerOut()
    print("Q1402702_Trigger - TriggerOut")
end

return Q1402702_Trigger
