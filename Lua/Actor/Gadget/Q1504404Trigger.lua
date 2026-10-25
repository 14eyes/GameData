require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504404Trigger = class("Q1504404Trigger", GadgetActorProxy)
Q1504404Trigger.defaultAlias = "Q1504404Trigger"
local Q15044ClientConfig = require("Quest/Client/Q15044ClientConfig")

local this
local subIDs = Q15044ClientConfig.SubIDs
local datas = Q15044ClientConfig.Datas
local npcs = Q15044ClientConfig.Npcs
local points = Q15044ClientConfig.Points

function Q1504404Trigger:OnPostDataPrepare()
    print("Q1504404Trigger - OnPostDataPrepare")
    this = self
end

function Q1504404Trigger:OnPostComponentPrepare()
    print("Q1504404Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15044)
end

function Q1504404Trigger:TriggerIn()
    print("Q1504404Trigger - TriggerIn")
    actorMgr:GetActor("15044"):QuestNarratorTask(datas.NarratorWithId_1504402, nil)
    this:DestroySelf()
end

function Q1504404Trigger:PreTriggerIn()
    print("Q1504404Trigger - PreTriggerIn")
end

function Q1504404Trigger:LightUpTriggerIn()
    print("Q1504404Trigger - LightUpTriggerIn")
end

function Q1504404Trigger:TriggerOut()
    print("Q1504404Trigger - TriggerOut")
end

return Q1504404Trigger
