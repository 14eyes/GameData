require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402005TriggerFinish = class("Q1402005TriggerFinish", GadgetActorProxy)
Q1402005TriggerFinish.defaultAlias = "Q1402005TriggerFinish"
local Q14020ClientConfig = require("Quest/Client/Q14020ClientConfig")

local this
local subIDs = Q14020ClientConfig.SubIDs
local npcs = Q14020ClientConfig.Npcs
local points = Q14020ClientConfig.Points
local datas = Q14020ClientConfig.Datas

function Q1402005TriggerFinish:OnPostDataPrepare()
    print("[MainId: 14020][Trigger: Q1402005TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q1402005TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 14020][Trigger: Q1402005TriggerFinish] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(16, 60, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1402005TriggerFinish:TriggerIn()
    print("[MainId: 14020][Trigger: Q1402005TriggerFinish] TriggerIn")
    actorMgr:GetActor("14020"):QuestNarratorTask(datas.NarratorWithId1402001)
    actorUtils.FinishQuestID(false, 1402005)
    this:DestroySelf()
end

function Q1402005TriggerFinish:PreTriggerIn()
    print("[MainId: 14020][Trigger: Q1402005TriggerFinish] PreTriggerIn")
end

function Q1402005TriggerFinish:LightUpTriggerIn()
    print("[MainId: 14020][Trigger: Q1402005TriggerFinish] LightUpTriggerIn")
end

function Q1402005TriggerFinish:TriggerOut()
    print("[MainId: 14020][Trigger: Q1402005TriggerFinish] TriggerOut")
end

return Q1402005TriggerFinish
