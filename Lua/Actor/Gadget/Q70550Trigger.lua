require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70550Trigger = class("Q70550Trigger", GadgetActorProxy)
Q70550Trigger.defaultAlias = "Q70550Trigger"
local Q70550ClientConfig = require("Quest/Client/Q70550ClientConfig")

local this
local subIDs = Q70550ClientConfig.SubIDs
local npcs = Q70550ClientConfig.Npcs
local points = Q70550ClientConfig.Points

function Q70550Trigger:OnPostDataPrepare()
    print("Q70550Trigger - OnPostDataPrepare")
    this = self
end

function Q70550Trigger:OnPostComponentPrepare()
    print("Q70550Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70550)
end

function Q70550Trigger:TriggerIn()
    print("Q70550Trigger - TriggerIn")
    actorMgr:GetActor("70550"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("70550"):RequestInteraction(npcs.Npc10090.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70550Trigger:PreTriggerIn()
    print("Q70550Trigger - PreTriggerIn")
end

function Q70550Trigger:LightUpTriggerIn()
    print("Q70550Trigger - LightUpTriggerIn")
    actorMgr:GetActor("70550"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q70550Trigger:TriggerOut()
    print("Q70550Trigger - TriggerOut")
end

return Q70550Trigger
