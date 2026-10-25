require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400615Trigger = class("Q7400615Trigger", GadgetActorProxy)
Q7400615Trigger.defaultAlias = "Q7400615Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400615Trigger:OnPostDataPrepare()
    print("Q7400615Trigger - OnPostDataPrepare")
    this = self
end

function Q7400615Trigger:OnPostComponentPrepare()
    print("Q7400615Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400615Trigger:TriggerIn()
    print("Q7400615Trigger - TriggerIn")
    actorMgr:GetActor("74006"):RequestInteraction(npcs.Npc20985Data.alias)
    this:DestroySelf()
end

function Q7400615Trigger:PreTriggerIn()
    print("Q7400615Trigger - PreTriggerIn")
end

function Q7400615Trigger:LightUpTriggerIn()
    print("Q7400615Trigger - LightUpTriggerIn")
end

function Q7400615Trigger:TriggerOut()
    print("Q7400615Trigger - TriggerOut")
end

return Q7400615Trigger
