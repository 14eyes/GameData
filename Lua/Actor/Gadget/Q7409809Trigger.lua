require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7409809Trigger = class("Q7409809Trigger", GadgetActorProxy)
Q7409809Trigger.defaultAlias = "Q7409809Trigger"
local Q74098ClientConfig = require("Quest/Client/Q74098ClientConfig")

local this
local subIDs = Q74098ClientConfig.SubIDs
local npcs = Q74098ClientConfig.Npcs
local points = Q74098ClientConfig.Points
local datas = Q74098ClientConfig.Datas

function Q7409809Trigger:OnPostDataPrepare()
    print("[MainId: 74098][Trigger: Q7409809Trigger] OnPostDataPrepare")
    this = self
end

function Q7409809Trigger:OnPostComponentPrepare()
    print("[MainId: 74098][Trigger: Q7409809Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7409809Trigger:TriggerIn()
    print("[MainId: 74098][Trigger: Q7409809Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7409809)
    this:DestroySelf()
end

function Q7409809Trigger:PreTriggerIn()
    print("[MainId: 74098][Trigger: Q7409809Trigger] PreTriggerIn")
end

function Q7409809Trigger:LightUpTriggerIn()
    print("[MainId: 74098][Trigger: Q7409809Trigger] LightUpTriggerIn")
end

function Q7409809Trigger:TriggerOut()
    print("[MainId: 74098][Trigger: Q7409809Trigger] TriggerOut")
end

return Q7409809Trigger
