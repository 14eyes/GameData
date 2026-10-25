require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711609Trigger = class("Q7711609Trigger", GadgetActorProxy)
Q7711609Trigger.defaultAlias = "Q7711609Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711609Trigger:OnPostDataPrepare()
    print("Q7711609Trigger - OnPostDataPrepare")
    this = self
end

function Q7711609Trigger:OnPostComponentPrepare()
    print("Q7711609Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711609Trigger:TriggerIn()
    print("Q7711609Trigger - TriggerIn")
    actorMgr:GetActor("77116"):RequestInteraction("22308", "", true)
    this:DestroySelf()
end

function Q7711609Trigger:PreTriggerIn()
    print("Q7711609Trigger - PreTriggerIn")
end

function Q7711609Trigger:LightUpTriggerIn()
    print("Q7711609Trigger - LightUpTriggerIn")
end

function Q7711609Trigger:TriggerOut()
    print("Q7711609Trigger - TriggerOut")
end

return Q7711609Trigger
