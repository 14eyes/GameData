require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75158Trigger = class("Q75158Trigger", GadgetActorProxy)
Q75158Trigger.defaultAlias = "Q75158Trigger"
local Q75158ClientConfig = require("Quest/Client/Q75158ClientConfig")

local this
local subIDs = Q75158ClientConfig.SubIDs
local npcs = Q75158ClientConfig.Npcs

function Q75158Trigger:OnPostDataPrepare()
    print("[MainId: 75158][Trigger: Q75158Trigger] OnPostDataPrepare")
    this = self
end

function Q75158Trigger:OnPostComponentPrepare()
    print("[MainId: 75158][Trigger: Q75158Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, sceneData:GetDummyPoint(3, ""), self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75158)
end

function Q75158Trigger:TriggerIn()
    print("[MainId: 75158][Trigger: Q75158Trigger] TriggerIn")
    actorMgr:GetActor("75158"):RequestInteraction(npcs.Npc6332Data.alias, "", true)
    this:DestroySelf()
end

function Q75158Trigger:PreTriggerIn()
    print("[MainId: 75158][Trigger: Q75158Trigger] PreTriggerIn")
end

function Q75158Trigger:LightUpTriggerIn()
    print("[MainId: 75158][Trigger: Q75158Trigger] LightUpTriggerIn")
end

function Q75158Trigger:TriggerOut()
    print("[MainId: 75158][Trigger: Q75158Trigger] TriggerOut")
end

return Q75158Trigger
