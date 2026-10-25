require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70552Trigger = class("Q70552Trigger", GadgetActorProxy)
Q70552Trigger.defaultAlias = "Q70552Trigger"
local Q70552ClientConfig = require("Quest/Client/Q70552ClientConfig")

local this
local subIDs = Q70552ClientConfig.SubIDs
local npcs = Q70552ClientConfig.Npcs
local points = Q70552ClientConfig.Points

function Q70552Trigger:OnPostDataPrepare()
    print("Q70552Trigger - OnPostDataPrepare")
    this = self
end

function Q70552Trigger:OnPostComponentPrepare()
    print("Q70552Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70552)
end

function Q70552Trigger:TriggerIn()
    print("Q70552Trigger - TriggerIn")
    actorMgr:GetActor("70552"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("70552"):RequestInteraction(npcs.Npc1029.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70552Trigger:PreTriggerIn()
    print("Q70552Trigger - PreTriggerIn")
end

function Q70552Trigger:LightUpTriggerIn()
    print("Q70552Trigger - LightUpTriggerIn")
    actorMgr:GetActor("70552"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q70552Trigger:TriggerOut()
    print("Q70552Trigger - TriggerOut")
end

return Q70552Trigger
