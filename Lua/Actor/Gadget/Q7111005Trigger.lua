require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111005Trigger = class("Q7111005Trigger", GadgetActorProxy)
Q7111005Trigger.defaultAlias = "Q7111005Trigger"
local Q71110ClientConfig = require("Quest/Client/Q71110ClientConfig")

local this
local subIDs = Q71110ClientConfig.SubIDs
local npcs = Q71110ClientConfig.Npcs
local points = Q71110ClientConfig.Points
local datas = Q71110ClientConfig.Datas

function Q7111005Trigger:OnPostDataPrepare()
    print("[MainId: 71110][Trigger: Q7111005Trigger] OnPostDataPrepare")
    this = self
end

function Q7111005Trigger:OnPostComponentPrepare()
    print("[MainId: 71110][Trigger: Q7111005Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111005Trigger:TriggerIn()
    print("[MainId: 71110][Trigger: Q7111005Trigger] TriggerIn")
    actorMgr:GetActor("71110"):NarratorOnlyTaskByData(datas.Narrator_7111005)
    this:DestroySelf()
end

function Q7111005Trigger:PreTriggerIn()
    print("[MainId: 71110][Trigger: Q7111005Trigger] PreTriggerIn")
end

function Q7111005Trigger:LightUpTriggerIn()
    print("[MainId: 71110][Trigger: Q7111005Trigger] LightUpTriggerIn")
end

function Q7111005Trigger:TriggerOut()
    print("[MainId: 71110][Trigger: Q7111005Trigger] TriggerOut")
end

return Q7111005Trigger
