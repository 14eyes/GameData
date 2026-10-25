require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73518Trigger = class("Q73518Trigger", GadgetActorProxy)
Q73518Trigger.defaultAlias = "Q73518Trigger"
local Q73518ClientConfig = require("Quest/Client/Q73518ClientConfig")

local this
local subIDs = Q73518ClientConfig.SubIDs
local npcs = Q73518ClientConfig.Npcs
local points = Q73518ClientConfig.Points

function Q73518Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73518Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73518Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73518Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73518Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("73518"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7351802)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q73518Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73518Trigger
