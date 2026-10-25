require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403214Trigger = class("Q1403214Trigger", GadgetActorProxy)
Q1403214Trigger.defaultAlias = "Q1403214Trigger"
local Q14032ClientConfig = require("Quest/Client/Q14032ClientConfig")

local this
local subIDs = Q14032ClientConfig.SubIDs
local datas = Q14032ClientConfig.Datas
local npcs = Q14032ClientConfig.Npcs
local points = Q14032ClientConfig.Points

function Q1403214Trigger:OnPostDataPrepare()
    print("Q1403214Trigger - OnPostDataPrepare")
    this = self
end

function Q1403214Trigger:OnPostComponentPrepare()
    print("Q1403214Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14032)
end

function Q1403214Trigger:TriggerIn()
    print("Q1403214Trigger - TriggerIn")
    actorMgr:GetActor("14032"):QuestNarratorTask(datas.NarratorWithId_1403206, nil)
    actorUtils.FinishQuestID(false, 1403214)
    this:DestroySelf()
end

function Q1403214Trigger:PreTriggerIn()
    print("Q1403214Trigger - PreTriggerIn")
end

function Q1403214Trigger:LightUpTriggerIn()
    print("Q1403214Trigger - LightUpTriggerIn")
end

function Q1403214Trigger:TriggerOut()
    print("Q1403214Trigger - TriggerOut")
end

return Q1403214Trigger
