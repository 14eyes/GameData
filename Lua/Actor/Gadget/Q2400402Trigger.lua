require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400402Trigger = class("Q2400402Trigger", GadgetActorProxy)
Q2400402Trigger.defaultAlias = "Q2400402Trigger"
local Q24004ClientConfig = require("Quest/Client/Q24004ClientConfig")

local this
local subIDs = Q24004ClientConfig.SubIDs
local npcs = Q24004ClientConfig.Npcs
local points = Q24004ClientConfig.Points
local datas = Q24004ClientConfig.Datas

function Q2400402Trigger:OnPostDataPrepare()
    print("[MainId: 24004][Trigger: Q2400402Trigger] OnPostDataPrepare")
    this = self
end

function Q2400402Trigger:OnPostComponentPrepare()
    print("[MainId: 24004][Trigger: Q2400402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400402Trigger:TriggerIn()
    print("[MainId: 24004][Trigger: Q2400402Trigger] TriggerIn")
    actorMgr:GetActor("24004"):RequestInteraction(npcs.Npc5062Data.alias)
    this:DestroySelf()
end

function Q2400402Trigger:PreTriggerIn()
    print("[MainId: 24004][Trigger: Q2400402Trigger] PreTriggerIn")
end

function Q2400402Trigger:LightUpTriggerIn()
    print("[MainId: 24004][Trigger: Q2400402Trigger] LightUpTriggerIn")
end

function Q2400402Trigger:TriggerOut()
    print("[MainId: 24004][Trigger: Q2400402Trigger] TriggerOut")
end

return Q2400402Trigger
