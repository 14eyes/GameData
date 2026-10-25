require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger7 = class("Q14009Trigger7", GadgetActorProxy)
Q14009Trigger7.defaultAlias = "Q14009Trigger7"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger7:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger7] OnPostDataPrepare")
    this = self
end

function Q14009Trigger7:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger7] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9, 14, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger7:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger7] TriggerIn")
    actorMgr:GetActor("14009"):NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_1400905, function(arg1)
        local questNpcActor = actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc13510Data.alias)
        local pos = questNpcActor:GetPos()
        local n = actorUtils.GetAvatarPos() - pos
        questNpcActor:SteerToTask(n, 1, true, true)
    end, 14009, 0)

    this:DestroySelf()
end

function Q14009Trigger7:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger7] PreTriggerIn")
end

function Q14009Trigger7:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger7] LightUpTriggerIn")
end

function Q14009Trigger7:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger7] TriggerOut")
    actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc13510Data.alias):DoFreeStateTrigger()
end

return Q14009Trigger7
