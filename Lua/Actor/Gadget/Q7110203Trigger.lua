require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110203Trigger = class("Q7110203Trigger", GadgetActorProxy)
Q7110203Trigger.defaultAlias = "Q7110203Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110203Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110203Trigger] OnPostDataPrepare")
    this = self
end

function Q7110203Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110203Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110203Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110203Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71102")
    actor:QuestNarratorTask(datas.Narrator_7110204)
    actor:CallDelayByQuest("", 2, function(arg1)
        local actor = actorMgr:GetActor("71102")
        actorUtils.FinishQuestID(false, 7110203)
        this:DestroySelf()
    end)
end

function Q7110203Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110203Trigger] PreTriggerIn")
end

function Q7110203Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110203Trigger] LightUpTriggerIn")
end

function Q7110203Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110203Trigger] TriggerOut")
end

return Q7110203Trigger
