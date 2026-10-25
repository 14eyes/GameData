require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601001Trigger = class("Q1601001Trigger", GadgetActorProxy)
Q1601001Trigger.defaultAlias = "Q1601001Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601001Trigger:OnPostDataPrepare()
    print("Q1601001Trigger - OnPostDataPrepare")
    this = self
end

function Q1601001Trigger:OnPostComponentPrepare()
    print("Q1601001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(32.812874, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601001Trigger:TriggerIn()
    print("Q1601001Trigger - TriggerIn")
    actorMgr:GetActor("16010"):QuestNarratorTask(datas.NarratorWithId_1601001, nil)
    this:DestroySelf()
end

function Q1601001Trigger:PreTriggerIn()
    print("Q1601001Trigger - PreTriggerIn")
end

function Q1601001Trigger:LightUpTriggerIn()
    print("Q1601001Trigger - LightUpTriggerIn")
end

function Q1601001Trigger:TriggerOut()
    print("Q1601001Trigger - TriggerOut")
end

return Q1601001Trigger
