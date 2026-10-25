require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74196Trigger = class("Q74196Trigger", GadgetActorProxy)
Q74196Trigger.defaultAlias = "Q74196Trigger"
local Q74196ClientConfig = require("Quest/Client/Q74196ClientConfig")

local this
local subIDs = Q74196ClientConfig.SubIDs
local npcs = Q74196ClientConfig.Npcs
local datas = Q74196ClientConfig.Datas

function Q74196Trigger:OnPostDataPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger] OnPostDataPrepare")
    this = self
end

function Q74196Trigger:OnPostComponentPrepare()
    print("[MainId: 74196][Trigger: Q74196Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12.88897, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74196Trigger:TriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419603)
    this:DestroySelf()
end

function Q74196Trigger:PreTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger] PreTriggerIn")
end

function Q74196Trigger:LightUpTriggerIn()
    print("[MainId: 74196][Trigger: Q74196Trigger] LightUpTriggerIn")
end

function Q74196Trigger:TriggerOut()
    print("[MainId: 74196][Trigger: Q74196Trigger] TriggerOut")
end

return Q74196Trigger
