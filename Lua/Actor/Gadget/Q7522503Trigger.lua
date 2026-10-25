require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7522503Trigger = class("Q7522503Trigger", GadgetActorProxy)
Q7522503Trigger.defaultAlias = "Q7522503Trigger"
local Q75225ClientConfig = require("Quest/Client/Q75225ClientConfig")

local this
local subIDs = Q75225ClientConfig.SubIDs
local datas = Q75225ClientConfig.Datas
local npcs = Q75225ClientConfig.Npcs
local points = Q75225ClientConfig.Points

function Q7522503Trigger:OnPostDataPrepare()
    print("Q7522503Trigger - OnPostDataPrepare")
    this = self
end

function Q7522503Trigger:OnPostComponentPrepare()
    print("Q7522503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75225)
end

function Q7522503Trigger:TriggerIn()
    print("Q7522503Trigger - TriggerIn")
    actorMgr:GetActor("75225"):RequestInteraction(npcs.Npc6332.alias, "", true)
    this:DestroySelf()
end

function Q7522503Trigger:PreTriggerIn()
    print("Q7522503Trigger - PreTriggerIn")
end

function Q7522503Trigger:LightUpTriggerIn()
    print("Q7522503Trigger - LightUpTriggerIn")
end

function Q7522503Trigger:TriggerOut()
    print("Q7522503Trigger - TriggerOut")
end

return Q7522503Trigger
