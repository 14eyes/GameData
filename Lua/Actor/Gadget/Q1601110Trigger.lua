require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601110Trigger = class("Q1601110Trigger", GadgetActorProxy)
Q1601110Trigger.defaultAlias = "Q1601110Trigger"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601110Trigger:OnPostDataPrepare()
    print("Q1601110Trigger - OnPostDataPrepare")
    this = self
end

function Q1601110Trigger:OnPostComponentPrepare()
    print("Q1601110Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601110Trigger:TriggerIn()
    print("Q1601110Trigger - TriggerIn")
    actorMgr:GetActor("16011"):QuestNarratorTask(datas.NarratorWithId_1601106, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {1601110})
        this:DestroySelf()
    end)
end

function Q1601110Trigger:PreTriggerIn()
    print("Q1601110Trigger - PreTriggerIn")
end

function Q1601110Trigger:LightUpTriggerIn()
    print("Q1601110Trigger - LightUpTriggerIn")
end

function Q1601110Trigger:TriggerOut()
    print("Q1601110Trigger - TriggerOut")
end

return Q1601110Trigger
