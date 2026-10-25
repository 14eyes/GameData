require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70548Trigger = class("Q70548Trigger", GadgetActorProxy)
Q70548Trigger.defaultAlias = "Q70548Trigger"
local Q70548ClientConfig = require("Quest/Client/Q70548ClientConfig")

local this
local subIDs = Q70548ClientConfig.SubIDs
local npcs = Q70548ClientConfig.Npcs
local points = Q70548ClientConfig.Points

function Q70548Trigger:OnPostDataPrepare()
    print("Q70548Trigger - OnPostDataPrepare")
    this = self
end

function Q70548Trigger:OnPostComponentPrepare()
    print("Q70548Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70548)
end

function Q70548Trigger:TriggerIn()
    print("Q70548Trigger - TriggerIn")
    actorMgr:GetActor("70548"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("70548"):RequestInteraction(npcs.Lisa.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70548Trigger:PreTriggerIn()
    print("Q70548Trigger - PreTriggerIn")
end

function Q70548Trigger:LightUpTriggerIn()
    print("Q70548Trigger - LightUpTriggerIn")
    actorMgr:GetActor("70548"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q70548Trigger:TriggerOut()
    print("Q70548Trigger - TriggerOut")
end

return Q70548Trigger
