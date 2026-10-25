require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7371001Trigger = class("Q7371001Trigger", GadgetActorProxy)
Q7371001Trigger.defaultAlias = "Q7371001Trigger"
local Q73710ClientConfig = require("Quest/Client/Q73710ClientConfig")

local this
local subIDs = Q73710ClientConfig.SubIDs
local datas = Q73710ClientConfig.Datas
local npcs = Q73710ClientConfig.Npcs
local points = Q73710ClientConfig.Points

function Q7371001Trigger:OnPostDataPrepare()
    print("Q7371001Trigger - OnPostDataPrepare")
    this = self
end

function Q7371001Trigger:OnPostComponentPrepare()
    print("Q7371001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73710)
end

function Q7371001Trigger:TriggerIn()
    print("Q7371001Trigger - TriggerIn")
    actorMgr:GetActor("73710"):RequestInteraction(npcs.Npc30981.alias, "", true)
    this:DestroySelf()
end

function Q7371001Trigger:PreTriggerIn()
    print("Q7371001Trigger - PreTriggerIn")
end

function Q7371001Trigger:LightUpTriggerIn()
    print("Q7371001Trigger - LightUpTriggerIn")
end

function Q7371001Trigger:TriggerOut()
    print("Q7371001Trigger - TriggerOut")
end

return Q7371001Trigger
