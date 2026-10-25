require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504105Trigger = class("Q1504105Trigger", GadgetActorProxy)
Q1504105Trigger.defaultAlias = "Q1504105Trigger"
local Q15041ClientConfig = require("Quest/Client/Q15041ClientConfig")

local this
local subIDs = Q15041ClientConfig.SubIDs
local datas = Q15041ClientConfig.Datas
local npcs = Q15041ClientConfig.Npcs
local points = Q15041ClientConfig.Points

function Q1504105Trigger:OnPostDataPrepare()
    print("Q1504105Trigger - OnPostDataPrepare")
    this = self
end

function Q1504105Trigger:OnPostComponentPrepare()
    print("Q1504105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15041)
end

function Q1504105Trigger:TriggerIn()
    print("Q1504105Trigger - TriggerIn")
    actorMgr:GetActor("15041"):QuestNarratorTask(datas.NarratorWithId_1504101, nil)
    this:DestroySelf()
end

function Q1504105Trigger:PreTriggerIn()
    print("Q1504105Trigger - PreTriggerIn")
end

function Q1504105Trigger:LightUpTriggerIn()
    print("Q1504105Trigger - LightUpTriggerIn")
end

function Q1504105Trigger:TriggerOut()
    print("Q1504105Trigger - TriggerOut")
end

return Q1504105Trigger
