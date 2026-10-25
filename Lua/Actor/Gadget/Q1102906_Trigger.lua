require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102906_Trigger = class("Q1102906_Trigger", GadgetActorProxy)
Q1102906_Trigger.defaultAlias = "Q1102906_Trigger"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local points = Q11029ClientConfig.Points
local datas = Q11029ClientConfig.Datas

function Q1102906_Trigger:OnPostDataPrepare()
    print("[MainId: 11029][Trigger: Q1102906_Trigger] OnPostDataPrepare")
    this = self
end

function Q1102906_Trigger:OnPostComponentPrepare()
    print("[MainId: 11029][Trigger: Q1102906_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102906_Trigger:TriggerIn()
    print("[MainId: 11029][Trigger: Q1102906_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("11029")
    actor.CallDelayByQuest(actor, "1102906Narrator", 3, function(arg1)
        if actor:GetSubQuestState(1102906) == 2 then
            actorMgr:GetActor("11029"):NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Narrator_1102907, nil, 11029, 0)
        end
    end)

    this:DestroySelf()
end

function Q1102906_Trigger:PreTriggerIn()
    print("[MainId: 11029][Trigger: Q1102906_Trigger] PreTriggerIn")
end

function Q1102906_Trigger:LightUpTriggerIn()
    print("[MainId: 11029][Trigger: Q1102906_Trigger] LightUpTriggerIn")
end

function Q1102906_Trigger:TriggerOut()
    print("[MainId: 11029][Trigger: Q1102906_Trigger] TriggerOut")
end

return Q1102906_Trigger
