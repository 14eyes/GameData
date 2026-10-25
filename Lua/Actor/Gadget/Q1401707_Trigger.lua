require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401707_Trigger = class("Q1401707_Trigger", GadgetActorProxy)
Q1401707_Trigger.defaultAlias = "Q1401707_Trigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local points = Q14017ClientConfig.Points
local datas = Q14017ClientConfig.Datas

function Q1401707_Trigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q1401707_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401707_Trigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q1401707_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1401707_Trigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q1401707_Trigger] TriggerIn")
    actorMgr:GetActor("14017"):RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q1401707_Trigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q1401707_Trigger] PreTriggerIn")
end

function Q1401707_Trigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q1401707_Trigger] LightUpTriggerIn")
end

function Q1401707_Trigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q1401707_Trigger] TriggerOut")
end

return Q1401707_Trigger
