require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110084Trigger = class("Q7110084Trigger", GadgetActorProxy)
Q7110084Trigger.defaultAlias = "Q7110084Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110084Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110084Trigger] OnPostDataPrepare")
    this = self
end

function Q7110084Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110084Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110084Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110084Trigger] TriggerIn")
    actorMgr:GetActor("71100"):QuestNarratorTask(datas.NarratorWithId84)
    actorUtils.FinishQuestID(false, 7110084)
    this:DestroySelf()
end

function Q7110084Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110084Trigger] PreTriggerIn")
end

function Q7110084Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110084Trigger] LightUpTriggerIn")
end

function Q7110084Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110084Trigger] TriggerOut")
end

return Q7110084Trigger
