require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102904_NarratorTrigger = class("Q1102904_NarratorTrigger", GadgetActorProxy)
Q1102904_NarratorTrigger.defaultAlias = "Q1102904_NarratorTrigger"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local points = Q11029ClientConfig.Points
local datas = Q11029ClientConfig.Datas

function Q1102904_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 11029][Trigger: Q1102904_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q1102904_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 11029][Trigger: Q1102904_NarratorTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102904_NarratorTrigger:TriggerIn()
    print("[MainId: 11029][Trigger: Q1102904_NarratorTrigger] TriggerIn")
    local actor = actorMgr:GetActor("11029")
    actor:NarratorOnlyTaskByData(datas.Narrator_1102906, nil, 11029)
    actor:EnterSceneLookCamera({x = 192.11, y = 43.282, z = 756.062}, 1, 2, false, false)
    this:DestroySelf()
end

function Q1102904_NarratorTrigger:PreTriggerIn()
    print("[MainId: 11029][Trigger: Q1102904_NarratorTrigger] PreTriggerIn")
end

function Q1102904_NarratorTrigger:LightUpTriggerIn()
    print("[MainId: 11029][Trigger: Q1102904_NarratorTrigger] LightUpTriggerIn")
end

function Q1102904_NarratorTrigger:TriggerOut()
    print("[MainId: 11029][Trigger: Q1102904_NarratorTrigger] TriggerOut")
end

return Q1102904_NarratorTrigger
