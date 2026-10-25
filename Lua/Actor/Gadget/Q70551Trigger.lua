require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70551Trigger = class("Q70551Trigger", GadgetActorProxy)
Q70551Trigger.defaultAlias = "Q70551Trigger"
local Q70551ClientConfig = require("Quest/Client/Q70551ClientConfig")

local this
local subIDs = Q70551ClientConfig.SubIDs
local npcs = Q70551ClientConfig.Npcs
local points = Q70551ClientConfig.Points

function Q70551Trigger:OnPostDataPrepare()
    print("Q70551Trigger - OnPostDataPrepare")
    this = self
end

function Q70551Trigger:OnPostComponentPrepare()
    print("Q70551Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70551)
end

function Q70551Trigger:TriggerIn()
    print("Q70551Trigger - TriggerIn")
    actorMgr:GetActor("70551"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("70551"):RequestInteraction(npcs.Npc1090.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70551Trigger:PreTriggerIn()
    print("Q70551Trigger - PreTriggerIn")
end

function Q70551Trigger:LightUpTriggerIn()
    print("Q70551Trigger - LightUpTriggerIn")
    actorMgr:GetActor("70551"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q70551Trigger:TriggerOut()
    print("Q70551Trigger - TriggerOut")
end

return Q70551Trigger
