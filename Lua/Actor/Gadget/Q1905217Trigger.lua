require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905217Trigger = class("Q1905217Trigger", GadgetActorProxy)
Q1905217Trigger.defaultAlias = "Q1905217Trigger"
local Q19052ClientConfig = require("Quest/Client/Q19052ClientConfig")

local this
local subIDs = Q19052ClientConfig.SubIDs
local npcs = Q19052ClientConfig.Npcs
local gadgets = Q19052ClientConfig.Gadgets
local datas = Q19052ClientConfig.Datas

function Q1905217Trigger:OnPostDataPrepare()
    print("[MainId: 19052][Trigger: Q1905217Trigger] OnPostDataPrepare")
    this = self
end

function Q1905217Trigger:OnPostComponentPrepare()
    print("[MainId: 19052][Trigger: Q1905217Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(180, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1905217Trigger:TriggerIn()
    print("[MainId: 19052][Trigger: Q1905217Trigger] TriggerIn")
end

function Q1905217Trigger:TriggerOut()
    print("[MainId: 19052][Trigger: Q1905217Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 1905217)
    this:DestroySelf()
end

return Q1905217Trigger
