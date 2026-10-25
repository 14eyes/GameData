require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70546trigger = class("Q70546trigger", GadgetActorProxy)
Q70546trigger.defaultAlias = "Q70546trigger"
local Q70546ClientConfig = require("Quest/Client/Q70546ClientConfig")

local this
local subIDs = Q70546ClientConfig.SubIDs
local npcs = Q70546ClientConfig.Npcs
local points = Q70546ClientConfig.Points

function Q70546trigger:OnPostDataPrepare()
    print("Q70546trigger - OnPostDataPrepare")
    this = self
end

function Q70546trigger:OnPostComponentPrepare()
    print("Q70546trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70546)
end

function Q70546trigger:TriggerIn()
    print("Q70546trigger - TriggerIn")
    actorMgr:GetActor("70546"):RequestInteraction(npcs.Npc30610.alias, "", true)
    this:DestroySelf()
end

function Q70546trigger:PreTriggerIn()
    print("Q70546trigger - PreTriggerIn")
end

function Q70546trigger:LightUpTriggerIn()
    print("Q70546trigger - LightUpTriggerIn")
end

function Q70546trigger:TriggerOut()
    print("Q70546trigger - TriggerOut")
end

return Q70546trigger
