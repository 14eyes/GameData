require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612504Trigger = class("Q7612504Trigger", GadgetActorProxy)
Q7612504Trigger.defaultAlias = "Q7612504Trigger"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612504Trigger:OnPostDataPrepare()
    print("Q7612504Trigger - OnPostDataPrepare")
    this = self
end

function Q7612504Trigger:OnPostComponentPrepare()
    print("Q7612504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612504Trigger:TriggerIn()
    print("Q7612504Trigger - TriggerIn")
    actorMgr:GetActor("76125"):RequestInteraction(npcs.Npc1319.alias, "", true)
    this:DestroySelf()
end

function Q7612504Trigger:PreTriggerIn()
    print("Q7612504Trigger - PreTriggerIn")
end

function Q7612504Trigger:LightUpTriggerIn()
    print("Q7612504Trigger - LightUpTriggerIn")
end

function Q7612504Trigger:TriggerOut()
    print("Q7612504Trigger - TriggerOut")
end

return Q7612504Trigger
