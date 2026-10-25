require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60801Trigger = class("Q60801Trigger", GadgetActorProxy)
Q60801Trigger.defaultAlias = "Q60801Trigger"
local Q608ClientConfig = require("Quest/Client/Q608ClientConfig")

local this
local subIDs = Q608ClientConfig.SubIDs
local npcs = Q608ClientConfig.Npcs
local points = Q608ClientConfig.Points

function Q60801Trigger:OnPostDataPrepare()
    print("Q60801Trigger - OnPostDataPrepare")
    this = self
end

function Q60801Trigger:OnPostComponentPrepare()
    print("Q60801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 608)
end

function Q60801Trigger:TriggerIn()
    print("Q60801Trigger - TriggerIn")
    actorMgr:GetActor("608"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 60801)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q60801Trigger:PreTriggerIn()
    print("Q60801Trigger - PreTriggerIn")
end

function Q60801Trigger:LightUpTriggerIn()
    print("Q60801Trigger - LightUpTriggerIn")
end

function Q60801Trigger:TriggerOut()
    print("Q60801Trigger - TriggerOut")
end

return Q60801Trigger
