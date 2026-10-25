require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503505Trigger = class("Q7503505Trigger", GadgetActorProxy)
Q7503505Trigger.defaultAlias = "Q7503505Trigger"
local Q75035ClientConfig = require("Quest/Client/Q75035ClientConfig")

local this
local subIDs = Q75035ClientConfig.SubIDs
local npcs = Q75035ClientConfig.Npcs
local points = Q75035ClientConfig.Points

function Q7503505Trigger:OnPostDataPrepare()
    print("Q7503505Trigger - OnPostDataPrepare")
    this = self
end

function Q7503505Trigger:OnPostComponentPrepare()
    print("Q7503505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(19.321766, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75035)
end

function Q7503505Trigger:TriggerIn()
    print("Q7503505Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7503505)
    this:DestroySelf()
end

function Q7503505Trigger:PreTriggerIn()
    print("Q7503505Trigger - PreTriggerIn")
end

function Q7503505Trigger:LightUpTriggerIn()
    print("Q7503505Trigger - LightUpTriggerIn")
end

function Q7503505Trigger:TriggerOut()
    print("Q7503505Trigger - TriggerOut")
end

return Q7503505Trigger
