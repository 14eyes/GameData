require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601007Trigger = class("Q1601007Trigger", GadgetActorProxy)
Q1601007Trigger.defaultAlias = "Q1601007Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601007Trigger:OnPostDataPrepare()
    print("Q1601007Trigger - OnPostDataPrepare")
    this = self
end

function Q1601007Trigger:OnPostComponentPrepare()
    print("Q1601007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601007Trigger:TriggerIn()
    print("Q1601007Trigger - TriggerIn")
    actorMgr:GetActor("16010"):QuestNarratorTask(datas.NarratorWithId_1601005, nil)
    this:DestroySelf()
end

function Q1601007Trigger:PreTriggerIn()
    print("Q1601007Trigger - PreTriggerIn")
end

function Q1601007Trigger:LightUpTriggerIn()
    print("Q1601007Trigger - LightUpTriggerIn")
end

function Q1601007Trigger:TriggerOut()
    print("Q1601007Trigger - TriggerOut")
end

return Q1601007Trigger
