require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2502203Trigger = class("Q2502203Trigger", GadgetActorProxy)
Q2502203Trigger.defaultAlias = "Q2502203Trigger"
local Q25022ClientConfig = require("Quest/Client/Q25022ClientConfig")

local this
local subIDs = Q25022ClientConfig.SubIDs
local npcs = Q25022ClientConfig.Npcs
local points = Q25022ClientConfig.Points

function Q2502203Trigger:OnPostDataPrepare()
    print("Q2502203Trigger - OnPostDataPrepare")
    this = self
end

function Q2502203Trigger:OnPostComponentPrepare()
    print("Q2502203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25022)
end

function Q2502203Trigger:TriggerIn()
    print("Q2502203Trigger - TriggerIn")
    actorMgr:GetActor("25022"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("25022"):RequestInteraction(npcs.Npc14268.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q2502203Trigger:PreTriggerIn()
    print("Q2502203Trigger - PreTriggerIn")
end

function Q2502203Trigger:LightUpTriggerIn()
    print("Q2502203Trigger - LightUpTriggerIn")
end

function Q2502203Trigger:TriggerOut()
    print("Q2502203Trigger - TriggerOut")
end

return Q2502203Trigger
