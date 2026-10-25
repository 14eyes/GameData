require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger5 = class("Q14008Trigger5", GadgetActorProxy)
Q14008Trigger5.defaultAlias = "Q14008Trigger5"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger5:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger5] OnPostDataPrepare")
    this = self
end

function Q14008Trigger5:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger5] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger5:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger5] TriggerIn")
    local questNpcActor = actorMgr:GetActor("14008"):GetQuestNpcActor(npcs.Npc5107Data.alias)
    local pos = questNpcActor:GetPos()
    local n = actorUtils.GetAvatarPos() - pos
    questNpcActor:SteerToTask(n, 1, true, true)
    local actor = actorMgr:GetActor("14008")
    actor.NarratorOnlyTaskByDataSpecifyingResumeReminder(actor, datas.Narrator_1400801, nil, 14008, 0)
    actor.CallDelayByQuest(actor, "1", 1, function()
        actor:GetQuestNpcActor(npcs.Npc5107Data.alias):DoFreeStyle(1200, true, nil, true, true, false, false)
    end)

    this:DestroySelf()
end

function Q14008Trigger5:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger5] PreTriggerIn")
end

function Q14008Trigger5:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger5] LightUpTriggerIn")
end

function Q14008Trigger5:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger5] TriggerOut")
    actorMgr:GetActor("14008"):UnCallDelayByQuest("1")
end

return Q14008Trigger5
