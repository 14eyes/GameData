require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405314Trigger = class("Q7405314Trigger", GadgetActorProxy)
Q7405314Trigger.defaultAlias = "Q7405314Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405314Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405314Trigger] OnPostDataPrepare")
    this = self
end

function Q7405314Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405314Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(28, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405314Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405314Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74053")
    actor:NarratorOnlyTaskByData(datas.Narrator_7405302)
    actor:CallDelayByQuest("7405314", 4, function(arg1)
        actorUtils.FinishQuestID(false, 7405314)
        this:DestroySelf()
    end)
end

function Q7405314Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405314Trigger] PreTriggerIn")
end

function Q7405314Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405314Trigger] LightUpTriggerIn")
end

function Q7405314Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405314Trigger] TriggerOut")
end

return Q7405314Trigger
