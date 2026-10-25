require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403215Trigger = class("Q1403215Trigger", GadgetActorProxy)
Q1403215Trigger.defaultAlias = "Q1403215Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403215Trigger:OnPostDataPrepare()
    print("Q1403215Trigger - OnPostDataPrepare")
    this = self
end

function Q1403215Trigger:OnPostComponentPrepare()
    print("Q1403215Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403215Trigger:TriggerIn()
    print("Q1403215Trigger - TriggerIn")
    actorMgr:GetActor("14032"):QuestNarratorTask(datas.NarratorWithId_1403207, nil)
    actorUtils.FinishQuestID(false, 1403215)
    this:DestroySelf()
end

function Q1403215Trigger:PreTriggerIn()
    print("Q1403215Trigger - PreTriggerIn")
end

function Q1403215Trigger:LightUpTriggerIn()
    print("Q1403215Trigger - LightUpTriggerIn")
end

function Q1403215Trigger:TriggerOut()
    print("Q1403215Trigger - TriggerOut")
end

return Q1403215Trigger
