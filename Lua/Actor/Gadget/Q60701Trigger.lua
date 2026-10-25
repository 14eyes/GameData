require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60701Trigger = class("Q60701Trigger", GadgetActorProxy)
Q60701Trigger.defaultAlias = "Q60701Trigger"
local Q607ClientConfig = require("Quest/Client/Q607ClientConfig")

local this
local subIDs = Q607ClientConfig.SubIDs
local npcs = Q607ClientConfig.Npcs

function Q60701Trigger:OnPostDataPrepare()
    print("Q60701Trigger - OnPostDataPrepare")
    this = self
end

function Q60701Trigger:OnPostComponentPrepare()
    print("Q60701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 607)
end

function Q60701Trigger:TriggerIn()
    print("Q60701Trigger - TriggerIn")
    actorMgr:GetActor("607"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 60701)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q60701Trigger:PreTriggerIn()
    print("Q60701Trigger - PreTriggerIn")
end

function Q60701Trigger:LightUpTriggerIn()
    print("Q60701Trigger - LightUpTriggerIn")
end

function Q60701Trigger:TriggerOut()
    print("Q60701Trigger - TriggerOut")
end

return Q60701Trigger
