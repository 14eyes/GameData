require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400622Trigger = class("Q7400622Trigger", GadgetActorProxy)
Q7400622Trigger.defaultAlias = "Q7400622Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400622Trigger:OnPostDataPrepare()
    print("Q7400622Trigger - OnPostDataPrepare")
    this = self
end

function Q7400622Trigger:OnPostComponentPrepare()
    print("Q7400622Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400622Trigger:TriggerIn()
    print("Q7400622Trigger - TriggerIn")
    actorMgr:GetActor("74006"):RequestInteraction(npcs.Npc20985Data.alias)
    this:DestroySelf()
end

function Q7400622Trigger:PreTriggerIn()
    print("Q7400622Trigger - PreTriggerIn")
end

function Q7400622Trigger:LightUpTriggerIn()
    print("Q7400622Trigger - LightUpTriggerIn")
end

function Q7400622Trigger:TriggerOut()
    print("Q7400622Trigger - TriggerOut")
end

return Q7400622Trigger
