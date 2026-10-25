require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600707Trigger = class("Q7600707Trigger", GadgetActorProxy)
Q7600707Trigger.defaultAlias = "Q7600707Trigger"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600707Trigger:OnPostDataPrepare()
    print("Q7600707Trigger - OnPostDataPrepare")
    this = self
end

function Q7600707Trigger:OnPostComponentPrepare()
    print("Q7600707Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600707Trigger:TriggerIn()
    print("Q7600707Trigger - TriggerIn")
    actorMgr:GetActor("76007"):QuestNarratorTask(datas.NarratorWithId_760070136, nil)
    this:DestroySelf()
end

function Q7600707Trigger:PreTriggerIn()
    print("Q7600707Trigger - PreTriggerIn")
end

function Q7600707Trigger:LightUpTriggerIn()
    print("Q7600707Trigger - LightUpTriggerIn")
end

function Q7600707Trigger:TriggerOut()
    print("Q7600707Trigger - TriggerOut")
end

return Q7600707Trigger
