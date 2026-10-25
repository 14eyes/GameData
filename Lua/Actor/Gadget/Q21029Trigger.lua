require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21029Trigger = class("Q21029Trigger", GadgetActorProxy)
Q21029Trigger.defaultAlias = "Q21029Trigger"
local Q21029ClientConfig = require("Quest/Client/Q21029ClientConfig")

local this
local subIDs = Q21029ClientConfig.SubIDs
local npcs = Q21029ClientConfig.Npcs

function Q21029Trigger:OnPostDataPrepare()
    print("[MainId: 21029][Trigger: Q21029Trigger] OnPostDataPrepare")
    this = self
end

function Q21029Trigger:OnPostComponentPrepare()
    print("[MainId: 21029][Trigger: Q21029Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102701_N10000005"), self.TriggerIn, self.TriggerOut)
end

function Q21029Trigger:TriggerIn()
    print("[MainId: 21029][Trigger: Q21029Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 2102901)
    this:DestroySelf()
end

function Q21029Trigger:TriggerOut()
    print("[MainId: 21029][Trigger: Q21029Trigger] TriggerOut")
end

return Q21029Trigger
