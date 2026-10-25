require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7512701Trigger = class("Q7512701Trigger", GadgetActorProxy)
Q7512701Trigger.defaultAlias = "Q7512701Trigger"
local Q75127ClientConfig = require("Quest/Client/Q75127ClientConfig")

local this
local subIDs = Q75127ClientConfig.SubIDs
local npcs = Q75127ClientConfig.Npcs
local points = Q75127ClientConfig.Points

function Q7512701Trigger:OnPostDataPrepare()
    print("Q7512701Trigger - OnPostDataPrepare")
    this = self
end

function Q7512701Trigger:OnPostComponentPrepare()
    print("Q7512701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75127)
end

function Q7512701Trigger:TriggerIn()
    print("Q7512701Trigger - TriggerIn")
end

function Q7512701Trigger:PreTriggerIn()
    print("Q7512701Trigger - PreTriggerIn")
end

function Q7512701Trigger:LightUpTriggerIn()
    print("Q7512701Trigger - LightUpTriggerIn")
end

function Q7512701Trigger:TriggerOut()
    print("Q7512701Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7512701)
    this:DestroySelf()
end

return Q7512701Trigger
