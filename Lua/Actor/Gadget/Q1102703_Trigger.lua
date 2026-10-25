require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102703_Trigger = class("Q1102703_Trigger", GadgetActorProxy)
Q1102703_Trigger.defaultAlias = "Q1102703_Trigger"
local Q11027ClientConfig = require("Quest/Client/Q11027ClientConfig")

local this
local subIDs = Q11027ClientConfig.SubIDs
local npcs = Q11027ClientConfig.Npcs
local points = Q11027ClientConfig.Points
local datas = Q11027ClientConfig.Datas

function Q1102703_Trigger:OnPostDataPrepare()
    print("[MainId: 11027][Trigger: Q1102703_Trigger] OnPostDataPrepare")
    this = self
end

function Q1102703_Trigger:OnPostComponentPrepare()
    print("[MainId: 11027][Trigger: Q1102703_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102703_Trigger:TriggerIn()
    print("[MainId: 11027][Trigger: Q1102703_Trigger] TriggerIn")
    actorMgr:GetActor("11027"):RequestInteraction(npcs.Npc13136Data.alias)
    this:DestroySelf()
end

function Q1102703_Trigger:PreTriggerIn()
    print("[MainId: 11027][Trigger: Q1102703_Trigger] PreTriggerIn")
end

function Q1102703_Trigger:LightUpTriggerIn()
    print("[MainId: 11027][Trigger: Q1102703_Trigger] LightUpTriggerIn")
end

function Q1102703_Trigger:TriggerOut()
    print("[MainId: 11027][Trigger: Q1102703_Trigger] TriggerOut")
end

return Q1102703_Trigger
