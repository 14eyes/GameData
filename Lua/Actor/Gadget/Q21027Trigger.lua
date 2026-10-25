require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21027Trigger = class("Q21027Trigger", GadgetActorProxy)
Q21027Trigger.defaultAlias = "Q21027Trigger"
local Q21027ClientConfig = require("Quest/Client/Q21027ClientConfig")

local this
local subIDs = Q21027ClientConfig.SubIDs
local npcs = Q21027ClientConfig.Npcs

function Q21027Trigger:OnPostDataPrepare()
    print("[MainId: 21027][Trigger: Q21027Trigger] OnPostDataPrepare")
    this = self
end

function Q21027Trigger:OnPostComponentPrepare()
    print("[MainId: 21027][Trigger: Q21027Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102704_N10000005"), self.TriggerIn, self.TriggerOut)
end

function Q21027Trigger:TriggerIn()
    print("[MainId: 21027][Trigger: Q21027Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 2102702)
    this:DestroySelf()
end

function Q21027Trigger:TriggerOut()
    print("[MainId: 21027][Trigger: Q21027Trigger] TriggerOut")
end

return Q21027Trigger
