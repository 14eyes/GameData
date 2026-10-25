require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302504_01big = class("Q73025Trigger_7302504_01big", GadgetActorProxy)
Q73025Trigger_7302504_01big.defaultAlias = "Q73025Trigger_7302504_01big"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302504_01big:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_01big] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302504_01big:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_01big] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(250, 100, 200, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302504_01big:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_01big] TriggerIn")
    actorMgr:GetActor("73025"):NarratorOnlyTask(datas.NarratorTable_entervana2, nil, "")
    this:DestroySelf()
end

function Q73025Trigger_7302504_01big:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_01big] TriggerOut")
end

return Q73025Trigger_7302504_01big
