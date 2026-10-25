require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401508_Trigger = class("Q1401508_Trigger", GadgetActorProxy)
Q1401508_Trigger.defaultAlias = "Q1401508_Trigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401508_Trigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401508_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401508_Trigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401508_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1401508_Trigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401508_Trigger] TriggerIn")
    actorMgr:GetActor("14015"):RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q1401508_Trigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401508_Trigger] PreTriggerIn")
end

function Q1401508_Trigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401508_Trigger] LightUpTriggerIn")
end

function Q1401508_Trigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401508_Trigger] TriggerOut")
end

return Q1401508_Trigger
