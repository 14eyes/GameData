require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302503 = class("Q73025Trigger_7302503", GadgetActorProxy)
Q73025Trigger_7302503.defaultAlias = "Q73025Trigger_7302503"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302503:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302503] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302503:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302503] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(80, 20, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302503:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302503] TriggerIn")
    actorMgr:GetActor("73025"):NarratorOnlyTask(datas.NarratorTable_ontheway3, nil, "")
    actorUtils.FinishQuestID(false, 7302503)
    this:DestroySelf()
end

function Q73025Trigger_7302503:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302503] TriggerOut")
end

return Q73025Trigger_7302503
