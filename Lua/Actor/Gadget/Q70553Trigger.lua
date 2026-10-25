require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70553Trigger = class("Q70553Trigger", GadgetActorProxy)
Q70553Trigger.defaultAlias = "Q70553Trigger"
local Q70553ClientConfig = require("Quest/Client/Q70553ClientConfig")

local this
local subIDs = Q70553ClientConfig.SubIDs
local npcs = Q70553ClientConfig.Npcs
local points = Q70553ClientConfig.Points

function Q70553Trigger:OnPostDataPrepare()
    print("Q70553Trigger - OnPostDataPrepare")
    this = self
end

function Q70553Trigger:OnPostComponentPrepare()
    print("Q70553Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70553)
end

function Q70553Trigger:TriggerIn()
    print("Q70553Trigger - TriggerIn")
    actorMgr:GetActor("70553"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("70553"):RequestInteraction(npcs.Npc1310.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70553Trigger:PreTriggerIn()
    print("Q70553Trigger - PreTriggerIn")
end

function Q70553Trigger:LightUpTriggerIn()
    print("Q70553Trigger - LightUpTriggerIn")
    actorMgr:GetActor("70553"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q70553Trigger:TriggerOut()
    print("Q70553Trigger - TriggerOut")
end

return Q70553Trigger
