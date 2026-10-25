require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110001Trigger = class("Q7110001Trigger", GadgetActorProxy)
Q7110001Trigger.defaultAlias = "Q7110001Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110001Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110001Trigger] OnPostDataPrepare")
    this = self
end

function Q7110001Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110001Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110001Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110001Trigger] TriggerIn")
    actorMgr:GetActor("71100"):NarratorOnlyTaskByData(datas.NarratorWithId02)
    actorUtils.FinishQuestID(false, 7110001)
    this:DestroySelf()
end

function Q7110001Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110001Trigger] PreTriggerIn")
end

function Q7110001Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110001Trigger] LightUpTriggerIn")
end

function Q7110001Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110001Trigger] TriggerOut")
end

return Q7110001Trigger
