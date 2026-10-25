require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402106TriggerB = class("Q1402106TriggerB", GadgetActorProxy)
Q1402106TriggerB.defaultAlias = "Q1402106TriggerB"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402106TriggerB:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402106TriggerB] OnPostDataPrepare")
    this = self
end

function Q1402106TriggerB:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402106TriggerB] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402106TriggerB:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerB] TriggerIn")
    local actor = actorMgr:GetActor("14021")
    actor:QuestNarratorTask(datas.NarratorWithId1402106B)
    actor:EnterSceneLookCameraByParam(datas.SceneLookCameraParamsB)
    this:DestroySelf()
end

function Q1402106TriggerB:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerB] PreTriggerIn")
end

function Q1402106TriggerB:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerB] LightUpTriggerIn")
end

function Q1402106TriggerB:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402106TriggerB] TriggerOut")
end

return Q1402106TriggerB
