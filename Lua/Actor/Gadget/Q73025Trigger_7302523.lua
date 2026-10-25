require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302523 = class("Q73025Trigger_7302523", GadgetActorProxy)
Q73025Trigger_7302523.defaultAlias = "Q73025Trigger_7302523"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302523:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302523] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302523:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302523] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 5, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302523:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302523] TriggerIn")
    actorMgr:GetActor("73025"):NarratorOnlyTask(datas.NarratorTable_ontheway5, nil, "")
    actorUtils.FinishQuestID(false, 7302523)
    this:DestroySelf()
end

function Q73025Trigger_7302523:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302523] TriggerOut")
end

return Q73025Trigger_7302523
