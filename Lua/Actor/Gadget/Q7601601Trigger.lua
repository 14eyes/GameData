require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601601Trigger = class("Q7601601Trigger", GadgetActorProxy)
Q7601601Trigger.defaultAlias = "Q7601601Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601601Trigger:OnPostDataPrepare()
    print("Q7601601Trigger - OnPostDataPrepare")
    this = self
end

function Q7601601Trigger:OnPostComponentPrepare()
    print("Q7601601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601601Trigger:TriggerIn()
    print("Q7601601Trigger - TriggerIn")
    actorMgr:GetActor("76016"):QuestNarratorTask(datas.NarratorWithId_7601601, nil)
    actorUtils.FinishQuestID(false, 7601601)
    this:DestroySelf()
end

function Q7601601Trigger:PreTriggerIn()
    print("Q7601601Trigger - PreTriggerIn")
end

function Q7601601Trigger:LightUpTriggerIn()
    print("Q7601601Trigger - LightUpTriggerIn")
end

function Q7601601Trigger:TriggerOut()
    print("Q7601601Trigger - TriggerOut")
end

return Q7601601Trigger
