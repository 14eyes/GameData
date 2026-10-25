require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger = class("Q74104Trigger", GadgetActorProxy)
Q74104Trigger.defaultAlias = "Q74104Trigger"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger] OnPostDataPrepare")
    this = self
end

function Q74104Trigger:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger] TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7410401)
end

function Q74104Trigger:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger] PreTriggerIn")
end

function Q74104Trigger:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger] LightUpTriggerIn")
end

function Q74104Trigger:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger] TriggerOut")
end

return Q74104Trigger
