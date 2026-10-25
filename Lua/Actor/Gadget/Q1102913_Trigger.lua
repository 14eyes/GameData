require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102913_Trigger = class("Q1102913_Trigger", GadgetActorProxy)
Q1102913_Trigger.defaultAlias = "Q1102913_Trigger"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local points = Q11029ClientConfig.Points
local datas = Q11029ClientConfig.Datas

function Q1102913_Trigger:OnPostDataPrepare()
    print("[MainId: 11029][Trigger: Q1102913_Trigger] OnPostDataPrepare")
    this = self
end

function Q1102913_Trigger:OnPostComponentPrepare()
    print("[MainId: 11029][Trigger: Q1102913_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102913_Trigger:TriggerIn()
    print("[MainId: 11029][Trigger: Q1102913_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1102913)
    this:DestroySelf()
end

function Q1102913_Trigger:PreTriggerIn()
    print("[MainId: 11029][Trigger: Q1102913_Trigger] PreTriggerIn")
end

function Q1102913_Trigger:LightUpTriggerIn()
    print("[MainId: 11029][Trigger: Q1102913_Trigger] LightUpTriggerIn")
end

function Q1102913_Trigger:TriggerOut()
    print("[MainId: 11029][Trigger: Q1102913_Trigger] TriggerOut")
end

return Q1102913_Trigger
