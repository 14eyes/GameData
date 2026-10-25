require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918523Trigger = class("Q1918523Trigger", GadgetActorProxy)
Q1918523Trigger.defaultAlias = "Q1918523Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918523Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918523Trigger] OnPostDataPrepare")
    this = self
end

function Q1918523Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918523Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918523Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1918523)
    this:DestroySelf()
end

function Q1918523Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Trigger] PreTriggerIn")
end

function Q1918523Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Trigger] LightUpTriggerIn")
end

function Q1918523Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918523Trigger] TriggerOut")
end

return Q1918523Trigger
