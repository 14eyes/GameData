require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400109Trigger = class("Q1400109Trigger", GadgetActorProxy)
Q1400109Trigger.defaultAlias = "Q1400109Trigger"
local Q14001ClientConfig = require("Quest/Client/Q14001ClientConfig")

local this
local subIDs = Q14001ClientConfig.SubIDs
local npcs = Q14001ClientConfig.Npcs
local points = Q14001ClientConfig.Points
local datas = Q14001ClientConfig.Datas

function Q1400109Trigger:OnPostDataPrepare()
    print("[MainId: 14001][Trigger: Q1400109Trigger] OnPostDataPrepare")
    this = self
end

function Q1400109Trigger:OnPostComponentPrepare()
    print("[MainId: 14001][Trigger: Q1400109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400109Trigger:TriggerIn()
    print("[MainId: 14001][Trigger: Q1400109Trigger] TriggerIn")
    actorMgr:GetActor("14001"):NarratorOnlyTaskByData(datas.NarratorWithId02, function(arg1)
        actorUtils.FinishQuestID(false, 1400109)
    end, 14001)

    this:DestroySelf()
end

function Q1400109Trigger:PreTriggerIn()
    print("[MainId: 14001][Trigger: Q1400109Trigger] PreTriggerIn")
end

function Q1400109Trigger:LightUpTriggerIn()
    print("[MainId: 14001][Trigger: Q1400109Trigger] LightUpTriggerIn")
end

function Q1400109Trigger:TriggerOut()
    print("[MainId: 14001][Trigger: Q1400109Trigger] TriggerOut")
end

return Q1400109Trigger
