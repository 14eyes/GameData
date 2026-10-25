require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403221Trigger = class("Q1403221Trigger", GadgetActorProxy)
Q1403221Trigger.defaultAlias = "Q1403221Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403221Trigger:OnPostDataPrepare()
    print("Q1403221Trigger - OnPostDataPrepare")
    this = self
end

function Q1403221Trigger:OnPostComponentPrepare()
    print("Q1403221Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403221Trigger:TriggerIn()
    print("Q1403221Trigger - TriggerIn")
    actorMgr:GetActor("14032"):QuestNarratorTask(datas.NarratorWithId_1403203, function(arg1)
        actorUtils.FinishQuestID(false, 1403221)
    end)

    this:DestroySelf()
end

function Q1403221Trigger:PreTriggerIn()
    print("Q1403221Trigger - PreTriggerIn")
end

function Q1403221Trigger:LightUpTriggerIn()
    print("Q1403221Trigger - LightUpTriggerIn")
end

function Q1403221Trigger:TriggerOut()
    print("Q1403221Trigger - TriggerOut")
end

return Q1403221Trigger
