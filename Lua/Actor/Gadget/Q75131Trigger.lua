require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75131Trigger = class("Q75131Trigger", GadgetActorProxy)
Q75131Trigger.defaultAlias = "Q75131Trigger"
local Q75131ClientConfig = require("Quest/Client/Q75131ClientConfig")

local this
local subIDs = Q75131ClientConfig.SubIDs
local npcs = Q75131ClientConfig.Npcs

function Q75131Trigger:OnPostDataPrepare()
    print("[MainId: 75131][Trigger: Q75131Trigger] OnPostDataPrepare")
    this = self
end

function Q75131Trigger:OnPostComponentPrepare()
    print("[MainId: 75131][Trigger: Q75131Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, sceneData:GetDummyPoint(3, ""), self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75131)
end

function Q75131Trigger:TriggerIn()
    print("[MainId: 75131][Trigger: Q75131Trigger] TriggerIn")
    actorMgr:GetActor("75131"):RequestInteraction(npcs.Npc21757Data.alias, "", true)
    this:DestroySelf()
end

function Q75131Trigger:PreTriggerIn()
    print("[MainId: 75131][Trigger: Q75131Trigger] PreTriggerIn")
end

function Q75131Trigger:LightUpTriggerIn()
    print("[MainId: 75131][Trigger: Q75131Trigger] LightUpTriggerIn")
end

function Q75131Trigger:TriggerOut()
    print("[MainId: 75131][Trigger: Q75131Trigger] TriggerOut")
end

return Q75131Trigger
