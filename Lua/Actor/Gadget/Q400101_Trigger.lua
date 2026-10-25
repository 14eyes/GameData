require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400101_Trigger = class("Q400101_Trigger", GadgetActorProxy)
Q400101_Trigger.defaultAlias = "Q400101_Trigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400101_Trigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400101_Trigger] OnPostDataPrepare")
    this = self
end

function Q400101_Trigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400101_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400101_Trigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400101_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 400101)
    actorMgr:GetActor("4001"):NarratorOnlyTaskByData(datas.Narrator_400101, nil, 4001)
    actorUtils.FinishQuestID(true, 400105)
    this:DestroySelf()
end

function Q400101_Trigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400101_Trigger] PreTriggerIn")
end

function Q400101_Trigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400101_Trigger] LightUpTriggerIn")
end

function Q400101_Trigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400101_Trigger] TriggerOut")
end

return Q400101_Trigger
