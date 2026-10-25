require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600709Trigger_3 = class("Q7600709Trigger_3", GadgetActorProxy)
Q7600709Trigger_3.defaultAlias = "Q7600709Trigger_3"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600709Trigger_3:OnPostDataPrepare()
    print("Q7600709Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q7600709Trigger_3:OnPostComponentPrepare()
    print("Q7600709Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600709Trigger_3:TriggerIn()
    print("Q7600709Trigger_3 - TriggerIn")
    actorMgr:GetActor("76007"):QuestNarratorTask(datas.NarratorWithId_760070141, nil)
    actorUtils.FinishQuestID(false, 7600709)
    this:DestroySelf()
end

function Q7600709Trigger_3:PreTriggerIn()
    print("Q7600709Trigger_3 - PreTriggerIn")
end

function Q7600709Trigger_3:LightUpTriggerIn()
    print("Q7600709Trigger_3 - LightUpTriggerIn")
end

function Q7600709Trigger_3:TriggerOut()
    print("Q7600709Trigger_3 - TriggerOut")
end

return Q7600709Trigger_3
