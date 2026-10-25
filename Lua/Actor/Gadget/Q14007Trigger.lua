require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger = class("Q14007Trigger", GadgetActorProxy)
Q14007Trigger.defaultAlias = "Q14007Trigger"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger] OnPostDataPrepare")
    this = self
end

function Q14007Trigger:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14007")
    actor:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_1400703, nil, 14007, 0)
    actor:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    actor:CallDelayByQuest("1", 2, function(arg1)
        local questNpcActor = actorMgr:GetActor("14007"):GetQuestNpcActor(npcs.Npc5038Data.alias)
        local pos = questNpcActor:GetPos()
        local n = actorUtils.GetAvatarPos() - pos
        questNpcActor:SteerToTask(n, 1, true, true)
    end)

    this:DestroySelf()
end

function Q14007Trigger:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger] PreTriggerIn")
end

function Q14007Trigger:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger] LightUpTriggerIn")
end

function Q14007Trigger:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger] TriggerOut")
    actorMgr:GetActor("14007"):UnCallDelayByQuest("1")
end

return Q14007Trigger
