require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422801Trigger = class("Q7422801Trigger", GadgetActorProxy)
Q7422801Trigger.defaultAlias = "Q7422801Trigger"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422801Trigger:OnPostDataPrepare()
    print("Q7422801Trigger - OnPostDataPrepare")
    this = self
end

function Q7422801Trigger:OnPostComponentPrepare()
    print("Q7422801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422801Trigger:TriggerIn()
    print("Q7422801Trigger - TriggerIn")
    actorMgr:GetActor("74228"):QuestNarratorTask(datas.NarratorWithId_7422801, nil)
    actorMgr:GetActor("74228"):EnterSceneLookCamera({x = 2989.225, y = 443.488, z = 4721.454}, 0, 2, true, false)
    actorUtils.FinishQuestID(false, 7422801)
    this:DestroySelf()
end

function Q7422801Trigger:PreTriggerIn()
    print("Q7422801Trigger - PreTriggerIn")
end

function Q7422801Trigger:LightUpTriggerIn()
    print("Q7422801Trigger - LightUpTriggerIn")
end

function Q7422801Trigger:TriggerOut()
    print("Q7422801Trigger - TriggerOut")
end

return Q7422801Trigger
