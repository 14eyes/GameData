require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112702Trigger = class("Q7112702Trigger", GadgetActorProxy)
Q7112702Trigger.defaultAlias = "Q7112702Trigger"
local Q71127ClientConfig = require("Quest/Client/Q71127ClientConfig")

local this
local subIDs = Q71127ClientConfig.SubIDs
local npcs = Q71127ClientConfig.Npcs
local points = Q71127ClientConfig.Points
local datas = Q71127ClientConfig.Datas

function Q7112702Trigger:OnPostDataPrepare()
    print("[MainId: 71127][Trigger: Q7112702Trigger] OnPostDataPrepare")
    this = self
end

function Q7112702Trigger:OnPostComponentPrepare()
    print("[MainId: 71127][Trigger: Q7112702Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7112702Trigger:TriggerIn()
    print("[MainId: 71127][Trigger: Q7112702Trigger] TriggerIn")
    actorMgr:GetActor("71127"):QuestNarratorTask(datas.NarratorWithId_02)
    actorUtils.FinishQuestID(false, 7112702)
    this:DestroySelf()
end

function Q7112702Trigger:PreTriggerIn()
    print("[MainId: 71127][Trigger: Q7112702Trigger] PreTriggerIn")
end

function Q7112702Trigger:LightUpTriggerIn()
    print("[MainId: 71127][Trigger: Q7112702Trigger] LightUpTriggerIn")
end

function Q7112702Trigger:TriggerOut()
    print("[MainId: 71127][Trigger: Q7112702Trigger] TriggerOut")
end

return Q7112702Trigger
