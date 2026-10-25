require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500502Trigger = class("Q1500502Trigger", GadgetActorProxy)
Q1500502Trigger.defaultAlias = "Q1500502Trigger"
local Q15005ClientConfig = require("Quest/Client/Q15005ClientConfig")

local this
local subIDs = Q15005ClientConfig.SubIDs
local datas = Q15005ClientConfig.Datas
local npcs = Q15005ClientConfig.Npcs
local points = Q15005ClientConfig.Points

function Q1500502Trigger:OnPostDataPrepare()
    print("Q1500502Trigger - OnPostDataPrepare")
    this = self
end

function Q1500502Trigger:OnPostComponentPrepare()
    print("Q1500502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(34, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15005)
end

function Q1500502Trigger:TriggerIn()
    print("Q1500502Trigger - TriggerIn")
    actorMgr:GetActor("15005"):QuestNarratorTask(datas.NarratorWithId_1500501, nil)
    this:DestroySelf()
end

function Q1500502Trigger:PreTriggerIn()
    print("Q1500502Trigger - PreTriggerIn")
end

function Q1500502Trigger:LightUpTriggerIn()
    print("Q1500502Trigger - LightUpTriggerIn")
end

function Q1500502Trigger:TriggerOut()
    print("Q1500502Trigger - TriggerOut")
end

return Q1500502Trigger
