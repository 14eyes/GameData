require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110304Trigger = class("Q7110304Trigger", GadgetActorProxy)
Q7110304Trigger.defaultAlias = "Q7110304Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110304Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110304Trigger] OnPostDataPrepare")
    this = self
end

function Q7110304Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110304Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110304Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110304Trigger] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110382, nil, 71103)
    actorUtils.FinishQuestID(false, 7110304)
    this:DestroySelf()
end

function Q7110304Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110304Trigger] PreTriggerIn")
end

function Q7110304Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110304Trigger] LightUpTriggerIn")
end

function Q7110304Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110304Trigger] TriggerOut")
end

return Q7110304Trigger
