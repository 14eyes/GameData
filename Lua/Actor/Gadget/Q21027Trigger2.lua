require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21027Trigger2 = class("Q21027Trigger2", GadgetActorProxy)
Q21027Trigger2.defaultAlias = "Q21027Trigger2"
local Q21027ClientConfig = require("Quest/Client/Q21027ClientConfig")

local this
local subIDs = Q21027ClientConfig.SubIDs
local npcs = Q21027ClientConfig.Npcs

function Q21027Trigger2:OnPostDataPrepare()
    print("[MainId: 21027][Trigger: Q21027Trigger2] OnPostDataPrepare")
    this = self
end

function Q21027Trigger2:OnPostComponentPrepare()
    print("[MainId: 21027][Trigger: Q21027Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q2102708_N10000005"), self.TriggerIn, self.TriggerOut)
end

function Q21027Trigger2:TriggerIn()
    print("[MainId: 21027][Trigger: Q21027Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 2102707)
    this:DestroySelf()
end

function Q21027Trigger2:TriggerOut()
    print("[MainId: 21027][Trigger: Q21027Trigger2] TriggerOut")
end

return Q21027Trigger2
