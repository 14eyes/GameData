require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400109Trigger1 = class("Q1400109Trigger1", GadgetActorProxy)
Q1400109Trigger1.defaultAlias = "Q1400109Trigger1"
local Q14001ClientConfig = require("Quest/Client/Q14001ClientConfig")

local this
local subIDs = Q14001ClientConfig.SubIDs
local npcs = Q14001ClientConfig.Npcs
local points = Q14001ClientConfig.Points
local datas = Q14001ClientConfig.Datas

function Q1400109Trigger1:OnPostDataPrepare()
    print("[MainId: 14001][Trigger: Q1400109Trigger1] OnPostDataPrepare")
    this = self
end

function Q1400109Trigger1:OnPostComponentPrepare()
    print("[MainId: 14001][Trigger: Q1400109Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400109Trigger1:TriggerIn()
    print("[MainId: 14001][Trigger: Q1400109Trigger1] TriggerIn")
    actorMgr:GetActor("14001"):NarratorOnlyTaskByData(datas.NarratorWithId01, function(arg1)
        actorUtils.FinishQuestID(false, 1400109)
    end, 14001)

    this:DestroySelf()
end

function Q1400109Trigger1:PreTriggerIn()
    print("[MainId: 14001][Trigger: Q1400109Trigger1] PreTriggerIn")
end

function Q1400109Trigger1:LightUpTriggerIn()
    print("[MainId: 14001][Trigger: Q1400109Trigger1] LightUpTriggerIn")
end

function Q1400109Trigger1:TriggerOut()
    print("[MainId: 14001][Trigger: Q1400109Trigger1] TriggerOut")
end

return Q1400109Trigger1
