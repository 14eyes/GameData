require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302504_02small = class("Q73025Trigger_7302504_02small", GadgetActorProxy)
Q73025Trigger_7302504_02small.defaultAlias = "Q73025Trigger_7302504_02small"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302504_02small:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_02small] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302504_02small:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_02small] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302504_02small:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_02small] TriggerIn")
    actorUtils.FinishQuestID(false, 7302504)
    this:DestroySelf()
end

function Q73025Trigger_7302504_02small:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302504_02small] TriggerOut")
end

return Q73025Trigger_7302504_02small
