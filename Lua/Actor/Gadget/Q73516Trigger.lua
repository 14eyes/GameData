require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73516Trigger = class("Q73516Trigger", GadgetActorProxy)
Q73516Trigger.defaultAlias = "Q73516Trigger"
local Q73516ClientConfig = require("Quest/Client/Q73516ClientConfig")

local this
local subIDs = Q73516ClientConfig.SubIDs
local npcs = Q73516ClientConfig.Npcs
local points = Q73516ClientConfig.Points

function Q73516Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73516Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73516Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73516Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73516Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("73516"):ShowBlackScreenWithDialogText(0, 2, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7351601)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q73516Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73516Trigger
