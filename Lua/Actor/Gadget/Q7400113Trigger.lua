require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400113Trigger = class("Q7400113Trigger", GadgetActorProxy)
Q7400113Trigger.defaultAlias = "Q7400113Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400113Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400113Trigger] OnPostDataPrepare")
    this = self
end

function Q7400113Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400113Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400113Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400113Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400113)
    this:DestroySelf()
end

function Q7400113Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400113Trigger] PreTriggerIn")
end

function Q7400113Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400113Trigger] LightUpTriggerIn")
end

function Q7400113Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400113Trigger] TriggerOut")
end

return Q7400113Trigger
