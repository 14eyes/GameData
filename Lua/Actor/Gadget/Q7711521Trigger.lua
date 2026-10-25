require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711521Trigger = class("Q7711521Trigger", GadgetActorProxy)
Q7711521Trigger.defaultAlias = "Q7711521Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711521Trigger:OnPostDataPrepare()
    print("Q7711521Trigger - OnPostDataPrepare")
    this = self
end

function Q7711521Trigger:OnPostComponentPrepare()
    print("Q7711521Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711521Trigger:TriggerIn()
    print("Q7711521Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711521})
    this:DestroySelf()
end

function Q7711521Trigger:PreTriggerIn()
    print("Q7711521Trigger - PreTriggerIn")
end

function Q7711521Trigger:LightUpTriggerIn()
    print("Q7711521Trigger - LightUpTriggerIn")
end

function Q7711521Trigger:TriggerOut()
    print("Q7711521Trigger - TriggerOut")
end

return Q7711521Trigger
