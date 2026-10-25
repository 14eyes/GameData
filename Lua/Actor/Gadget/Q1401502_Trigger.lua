require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401502_Trigger = class("Q1401502_Trigger", GadgetActorProxy)
Q1401502_Trigger.defaultAlias = "Q1401502_Trigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401502_Trigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401502_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401502_Trigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401502_Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(23.79976, 14.59208, 7.649943, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401502_Trigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401502_Trigger] TriggerIn")
    actorMgr:GetActor("14015"):RequestInteraction(npcs.Npc13839Data.alias, "", true)
    this:DestroySelf()
end

function Q1401502_Trigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401502_Trigger] PreTriggerIn")
end

function Q1401502_Trigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401502_Trigger] LightUpTriggerIn")
end

function Q1401502_Trigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401502_Trigger] TriggerOut")
end

return Q1401502_Trigger
