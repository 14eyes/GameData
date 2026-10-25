require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401208Trigger = class("Q1401208Trigger", GadgetActorProxy)
Q1401208Trigger.defaultAlias = "Q1401208Trigger"
local Q14012ClientConfig = require("Quest/Client/Q14012ClientConfig")

local this
local subIDs = Q14012ClientConfig.SubIDs
local npcs = Q14012ClientConfig.Npcs
local points = Q14012ClientConfig.Points
local datas = Q14012ClientConfig.Datas

function Q1401208Trigger:OnPostDataPrepare()
    print("[MainId: 14012][Trigger: Q1401208Trigger] OnPostDataPrepare")
    this = self
end

function Q1401208Trigger:OnPostComponentPrepare()
    print("[MainId: 14012][Trigger: Q1401208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14012)
end

function Q1401208Trigger:TriggerIn()
    print("[MainId: 14012][Trigger: Q1401208Trigger] TriggerIn")
    actorMgr:GetActor("14012"):TransmitPlayerWithTextByQuestId(1401208, 1401208, nil, 0)
    this:DestroySelf()
end

function Q1401208Trigger:PreTriggerIn()
    print("[MainId: 14012][Trigger: Q1401208Trigger] PreTriggerIn")
end

function Q1401208Trigger:LightUpTriggerIn()
    print("[MainId: 14012][Trigger: Q1401208Trigger] LightUpTriggerIn")
end

function Q1401208Trigger:TriggerOut()
    print("[MainId: 14012][Trigger: Q1401208Trigger] TriggerOut")
end

return Q1401208Trigger
