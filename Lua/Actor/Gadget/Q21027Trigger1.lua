require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21027Trigger1 = class("Q21027Trigger1", GadgetActorProxy)
Q21027Trigger1.defaultAlias = "Q21027Trigger1"
local Q21027ClientConfig = require("Quest/Client/Q21027ClientConfig")

local this
local subIDs = Q21027ClientConfig.SubIDs
local npcs = Q21027ClientConfig.Npcs

function Q21027Trigger1:OnPostDataPrepare()
    print("[MainId: 21027][Trigger: Q21027Trigger1] OnPostDataPrepare")
    this = self
end

function Q21027Trigger1:OnPostComponentPrepare()
    print("[MainId: 21027][Trigger: Q21027Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102706_N10000005"), self.TriggerIn, self.TriggerOut)
end

function Q21027Trigger1:TriggerIn()
    print("[MainId: 21027][Trigger: Q21027Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 2102705)
    this:DestroySelf()
end

function Q21027Trigger1:TriggerOut()
    print("[MainId: 21027][Trigger: Q21027Trigger1] TriggerOut")
end

return Q21027Trigger1
