require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger8 = class("Q14007Trigger8", GadgetActorProxy)
Q14007Trigger8.defaultAlias = "Q14007Trigger8"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger8:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger8] OnPostDataPrepare")
    this = self
end

function Q14007Trigger8:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger8:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger8] TriggerIn")
    actorMgr:GetActor("14007"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
    this:DestroySelf()
end

function Q14007Trigger8:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger8] PreTriggerIn")
end

function Q14007Trigger8:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger8] LightUpTriggerIn")
end

function Q14007Trigger8:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger8] TriggerOut")
end

return Q14007Trigger8
