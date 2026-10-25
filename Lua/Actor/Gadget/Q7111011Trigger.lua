require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111011Trigger = class("Q7111011Trigger", GadgetActorProxy)
Q7111011Trigger.defaultAlias = "Q7111011Trigger"
local Q71110ClientConfig = require("Quest/Client/Q71110ClientConfig")

local this
local subIDs = Q71110ClientConfig.SubIDs
local npcs = Q71110ClientConfig.Npcs
local points = Q71110ClientConfig.Points
local datas = Q71110ClientConfig.Datas

function Q7111011Trigger:OnPostDataPrepare()
    print("[MainId: 71110][Trigger: Q7111011Trigger] OnPostDataPrepare")
    this = self
end

function Q7111011Trigger:OnPostComponentPrepare()
    print("[MainId: 71110][Trigger: Q7111011Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7111011Trigger:TriggerIn()
    print("[MainId: 71110][Trigger: Q7111011Trigger] TriggerIn")
    actorMgr:GetActor("71110"):NarratorOnlyTaskByData(datas.Narrator_7111006)
    this:DestroySelf()
end

function Q7111011Trigger:PreTriggerIn()
    print("[MainId: 71110][Trigger: Q7111011Trigger] PreTriggerIn")
end

function Q7111011Trigger:LightUpTriggerIn()
    print("[MainId: 71110][Trigger: Q7111011Trigger] LightUpTriggerIn")
end

function Q7111011Trigger:TriggerOut()
    print("[MainId: 71110][Trigger: Q7111011Trigger] TriggerOut")
end

return Q7111011Trigger
