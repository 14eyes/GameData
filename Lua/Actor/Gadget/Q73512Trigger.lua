require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73512Trigger = class("Q73512Trigger", GadgetActorProxy)
Q73512Trigger.defaultAlias = "Q73512Trigger"
local Q73512ClientConfig = require("Quest/Client/Q73512ClientConfig")

local this
local subIDs = Q73512ClientConfig.SubIDs
local npcs = Q73512ClientConfig.Npcs

function Q73512Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73512Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73512Trigger:TriggerIn()
    print("TriggerIn")
end

function Q73512Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73512Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    print("73512LightUpTriggerIn")
    actorMgr:GetActor("73512"):ShowBlackScreenWithDialogText(0, 2, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7351202)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q73512Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73512Trigger
