require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711608Trigger = class("Q7711608Trigger", GadgetActorProxy)
Q7711608Trigger.defaultAlias = "Q7711608Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711608Trigger:OnPostDataPrepare()
    print("Q7711608Trigger - OnPostDataPrepare")
    this = self
end

function Q7711608Trigger:OnPostComponentPrepare()
    print("Q7711608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711608Trigger:TriggerIn()
    print("Q7711608Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711608)
    this:DestroySelf()
end

function Q7711608Trigger:PreTriggerIn()
    print("Q7711608Trigger - PreTriggerIn")
end

function Q7711608Trigger:LightUpTriggerIn()
    print("Q7711608Trigger - LightUpTriggerIn")
end

function Q7711608Trigger:TriggerOut()
    print("Q7711608Trigger - TriggerOut")
end

return Q7711608Trigger
