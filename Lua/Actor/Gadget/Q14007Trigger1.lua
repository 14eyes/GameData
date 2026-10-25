require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger1 = class("Q14007Trigger1", GadgetActorProxy)
Q14007Trigger1.defaultAlias = "Q14007Trigger1"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger1:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger1] OnPostDataPrepare")
    this = self
end

function Q14007Trigger1:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger1:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger1] TriggerIn")
    actorMgr:GetActor("14007"):RequestInteraction(npcs.Npc5037Data.alias)
    this:DestroySelf()
end

function Q14007Trigger1:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger1] PreTriggerIn")
end

function Q14007Trigger1:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger1] LightUpTriggerIn")
end

function Q14007Trigger1:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger1] TriggerOut")
end

return Q14007Trigger1
