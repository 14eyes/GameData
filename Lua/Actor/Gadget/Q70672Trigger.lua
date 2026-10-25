require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70672Trigger = class("Q70672Trigger", GadgetActorProxy)
Q70672Trigger.defaultAlias = "Q70672Trigger"
local Q70672ClientConfig = require("Quest/Client/Q70672ClientConfig")

local this
local subIDs = Q70672ClientConfig.SubIDs
local npcs = Q70672ClientConfig.Npcs

function Q70672Trigger:OnPostDataPrepare()
    print("[MainId: 70672][Trigger: Q70672Trigger] OnPostDataPrepare")
    this = self
end

function Q70672Trigger:OnPostComponentPrepare()
    print("[MainId: 70672][Trigger: Q70672Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13, 6, 12, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q70672Trigger:TriggerIn()
    print("[MainId: 70672][Trigger: Q70672Trigger] TriggerIn")
    actorMgr:GetActor("70672"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("70672"):RequestInteraction(npcs.Npc13276Data.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q70672Trigger:PreTriggerIn()
    print("[MainId: 70672][Trigger: Q70672Trigger] PreTriggerIn")
end

function Q70672Trigger:LightUpTriggerIn()
    print("[MainId: 70672][Trigger: Q70672Trigger] LightUpTriggerIn")
    actorMgr:GetActor("70672"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Q70672Trigger:TriggerOut()
    print("[MainId: 70672][Trigger: Q70672Trigger] TriggerOut")
end

return Q70672Trigger
