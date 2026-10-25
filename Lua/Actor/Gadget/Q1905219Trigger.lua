require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905219Trigger = class("Q1905219Trigger", GadgetActorProxy)
Q1905219Trigger.defaultAlias = "Q1905219Trigger"
local Q19052ClientConfig = require("Quest/Client/Q19052ClientConfig")

local this
local subIDs = Q19052ClientConfig.SubIDs
local npcs = Q19052ClientConfig.Npcs
local gadgets = Q19052ClientConfig.Gadgets
local datas = Q19052ClientConfig.Datas

function Q1905219Trigger:OnPostDataPrepare()
    print("[MainId: 19052][Trigger: Q1905219Trigger] OnPostDataPrepare")
    this = self
end

function Q1905219Trigger:OnPostComponentPrepare()
    print("[MainId: 19052][Trigger: Q1905219Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1905219Trigger:TriggerIn()
    print("[MainId: 19052][Trigger: Q1905219Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1905219)
    this:DestroySelf()
end

function Q1905219Trigger:TriggerOut()
    print("[MainId: 19052][Trigger: Q1905219Trigger] TriggerOut")
end

return Q1905219Trigger
