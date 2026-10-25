require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1602016Trigger = class("Q1602016Trigger", GadgetActorProxy)
Q1602016Trigger.defaultAlias = "Q1602016Trigger"
local Q16020ClientConfig = require("Quest/Client/Q16020ClientConfig")

local this
local subIDs = Q16020ClientConfig.SubIDs
local datas = Q16020ClientConfig.Datas
local npcs = Q16020ClientConfig.Npcs
local points = Q16020ClientConfig.Points

function Q1602016Trigger:OnPostDataPrepare()
    print("Q1602016Trigger - OnPostDataPrepare")
    this = self
end

function Q1602016Trigger:OnPostComponentPrepare()
    print("Q1602016Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16020)
end

function Q1602016Trigger:TriggerIn()
    print("Q1602016Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1602016})
    actorMgr:GetActor("16020"):QuestNarratorTask(datas.NarratorWithId_1602002, nil)
    this:DestroySelf()
end

function Q1602016Trigger:PreTriggerIn()
    print("Q1602016Trigger - PreTriggerIn")
end

function Q1602016Trigger:LightUpTriggerIn()
    print("Q1602016Trigger - LightUpTriggerIn")
end

function Q1602016Trigger:TriggerOut()
    print("Q1602016Trigger - TriggerOut")
end

return Q1602016Trigger
