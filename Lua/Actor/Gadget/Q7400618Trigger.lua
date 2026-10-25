require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400618Trigger = class("Q7400618Trigger", GadgetActorProxy)
Q7400618Trigger.defaultAlias = "Q7400618Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400618Trigger:OnPostDataPrepare()
    print("Q7400618Trigger - OnPostDataPrepare")
    this = self
end

function Q7400618Trigger:OnPostComponentPrepare()
    print("Q7400618Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400618Trigger:TriggerIn()
    print("Q7400618Trigger - TriggerIn")
    actorMgr:GetActor("74006"):NarratorOnlyTaskByData(datas.NarratorWithId_melusineguide)
    this:DestroySelf()
end

function Q7400618Trigger:PreTriggerIn()
    print("Q7400618Trigger - PreTriggerIn")
end

function Q7400618Trigger:LightUpTriggerIn()
    print("Q7400618Trigger - LightUpTriggerIn")
end

function Q7400618Trigger:TriggerOut()
    print("Q7400618Trigger - TriggerOut")
end

return Q7400618Trigger
