require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger7 = class("Q4006Trigger7", GadgetActorProxy)
Q4006Trigger7.defaultAlias = "Q4006Trigger7"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger7:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger7] OnPostDataPrepare")
    this = self
end

function Q4006Trigger7:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger7] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger7:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger7] TriggerIn")
    actorMgr:GetActor("4006"):RequestInteraction(npcs.Npc1071Data.alias)
    local actor = actorMgr:GetActor("Q4006Trigger8")
    if actor ~= nil then
        actor:DestroySelf()
    end

    this:DestroySelf()
end

function Q4006Trigger7:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger7] PreTriggerIn")
end

function Q4006Trigger7:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger7] LightUpTriggerIn")
end

function Q4006Trigger7:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger7] TriggerOut")
end

return Q4006Trigger7
