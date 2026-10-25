require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006737Trigger = class("Q7006737Trigger", GadgetActorProxy)
Q7006737Trigger.defaultAlias = "Q7006737Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006737Trigger:OnPostDataPrepare()
    print("Q7006737Trigger - OnPostDataPrepare")
    this = self
end

function Q7006737Trigger:OnPostComponentPrepare()
    print("Q7006737Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006737Trigger:TriggerIn()
    print("Q7006737Trigger - TriggerIn")
    actorMgr:GetActor("70067"):QuestNarratorTask(datas.NarratorWithId_7006737, nil)
    actorUtils.FinishQuestID(false, 7006737)
    this:DestroySelf()
end

function Q7006737Trigger:PreTriggerIn()
    print("Q7006737Trigger - PreTriggerIn")
end

function Q7006737Trigger:LightUpTriggerIn()
    print("Q7006737Trigger - LightUpTriggerIn")
end

function Q7006737Trigger:TriggerOut()
    print("Q7006737Trigger - TriggerOut")
end

return Q7006737Trigger
