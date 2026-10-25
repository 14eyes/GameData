require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500609Trigger = class("Q1500609Trigger", GadgetActorProxy)
Q1500609Trigger.defaultAlias = "Q1500609Trigger"
local Q15006ClientConfig = require("Quest/Client/Q15006ClientConfig")

local this
local subIDs = Q15006ClientConfig.SubIDs
local npcs = Q15006ClientConfig.Npcs
local points = Q15006ClientConfig.Points

function Q1500609Trigger:OnPostDataPrepare()
    print("Q1500609Trigger - OnPostDataPrepare")
    this = self
end

function Q1500609Trigger:OnPostComponentPrepare()
    print("Q1500609Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15006)
end

function Q1500609Trigger:TriggerIn()
    print("Q1500609Trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("15006"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15006"):RequestInteraction(npcs.Npc6055.alias, "", true)
    end, nil, nil, 0, false, true)
end

function Q1500609Trigger:PreTriggerIn()
    print("Q1500609Trigger - PreTriggerIn")
end

function Q1500609Trigger:LightUpTriggerIn()
    print("Q1500609Trigger - LightUpTriggerIn")
end

function Q1500609Trigger:TriggerOut()
    print("Q1500609Trigger - TriggerOut")
end

return Q1500609Trigger
