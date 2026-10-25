require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111003Trigger = class("Q7111003Trigger", GadgetActorProxy)
Q7111003Trigger.defaultAlias = "Q7111003Trigger"
local Q71110ClientConfig = require("Quest/Client/Q71110ClientConfig")

local this
local subIDs = Q71110ClientConfig.SubIDs
local npcs = Q71110ClientConfig.Npcs
local points = Q71110ClientConfig.Points
local datas = Q71110ClientConfig.Datas

function Q7111003Trigger:OnPostDataPrepare()
    print("[MainId: 71110][Trigger: Q7111003Trigger] OnPostDataPrepare")
    this = self
end

function Q7111003Trigger:OnPostComponentPrepare()
    print("[MainId: 71110][Trigger: Q7111003Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111003Trigger:TriggerIn()
    print("[MainId: 71110][Trigger: Q7111003Trigger] TriggerIn")
    actorMgr:GetActor("71110"):QuestNarratorTask(datas.Narrator_7111002)
    this:DestroySelf()
end

function Q7111003Trigger:PreTriggerIn()
    print("[MainId: 71110][Trigger: Q7111003Trigger] PreTriggerIn")
end

function Q7111003Trigger:LightUpTriggerIn()
    print("[MainId: 71110][Trigger: Q7111003Trigger] LightUpTriggerIn")
end

function Q7111003Trigger:TriggerOut()
    print("[MainId: 71110][Trigger: Q7111003Trigger] TriggerOut")
end

return Q7111003Trigger
