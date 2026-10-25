require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600709Trigger = class("Q7600709Trigger", GadgetActorProxy)
Q7600709Trigger.defaultAlias = "Q7600709Trigger"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600709Trigger:OnPostDataPrepare()
    print("Q7600709Trigger - OnPostDataPrepare")
    this = self
end

function Q7600709Trigger:OnPostComponentPrepare()
    print("Q7600709Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600709Trigger:TriggerIn()
    print("Q7600709Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7600709)
end

function Q7600709Trigger:PreTriggerIn()
    print("Q7600709Trigger - PreTriggerIn")
end

function Q7600709Trigger:LightUpTriggerIn()
    print("Q7600709Trigger - LightUpTriggerIn")
end

function Q7600709Trigger:TriggerOut()
    print("Q7600709Trigger - TriggerOut")
end

return Q7600709Trigger
