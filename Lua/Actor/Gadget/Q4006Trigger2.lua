require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger2 = class("Q4006Trigger2", GadgetActorProxy)
Q4006Trigger2.defaultAlias = "Q4006Trigger2"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger2:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger2] OnPostDataPrepare")
    this = self
end

function Q4006Trigger2:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger2] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 40, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger2:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger2] TriggerIn")
    actorMgr:GetActor("4006"):RequestInteraction(npcs.Npc1075Data.alias)
    this:DestroySelf()
end

function Q4006Trigger2:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger2] PreTriggerIn")
end

function Q4006Trigger2:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger2] LightUpTriggerIn")
end

function Q4006Trigger2:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger2] TriggerOut")
end

return Q4006Trigger2
