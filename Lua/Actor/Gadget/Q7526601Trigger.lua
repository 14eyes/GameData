require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7526601Trigger = class("Q7526601Trigger", GadgetActorProxy)
Q7526601Trigger.defaultAlias = "Q7526601Trigger"
local Q75266ClientConfig = require("Quest/Client/Q75266ClientConfig")

local this
local subIDs = Q75266ClientConfig.SubIDs
local npcs = Q75266ClientConfig.Npcs
local points = Q75266ClientConfig.Points

function Q7526601Trigger:OnPostDataPrepare()
    print("Q7526601Trigger - OnPostDataPrepare")
    this = self
end

function Q7526601Trigger:OnPostComponentPrepare()
    print("Q7526601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75266)
end

function Q7526601Trigger:TriggerIn()
    print("Q7526601Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7526601})
    this:DestroySelf()
end

function Q7526601Trigger:PreTriggerIn()
    print("Q7526601Trigger - PreTriggerIn")
end

function Q7526601Trigger:LightUpTriggerIn()
    print("Q7526601Trigger - LightUpTriggerIn")
end

function Q7526601Trigger:TriggerOut()
    print("Q7526601Trigger - TriggerOut")
end

return Q7526601Trigger
