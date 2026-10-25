require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302508 = class("Q73025Trigger_7302508", GadgetActorProxy)
Q73025Trigger_7302508.defaultAlias = "Q73025Trigger_7302508"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302508:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302508] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302508:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302508] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302508:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302508] TriggerIn")
    local actor = actorMgr:GetActor("73025")
    if actor:GetSubQuestState(7302531) == 2 then
        actorMgr:GetActor("73025"):NarratorOnlyTask(datas.NarratorTable_clean2_mushroom1, nil, "")
        actorUtils.FinishQuestID(false, 7302531)
    else
        if actor:GetSubQuestState(7302531) == 3 then
            actorMgr:GetActor("73025"):NarratorOnlyTask(datas.NarratorTable_clean2_mushroom2, nil, "")
        end
    end

    this:DestroySelf()
end

function Q73025Trigger_7302508:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302508] TriggerOut")
end

return Q73025Trigger_7302508
