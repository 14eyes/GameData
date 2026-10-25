require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302524_12 = class("Q73025Trigger_7302524_12", GadgetActorProxy)
Q73025Trigger_7302524_12.defaultAlias = "Q73025Trigger_7302524_12"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302524_12:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302524_12] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302524_12:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302524_12] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(400, 200, 200, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302524_12:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302524_12] TriggerIn")
    actorMgr:GetActor("73025"):NarratorOnlyTask(datas.NarratorTable_entervana1, nil, "")
    actorUtils.FinishQuestID(false, 7302512)
    this:DestroySelf()
end

function Q73025Trigger_7302524_12:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302524_12] TriggerOut")
end

return Q73025Trigger_7302524_12
