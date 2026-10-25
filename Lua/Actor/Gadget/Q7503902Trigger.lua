require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503902Trigger = class("Q7503902Trigger", GadgetActorProxy)
Q7503902Trigger.defaultAlias = "Q7503902Trigger"
local Q75039ClientConfig = require("Quest/Client/Q75039ClientConfig")

local this
local subIDs = Q75039ClientConfig.SubIDs
local npcs = Q75039ClientConfig.Npcs
local datas = Q75039ClientConfig.Datas

function Q7503902Trigger:OnPostDataPrepare()
    print("[MainId: 75039][Trigger: Q7503902Trigger] OnPostDataPrepare")
    this = self
end

function Q7503902Trigger:OnPostComponentPrepare()
    print("[MainId: 75039][Trigger: Q7503902Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75039)
end

function Q7503902Trigger:TriggerIn()
    print("[MainId: 75039][Trigger: Q7503902Trigger] TriggerIn")
    actorMgr:GetActor("75039"):QuestNarratorTask(datas.NarratorWithId_7503903)
    actorUtils.FinishQuestID(false, 7503901)
    this:DestroySelf()
end

function Q7503902Trigger:PreTriggerIn()
    print("[MainId: 75039][Trigger: Q7503902Trigger] PreTriggerIn")
end

function Q7503902Trigger:LightUpTriggerIn()
    print("[MainId: 75039][Trigger: Q7503902Trigger] LightUpTriggerIn")
end

function Q7503902Trigger:TriggerOut()
    print("[MainId: 75039][Trigger: Q7503902Trigger] TriggerOut")
end

return Q7503902Trigger
