require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger2 = class("Q14007Trigger2", GadgetActorProxy)
Q14007Trigger2.defaultAlias = "Q14007Trigger2"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger2:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger2] OnPostDataPrepare")
    this = self
end

function Q14007Trigger2:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger2:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger2] TriggerIn")
    actorMgr:GetActor("14007"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
    this:DestroySelf()
end

function Q14007Trigger2:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger2] PreTriggerIn")
end

function Q14007Trigger2:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger2] LightUpTriggerIn")
end

function Q14007Trigger2:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger2] TriggerOut")
end

return Q14007Trigger2
