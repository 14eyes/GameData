require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60601Trigger = class("Q60601Trigger", GadgetActorProxy)
Q60601Trigger.defaultAlias = "Q60601Trigger"
local Q606ClientConfig = require("Quest/Client/Q606ClientConfig")

local this
local subIDs = Q606ClientConfig.SubIDs
local npcs = Q606ClientConfig.Npcs
local points = Q606ClientConfig.Points

function Q60601Trigger:OnPostDataPrepare()
    print("Q60601Trigger - OnPostDataPrepare")
    this = self
end

function Q60601Trigger:OnPostComponentPrepare()
    print("Q60601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 606)
end

function Q60601Trigger:TriggerIn()
    print("Q60601Trigger - TriggerIn")
    actorMgr:GetActor("606"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 60601)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q60601Trigger:PreTriggerIn()
    print("Q60601Trigger - PreTriggerIn")
end

function Q60601Trigger:LightUpTriggerIn()
    print("Q60601Trigger - LightUpTriggerIn")
end

function Q60601Trigger:TriggerOut()
    print("Q60601Trigger - TriggerOut")
end

return Q60601Trigger
