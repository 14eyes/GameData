require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401802Trigger = class("Q401802Trigger", GadgetActorProxy)
Q401802Trigger.defaultAlias = "Q401802Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401802Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401802Trigger] OnPostDataPrepare")
    this = self
end

function Q401802Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401802Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 4, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401802Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401802Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4018")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId401802)
    actor:EnterSceneLookCamera({x = 4414.116, y = 121.6, z = 4585.449}, 0, 3, false, false)
    this:DestroySelf()
end

function Q401802Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401802Trigger] PreTriggerIn")
end

function Q401802Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401802Trigger] LightUpTriggerIn")
end

function Q401802Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401802Trigger] TriggerOut")
end

return Q401802Trigger
