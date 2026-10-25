require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1602002Trigger_1 = class("Q1602002Trigger_1", GadgetActorProxy)
Q1602002Trigger_1.defaultAlias = "Q1602002Trigger_1"
local Q16020ClientConfig = require("Quest/Client/Q16020ClientConfig")

local this
local subIDs = Q16020ClientConfig.SubIDs
local datas = Q16020ClientConfig.Datas
local npcs = Q16020ClientConfig.Npcs
local points = Q16020ClientConfig.Points

function Q1602002Trigger_1:OnPostDataPrepare()
    print("Q1602002Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1602002Trigger_1:OnPostComponentPrepare()
    print("Q1602002Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16020)
end

function Q1602002Trigger_1:TriggerIn()
    print("Q1602002Trigger_1 - TriggerIn")
    actorMgr:GetActor("16020"):QuestNarratorTask(datas.NarratorWithId_1602003, function(arg1)
        this:DestroySelf()
    end)
end

function Q1602002Trigger_1:PreTriggerIn()
    print("Q1602002Trigger_1 - PreTriggerIn")
end

function Q1602002Trigger_1:LightUpTriggerIn()
    print("Q1602002Trigger_1 - LightUpTriggerIn")
end

function Q1602002Trigger_1:TriggerOut()
    print("Q1602002Trigger_1 - TriggerOut")
end

return Q1602002Trigger_1
