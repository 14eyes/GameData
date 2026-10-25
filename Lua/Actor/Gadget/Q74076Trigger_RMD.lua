require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74076Trigger_RMD = class("Q74076Trigger_RMD", GadgetActorProxy)
Q74076Trigger_RMD.defaultAlias = "Q74076Trigger_RMD"
local Q74076ClientConfig = require("Quest/Client/Q74076ClientConfig")

local this
local subIDs = Q74076ClientConfig.SubIDs
local npcs = Q74076ClientConfig.Npcs
local datas = Q74076ClientConfig.Datas

function Q74076Trigger_RMD:OnPostDataPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger_RMD] OnPostDataPrepare")
    this = self
end

function Q74076Trigger_RMD:OnPostComponentPrepare()
    print("[MainId: 74076][Trigger: Q74076Trigger_RMD] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 2, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74076Trigger_RMD:TriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_RMD] TriggerIn")
    actorMgr:GetActor("74076"):NarratorOnlyTaskByData(datas.NarratorWithIdClose)
    this:DestroySelf()
end

function Q74076Trigger_RMD:PreTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_RMD] PreTriggerIn")
end

function Q74076Trigger_RMD:LightUpTriggerIn()
    print("[MainId: 74076][Trigger: Q74076Trigger_RMD] LightUpTriggerIn")
end

function Q74076Trigger_RMD:TriggerOut()
    print("[MainId: 74076][Trigger: Q74076Trigger_RMD] TriggerOut")
end

return Q74076Trigger_RMD
