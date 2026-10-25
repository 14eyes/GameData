require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110050Trigger = class("Q7110050Trigger", GadgetActorProxy)
Q7110050Trigger.defaultAlias = "Q7110050Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110050Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110050Trigger] OnPostDataPrepare")
    this = self
end

function Q7110050Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110050Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110050Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110050Trigger] TriggerIn")
    actorMgr:GetActor("71100"):QuestNarratorTask(datas.Narrator_7110008)
    actorUtils.FinishQuestID(false, 7110050)
    this:DestroySelf()
end

function Q7110050Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110050Trigger] PreTriggerIn")
end

function Q7110050Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110050Trigger] LightUpTriggerIn")
end

function Q7110050Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110050Trigger] TriggerOut")
end

return Q7110050Trigger
