require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600709Trigger_1 = class("Q7600709Trigger_1", GadgetActorProxy)
Q7600709Trigger_1.defaultAlias = "Q7600709Trigger_1"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600709Trigger_1:OnPostDataPrepare()
    print("Q7600709Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7600709Trigger_1:OnPostComponentPrepare()
    print("Q7600709Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600709Trigger_1:TriggerIn()
    print("Q7600709Trigger_1 - TriggerIn")
    actorMgr:GetActor("76007"):QuestNarratorTask(datas.NarratorWithId_760070138, nil)
    this:DestroySelf()
end

function Q7600709Trigger_1:PreTriggerIn()
    print("Q7600709Trigger_1 - PreTriggerIn")
end

function Q7600709Trigger_1:LightUpTriggerIn()
    print("Q7600709Trigger_1 - LightUpTriggerIn")
end

function Q7600709Trigger_1:TriggerOut()
    print("Q7600709Trigger_1 - TriggerOut")
end

return Q7600709Trigger_1
