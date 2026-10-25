require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400001Trigger = class("Q1400001Trigger", GadgetActorProxy)
Q1400001Trigger.defaultAlias = "Q1400001Trigger"
local Q14000ClientConfig = require("Quest/Client/Q14000ClientConfig")

local this
local subIDs = Q14000ClientConfig.SubIDs
local npcs = Q14000ClientConfig.Npcs
local points = Q14000ClientConfig.Points
local datas = Q14000ClientConfig.Datas

function Q1400001Trigger:OnPostDataPrepare()
    print("[MainId: 14000][Trigger: Q1400001Trigger] OnPostDataPrepare")
    this = self
end

function Q1400001Trigger:OnPostComponentPrepare()
    print("[MainId: 14000][Trigger: Q1400001Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400001Trigger:TriggerIn()
    print("[MainId: 14000][Trigger: Q1400001Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14000")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_1, nil, 14000)
    actor:EnterSceneLookCamera({x = 3472.404, y = 424.91, z = 4585.911}, 0, 1.5, false, false)
    this:DestroySelf()
end

function Q1400001Trigger:PreTriggerIn()
    print("[MainId: 14000][Trigger: Q1400001Trigger] PreTriggerIn")
end

function Q1400001Trigger:LightUpTriggerIn()
    print("[MainId: 14000][Trigger: Q1400001Trigger] LightUpTriggerIn")
end

function Q1400001Trigger:TriggerOut()
    print("[MainId: 14000][Trigger: Q1400001Trigger] TriggerOut")
end

return Q1400001Trigger
