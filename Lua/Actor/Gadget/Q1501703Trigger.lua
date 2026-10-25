require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501703Trigger = class("Q1501703Trigger", GadgetActorProxy)
Q1501703Trigger.defaultAlias = "Q1501703Trigger"
local Q15017ClientConfig = require("Quest/Client/Q15017ClientConfig")

local this
local subIDs = Q15017ClientConfig.SubIDs
local npcs = Q15017ClientConfig.Npcs
local points = Q15017ClientConfig.Points
local datas = Q15017ClientConfig.Datas

function Q1501703Trigger:OnPostDataPrepare()
    print("[MainId: 15017][Trigger: Q1501703Trigger] OnPostDataPrepare")
    this = self
end

function Q1501703Trigger:OnPostComponentPrepare()
    print("[MainId: 15017][Trigger: Q1501703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15017)
end

function Q1501703Trigger:TriggerIn()
    print("[MainId: 15017][Trigger: Q1501703Trigger] TriggerIn")
    local actor = actorMgr:GetActor("15017")
    actor:QuestNarratorTask(datas.NarratorWithId01)
    actor:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor("15017")
        actorUtils.FinishQuestID(false, 1501703)
        this:DestroySelf()
    end)
end

function Q1501703Trigger:PreTriggerIn()
    print("[MainId: 15017][Trigger: Q1501703Trigger] PreTriggerIn")
end

function Q1501703Trigger:LightUpTriggerIn()
    print("[MainId: 15017][Trigger: Q1501703Trigger] LightUpTriggerIn")
end

function Q1501703Trigger:TriggerOut()
    print("[MainId: 15017][Trigger: Q1501703Trigger] TriggerOut")
end

return Q1501703Trigger
