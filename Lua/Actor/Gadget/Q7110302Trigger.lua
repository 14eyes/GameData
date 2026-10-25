require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110302Trigger = class("Q7110302Trigger", GadgetActorProxy)
Q7110302Trigger.defaultAlias = "Q7110302Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110302Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110302Trigger] OnPostDataPrepare")
    this = self
end

function Q7110302Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110302Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110302Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110302Trigger] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110381, nil, 71103)
    actorUtils.FinishQuestID(false, 7110302)
    this:DestroySelf()
end

function Q7110302Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110302Trigger] PreTriggerIn")
end

function Q7110302Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110302Trigger] LightUpTriggerIn")
end

function Q7110302Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110302Trigger] TriggerOut")
end

return Q7110302Trigger
