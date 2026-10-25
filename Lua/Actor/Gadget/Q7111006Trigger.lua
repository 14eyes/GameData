require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111006Trigger = class("Q7111006Trigger", GadgetActorProxy)
Q7111006Trigger.defaultAlias = "Q7111006Trigger"
local Q71110ClientConfig = require("Quest/Client/Q71110ClientConfig")

local this
local subIDs = Q71110ClientConfig.SubIDs
local npcs = Q71110ClientConfig.Npcs
local points = Q71110ClientConfig.Points
local datas = Q71110ClientConfig.Datas

function Q7111006Trigger:OnPostDataPrepare()
    print("[MainId: 71110][Trigger: Q7111006Trigger] OnPostDataPrepare")
    this = self
end

function Q7111006Trigger:OnPostComponentPrepare()
    print("[MainId: 71110][Trigger: Q7111006Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111006Trigger:TriggerIn()
    print("[MainId: 71110][Trigger: Q7111006Trigger] TriggerIn")
    actorMgr:GetActor("71110"):QuestNarratorTask(datas.Narrator_7111006)
    this:DestroySelf()
end

function Q7111006Trigger:PreTriggerIn()
    print("[MainId: 71110][Trigger: Q7111006Trigger] PreTriggerIn")
end

function Q7111006Trigger:LightUpTriggerIn()
    print("[MainId: 71110][Trigger: Q7111006Trigger] LightUpTriggerIn")
end

function Q7111006Trigger:TriggerOut()
    print("[MainId: 71110][Trigger: Q7111006Trigger] TriggerOut")
end

return Q7111006Trigger
