require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110720Trigger = class("Q7110720Trigger", GadgetActorProxy)
Q7110720Trigger.defaultAlias = "Q7110720Trigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110720Trigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110720Trigger] OnPostDataPrepare")
    this = self
end

function Q7110720Trigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110720Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110720Trigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110720Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71107")
    actor:GetQuestNpcActor(npcs.Npc2484Data.alias):NarratorOnlyTaskByData(datas.NarratorWithId71107197)
    actor:CallDelayByQuest("1", 5, function(arg1)
        local actor = actorMgr:GetActor("71107")
        actorUtils.FinishQuestID(false, 7110720)
        this:DestroySelf()
    end)
end

function Q7110720Trigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110720Trigger] PreTriggerIn")
end

function Q7110720Trigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110720Trigger] LightUpTriggerIn")
end

function Q7110720Trigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110720Trigger] TriggerOut")
end

return Q7110720Trigger
