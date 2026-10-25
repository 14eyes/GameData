require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111102Trigger = class("Q7111102Trigger", GadgetActorProxy)
Q7111102Trigger.defaultAlias = "Q7111102Trigger"
local Q71111ClientConfig = require("Quest/Client/Q71111ClientConfig")

local this
local subIDs = Q71111ClientConfig.SubIDs
local npcs = Q71111ClientConfig.Npcs
local points = Q71111ClientConfig.Points
local datas = Q71111ClientConfig.Datas

function Q7111102Trigger:OnPostDataPrepare()
    print("[MainId: 71111][Trigger: Q7111102Trigger] OnPostDataPrepare")
    this = self
end

function Q7111102Trigger:OnPostComponentPrepare()
    print("[MainId: 71111][Trigger: Q7111102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111102Trigger:TriggerIn()
    print("[MainId: 71111][Trigger: Q7111102Trigger] TriggerIn")
    actorMgr:GetActor("71111"):QuestNarratorTask(datas.Narrator_7111101)
    this:DestroySelf()
end

function Q7111102Trigger:PreTriggerIn()
    print("[MainId: 71111][Trigger: Q7111102Trigger] PreTriggerIn")
end

function Q7111102Trigger:LightUpTriggerIn()
    print("[MainId: 71111][Trigger: Q7111102Trigger] LightUpTriggerIn")
end

function Q7111102Trigger:TriggerOut()
    print("[MainId: 71111][Trigger: Q7111102Trigger] TriggerOut")
end

return Q7111102Trigger
