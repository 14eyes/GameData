require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger8 = class("Q4006Trigger8", GadgetActorProxy)
Q4006Trigger8.defaultAlias = "Q4006Trigger8"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger8:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger8] OnPostDataPrepare")
    this = self
end

function Q4006Trigger8:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger8] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(55, 15, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger8:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger8] TriggerIn")
    actorMgr:GetActor("4006"):TransmitPlayerByQuestId(400603, 2)
    this:DestroySelf()
end

function Q4006Trigger8:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger8] PreTriggerIn")
end

function Q4006Trigger8:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger8] LightUpTriggerIn")
end

function Q4006Trigger8:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger8] TriggerOut")
end

return Q4006Trigger8
