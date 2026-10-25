require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905218Trigger = class("Q1905218Trigger", GadgetActorProxy)
Q1905218Trigger.defaultAlias = "Q1905218Trigger"
local Q19052ClientConfig = require("Quest/Client/Q19052ClientConfig")

local this
local subIDs = Q19052ClientConfig.SubIDs
local npcs = Q19052ClientConfig.Npcs
local gadgets = Q19052ClientConfig.Gadgets
local datas = Q19052ClientConfig.Datas

function Q1905218Trigger:OnPostDataPrepare()
    print("[MainId: 19052][Trigger: Q1905218Trigger] OnPostDataPrepare")
    this = self
end

function Q1905218Trigger:OnPostComponentPrepare()
    print("[MainId: 19052][Trigger: Q1905218Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1905218Trigger:TriggerIn()
    print("[MainId: 19052][Trigger: Q1905218Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1905218)
    this:DestroySelf()
end

function Q1905218Trigger:TriggerOut()
    print("[MainId: 19052][Trigger: Q1905218Trigger] TriggerOut")
end

return Q1905218Trigger
