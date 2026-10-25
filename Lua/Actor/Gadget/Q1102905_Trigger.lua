require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102905_Trigger = class("Q1102905_Trigger", GadgetActorProxy)
Q1102905_Trigger.defaultAlias = "Q1102905_Trigger"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local points = Q11029ClientConfig.Points
local datas = Q11029ClientConfig.Datas

function Q1102905_Trigger:OnPostDataPrepare()
    print("[MainId: 11029][Trigger: Q1102905_Trigger] OnPostDataPrepare")
    this = self
end

function Q1102905_Trigger:OnPostComponentPrepare()
    print("[MainId: 11029][Trigger: Q1102905_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102905_Trigger:TriggerIn()
    print("[MainId: 11029][Trigger: Q1102905_Trigger] TriggerIn")
    actorMgr:GetActor("11029"):RequestInteraction(npcs.Npc13137Data.alias)
    this:DestroySelf()
end

function Q1102905_Trigger:PreTriggerIn()
    print("[MainId: 11029][Trigger: Q1102905_Trigger] PreTriggerIn")
end

function Q1102905_Trigger:LightUpTriggerIn()
    print("[MainId: 11029][Trigger: Q1102905_Trigger] LightUpTriggerIn")
    actorMgr:GetActor("11029"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q1102905_Trigger:TriggerOut()
    print("[MainId: 11029][Trigger: Q1102905_Trigger] TriggerOut")
end

return Q1102905_Trigger
