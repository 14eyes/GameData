require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600029Trigger = class("Q600029Trigger", GadgetActorProxy)
Q600029Trigger.defaultAlias = "Q600029Trigger"
local Q6000ClientConfig = require("Quest/Client/Q6000ClientConfig")

local this
local subIDs = Q6000ClientConfig.SubIDs
local datas = Q6000ClientConfig.Datas
local npcs = Q6000ClientConfig.Npcs
local points = Q6000ClientConfig.Points

function Q600029Trigger:OnPostDataPrepare()
    print("Q600029Trigger - OnPostDataPrepare")
    this = self
end

function Q600029Trigger:OnPostComponentPrepare()
    print("Q600029Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6000)
end

function Q600029Trigger:TriggerIn()
    print("Q600029Trigger - TriggerIn")
    actorMgr:GetActor("6000"):QuestNarratorTask(datas.NarratorWithId_600004, nil)
    actorMgr:GetActor("6000"):EnterSceneLookCamera({x = 1951.648, y = 245.138, z = 10555.69}, 1, 5, true, false)
    actorMgr:GetActor("6000"):SetQuestVarByMainId(1, 1)
    this:DestroySelf()
end

function Q600029Trigger:PreTriggerIn()
    print("Q600029Trigger - PreTriggerIn")
end

function Q600029Trigger:LightUpTriggerIn()
    print("Q600029Trigger - LightUpTriggerIn")
end

function Q600029Trigger:TriggerOut()
    print("Q600029Trigger - TriggerOut")
end

return Q600029Trigger
