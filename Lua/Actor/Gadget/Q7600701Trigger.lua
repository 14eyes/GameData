require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600701Trigger = class("Q7600701Trigger", GadgetActorProxy)
Q7600701Trigger.defaultAlias = "Q7600701Trigger"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600701Trigger:OnPostDataPrepare()
    print("Q7600701Trigger - OnPostDataPrepare")
    this = self
end

function Q7600701Trigger:OnPostComponentPrepare()
    print("Q7600701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600701Trigger:TriggerIn()
    print("Q7600701Trigger - TriggerIn")
    actorMgr:GetActor("76007"):QuestNarratorTask(datas.NarratorWithId_760070102, nil)
    this:DestroySelf()
end

function Q7600701Trigger:PreTriggerIn()
    print("Q7600701Trigger - PreTriggerIn")
end

function Q7600701Trigger:LightUpTriggerIn()
    print("Q7600701Trigger - LightUpTriggerIn")
end

function Q7600701Trigger:TriggerOut()
    print("Q7600701Trigger - TriggerOut")
end

return Q7600701Trigger
