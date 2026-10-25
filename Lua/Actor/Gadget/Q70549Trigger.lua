require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70549Trigger = class("Q70549Trigger", GadgetActorProxy)
Q70549Trigger.defaultAlias = "Q70549Trigger"
local Q70549ClientConfig = require("Quest/Client/Q70549ClientConfig")

local this
local subIDs = Q70549ClientConfig.SubIDs
local npcs = Q70549ClientConfig.Npcs
local points = Q70549ClientConfig.Points

function Q70549Trigger:OnPostDataPrepare()
    print("Q70549Trigger - OnPostDataPrepare")
    this = self
end

function Q70549Trigger:OnPostComponentPrepare()
    print("Q70549Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70549)
end

function Q70549Trigger:TriggerIn()
    print("Q70549Trigger - TriggerIn")
    actorMgr:GetActor("70549"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("70549"):RequestInteraction(npcs.Npc1077.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70549Trigger:PreTriggerIn()
    print("Q70549Trigger - PreTriggerIn")
end

function Q70549Trigger:LightUpTriggerIn()
    print("Q70549Trigger - LightUpTriggerIn")
    actorMgr:GetActor("70549"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q70549Trigger:TriggerOut()
    print("Q70549Trigger - TriggerOut")
end

return Q70549Trigger
