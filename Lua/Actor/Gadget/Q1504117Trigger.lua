require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504117Trigger = class("Q1504117Trigger", GadgetActorProxy)
Q1504117Trigger.defaultAlias = "Q1504117Trigger"
local Q15041ClientConfig = require("Quest/Client/Q15041ClientConfig")

local this
local subIDs = Q15041ClientConfig.SubIDs
local datas = Q15041ClientConfig.Datas
local npcs = Q15041ClientConfig.Npcs
local points = Q15041ClientConfig.Points

function Q1504117Trigger:OnPostDataPrepare()
    print("Q1504117Trigger - OnPostDataPrepare")
    this = self
end

function Q1504117Trigger:OnPostComponentPrepare()
    print("Q1504117Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(27.841831, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15041)
end

function Q1504117Trigger:TriggerIn()
    print("Q1504117Trigger - TriggerIn")
    actorMgr:GetActor("15041"):QuestNarratorTask(datas.NarratorWithId_1504105, nil)
    this:DestroySelf()
end

function Q1504117Trigger:PreTriggerIn()
    print("Q1504117Trigger - PreTriggerIn")
end

function Q1504117Trigger:LightUpTriggerIn()
    print("Q1504117Trigger - LightUpTriggerIn")
end

function Q1504117Trigger:TriggerOut()
    print("Q1504117Trigger - TriggerOut")
end

return Q1504117Trigger
