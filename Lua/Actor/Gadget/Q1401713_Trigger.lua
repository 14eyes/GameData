require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401713_Trigger = class("Q1401713_Trigger", GadgetActorProxy)
Q1401713_Trigger.defaultAlias = "Q1401713_Trigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q1401713_Trigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q1401713_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401713_Trigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q1401713_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1401713_Trigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q1401713_Trigger] TriggerIn")
    actorMgr:GetActor("14017"):RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q1401713_Trigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q1401713_Trigger] PreTriggerIn")
end

function Q1401713_Trigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q1401713_Trigger] LightUpTriggerIn")
end

function Q1401713_Trigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q1401713_Trigger] TriggerOut")
end

return Q1401713_Trigger
