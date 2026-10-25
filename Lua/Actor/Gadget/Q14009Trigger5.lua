require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger5 = class("Q14009Trigger5", GadgetActorProxy)
Q14009Trigger5.defaultAlias = "Q14009Trigger5"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger5:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger5] OnPostDataPrepare")
    this = self
end

function Q14009Trigger5:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger5] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 14, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger5:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger5] TriggerIn")
    local actor = actorMgr:GetActor("14009")
    actor:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_1400903, nil, 14009, 0)
    actor:GetQuestNpcActor(npcs.Npc13508Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DestroySelf()
end

function Q14009Trigger5:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger5] PreTriggerIn")
end

function Q14009Trigger5:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger5] LightUpTriggerIn")
end

function Q14009Trigger5:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger5] TriggerOut")
    actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc13508Data.alias):DoFreeStateTrigger()
end

return Q14009Trigger5
