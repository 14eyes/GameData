require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013921Trigger = class("Q4013921Trigger", GadgetActorProxy)
Q4013921Trigger.defaultAlias = "Q4013921Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013921Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013921Trigger] OnPostDataPrepare")
    this = self
end

function Q4013921Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013921Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40139)
end

function Q4013921Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013921Trigger] TriggerIn")
    local actor = actorMgr:GetActor("40139")
    actorUtils.FinishQuestID(false, 4013921)
    actor:QuestNarratorTask(datas.Narrator_4013994)
    this:DestroySelf()
end

function Q4013921Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013921Trigger] PreTriggerIn")
end

function Q4013921Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013921Trigger] LightUpTriggerIn")
end

function Q4013921Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013921Trigger] TriggerOut")
end

return Q4013921Trigger
