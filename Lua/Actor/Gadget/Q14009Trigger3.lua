require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger3 = class("Q14009Trigger3", GadgetActorProxy)
Q14009Trigger3.defaultAlias = "Q14009Trigger3"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger3:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger3] OnPostDataPrepare")
    this = self
end

function Q14009Trigger3:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger3:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger3] TriggerIn")
    local actor = actorMgr:GetActor("14009")
    actor:GetQuestNpcActor(npcs.Npc5202Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13734Data.alias)
    local pos = questNpcActor:GetPos()
    local n = actorUtils.GetAvatarPos() - pos
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:SteerToTask(n, 1, true, true)
    actor:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_1400902, function(arg1)
        actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc5202Data.alias):DoFreeStateTrigger()
    end, 14009, 0)

    this:DestroySelf()
end

function Q14009Trigger3:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger3] PreTriggerIn")
end

function Q14009Trigger3:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger3] LightUpTriggerIn")
end

function Q14009Trigger3:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger3] TriggerOut")
end

return Q14009Trigger3
