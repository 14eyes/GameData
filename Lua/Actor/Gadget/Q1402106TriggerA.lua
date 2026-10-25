require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402106TriggerA = class("Q1402106TriggerA", GadgetActorProxy)
Q1402106TriggerA.defaultAlias = "Q1402106TriggerA"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402106TriggerA:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402106TriggerA] OnPostDataPrepare")
    this = self
end

function Q1402106TriggerA:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402106TriggerA] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402106TriggerA:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerA] TriggerIn")
    local actor = actorMgr:GetActor("14021")
    actor:QuestNarratorTask(datas.NarratorWithId1402106A)
    actor:EnterSceneLookCameraByParam(datas.SceneLookCameraParamsA)
    this:DestroySelf()
end

function Q1402106TriggerA:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerA] PreTriggerIn")
end

function Q1402106TriggerA:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402106TriggerA] LightUpTriggerIn")
end

function Q1402106TriggerA:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402106TriggerA] TriggerOut")
end

return Q1402106TriggerA
