require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601019Trigger = class("Q1601019Trigger", GadgetActorProxy)
Q1601019Trigger.defaultAlias = "Q1601019Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601019Trigger:OnPostDataPrepare()
    print("Q1601019Trigger - OnPostDataPrepare")
    this = self
end

function Q1601019Trigger:OnPostComponentPrepare()
    print("Q1601019Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601019Trigger:TriggerIn()
    print("Q1601019Trigger - TriggerIn")
    actorMgr:GetActor("16010"):QuestNarratorTask(datas.NarratorWithId_1601011, nil)
    this:DestroySelf()
end

function Q1601019Trigger:PreTriggerIn()
    print("Q1601019Trigger - PreTriggerIn")
end

function Q1601019Trigger:LightUpTriggerIn()
    print("Q1601019Trigger - LightUpTriggerIn")
end

function Q1601019Trigger:TriggerOut()
    print("Q1601019Trigger - TriggerOut")
end

return Q1601019Trigger
