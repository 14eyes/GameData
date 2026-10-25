require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110724Trigger = class("Q7110724Trigger", GadgetActorProxy)
Q7110724Trigger.defaultAlias = "Q7110724Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110724Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110724Trigger] OnPostDataPrepare")
    this = self
end

function Q7110724Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110724Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110724Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110724Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71107")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc2484Data.alias)
    questNpcActor:NarratorOnlyTaskByData(datas.NarratorWithId71107199)
    actor:CallDelayByQuest("3", 13, function(arg1)
        local actor = actorMgr:GetActor("71107")
        actorUtils.FinishQuestID(false, 7110724)
        this:DestroySelf()
    end)

    questNpcActor:ClearFollowTask()
end

function Q7110724Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110724Trigger] PreTriggerIn")
end

function Q7110724Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110724Trigger] LightUpTriggerIn")
end

function Q7110724Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110724Trigger] TriggerOut")
end

return Q7110724Trigger
