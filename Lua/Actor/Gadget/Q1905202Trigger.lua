require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905202Trigger = class("Q1905202Trigger", GadgetActorProxy)
Q1905202Trigger.defaultAlias = "Q1905202Trigger"
local Q19052ClientConfig = require("Quest/Client/Q19052ClientConfig")

local this
local subIDs = Q19052ClientConfig.SubIDs
local npcs = Q19052ClientConfig.Npcs
local gadgets = Q19052ClientConfig.Gadgets
local datas = Q19052ClientConfig.Datas

function Q1905202Trigger:OnPostDataPrepare()
    print("[MainId: 19052][Trigger: Q1905202Trigger] OnPostDataPrepare")
    this = self
end

function Q1905202Trigger:OnPostComponentPrepare()
    print("[MainId: 19052][Trigger: Q1905202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(300, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1905202Trigger:TriggerIn()
    print("[MainId: 19052][Trigger: Q1905202Trigger] TriggerIn")
end

function Q1905202Trigger:TriggerOut()
    print("[MainId: 19052][Trigger: Q1905202Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 1905216)
    this:DestroySelf()
end

return Q1905202Trigger
