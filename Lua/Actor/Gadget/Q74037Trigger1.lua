require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74037Trigger1 = class("Q74037Trigger1", GadgetActorProxy)
Q74037Trigger1.defaultAlias = "Q74037Trigger1"
local Q74037ClientConfig = require("Quest/Client/Q74037ClientConfig")

local this
local subIDs = Q74037ClientConfig.SubIDs
local npcs = Q74037ClientConfig.Npcs
local points = Q74037ClientConfig.Points

function Q74037Trigger1:OnPostDataPrepare()
    print("[MainId: 74037][Trigger: Q74037Trigger1] OnPostDataPrepare")
    this = self
end

function Q74037Trigger1:OnPostComponentPrepare()
    print("[MainId: 74037][Trigger: Q74037Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74037Trigger1:TriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger1] TriggerIn")
    actorMgr:GetActor("74037"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("74037"):RequestInteraction(npcs.Npc5109Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q74037Trigger1:PreTriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger1] PreTriggerIn")
end

function Q74037Trigger1:LightUpTriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger1] LightUpTriggerIn")
    actorMgr:GetActor("74037"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q74037Trigger1:TriggerOut()
    print("[MainId: 74037][Trigger: Q74037Trigger1] TriggerOut")
end

return Q74037Trigger1
