require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600006Trigger = class("Q600006Trigger", GadgetActorProxy)
Q600006Trigger.defaultAlias = "Q600006Trigger"
local Q6000ClientConfig = require("Quest/Client/Q6000ClientConfig")

local this
local subIDs = Q6000ClientConfig.SubIDs
local datas = Q6000ClientConfig.Datas
local npcs = Q6000ClientConfig.Npcs
local points = Q6000ClientConfig.Points

function Q600006Trigger:OnPostDataPrepare()
    print("Q600006Trigger - OnPostDataPrepare")
    this = self
end

function Q600006Trigger:OnPostComponentPrepare()
    print("Q600006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6000)
end

function Q600006Trigger:TriggerIn()
    print("Q600006Trigger - TriggerIn")
    actorMgr:GetActor("6000"):EnterSceneLookCamera({x = 1663.155, y = 227.964, z = 9464.991}, 0, 2, false, false)
    actorMgr:GetActor("6000"):QuestNarratorTask(datas.NarratorWithId_600001, nil)
    actorMgr:GetActor("6000"):SetQuestVarByMainId(0, 1)
    this:DestroySelf()
end

function Q600006Trigger:PreTriggerIn()
    print("Q600006Trigger - PreTriggerIn")
end

function Q600006Trigger:LightUpTriggerIn()
    print("Q600006Trigger - LightUpTriggerIn")
end

function Q600006Trigger:TriggerOut()
    print("Q600006Trigger - TriggerOut")
end

return Q600006Trigger
