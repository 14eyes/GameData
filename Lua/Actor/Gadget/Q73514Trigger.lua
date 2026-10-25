require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73514Trigger = class("Q73514Trigger", GadgetActorProxy)
Q73514Trigger.defaultAlias = "Q73514Trigger"
local Q73514ClientConfig = require("Quest/Client/Q73514ClientConfig")

local this
local subIDs = Q73514ClientConfig.SubIDs
local npcs = Q73514ClientConfig.Npcs
local points = Q73514ClientConfig.Points

function Q73514Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73514Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73514Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73514Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73514Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("73514"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7351402)
    end, nil, nil, 0, false, true)
end

function Q73514Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73514Trigger
