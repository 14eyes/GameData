require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503410Trigger = class("Q1503410Trigger", GadgetActorProxy)
Q1503410Trigger.defaultAlias = "Q1503410Trigger"
local Q15034ClientConfig = require("Quest/Client/Q15034ClientConfig")

local this
local subIDs = Q15034ClientConfig.SubIDs
local datas = Q15034ClientConfig.Datas
local npcs = Q15034ClientConfig.Npcs
local points = Q15034ClientConfig.Points

function Q1503410Trigger:OnPostDataPrepare()
    print("Q1503410Trigger - OnPostDataPrepare")
    this = self
end

function Q1503410Trigger:OnPostComponentPrepare()
    print("Q1503410Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15034)
end

function Q1503410Trigger:TriggerIn()
    print("Q1503410Trigger - TriggerIn")
    actorMgr:GetActor("15034"):QuestNarratorTask(datas.NarratorWithId_1503402, function(arg1)
        actorUtils.FinishQuestID(false, 1503410)
        this:DestroySelf()
    end)
end

function Q1503410Trigger:PreTriggerIn()
    print("Q1503410Trigger - PreTriggerIn")
end

function Q1503410Trigger:LightUpTriggerIn()
    print("Q1503410Trigger - LightUpTriggerIn")
end

function Q1503410Trigger:TriggerOut()
    print("Q1503410Trigger - TriggerOut")
end

return Q1503410Trigger
