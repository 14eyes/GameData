require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger9 = class("Q14007Trigger9", GadgetActorProxy)
Q14007Trigger9.defaultAlias = "Q14007Trigger9"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger9:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger9] OnPostDataPrepare")
    this = self
end

function Q14007Trigger9:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger9] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger9:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger9] TriggerIn")
    actorMgr:GetActor("14007"):RequestInteraction(npcs.Npc1070Data.alias, "", true)
    this:DestroySelf()
end

function Q14007Trigger9:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger9] PreTriggerIn")
end

function Q14007Trigger9:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger9] LightUpTriggerIn")
end

function Q14007Trigger9:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger9] TriggerOut")
end

return Q14007Trigger9
