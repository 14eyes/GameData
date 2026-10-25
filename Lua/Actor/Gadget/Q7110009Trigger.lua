require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110009Trigger = class("Q7110009Trigger", GadgetActorProxy)
Q7110009Trigger.defaultAlias = "Q7110009Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110009Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110009Trigger] OnPostDataPrepare")
    this = self
end

function Q7110009Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110009Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110009Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110009Trigger] TriggerIn")
    actorMgr:GetActor("71100"):QuestNarratorTask(nil)
    actorUtils.FinishQuestID(false, 7110009)
    this:DestroySelf()
end

function Q7110009Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110009Trigger] PreTriggerIn")
end

function Q7110009Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110009Trigger] LightUpTriggerIn")
end

function Q7110009Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110009Trigger] TriggerOut")
end

return Q7110009Trigger
