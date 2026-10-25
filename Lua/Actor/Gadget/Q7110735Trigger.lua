require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110735Trigger = class("Q7110735Trigger", GadgetActorProxy)
Q7110735Trigger.defaultAlias = "Q7110735Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110735Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110735Trigger] OnPostDataPrepare")
    this = self
end

function Q7110735Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110735Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110735Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110735Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71107")
    actor:GetQuestNpcActor(npcs.Npc2484Data.alias):NarratorOnlyTaskByData(datas.NarratorWithId71107198)
    actor:CallDelayByQuest("2", 5, function(arg1)
        local actor = actorMgr:GetActor("71107")
        actorUtils.FinishQuestID(false, 7110735)
        this:DestroySelf()
    end)
end

function Q7110735Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110735Trigger] PreTriggerIn")
end

function Q7110735Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110735Trigger] LightUpTriggerIn")
end

function Q7110735Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110735Trigger] TriggerOut")
end

return Q7110735Trigger
