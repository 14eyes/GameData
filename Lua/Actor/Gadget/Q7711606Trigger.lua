require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711606Trigger = class("Q7711606Trigger", GadgetActorProxy)
Q7711606Trigger.defaultAlias = "Q7711606Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711606Trigger:OnPostDataPrepare()
    print("Q7711606Trigger - OnPostDataPrepare")
    this = self
end

function Q7711606Trigger:OnPostComponentPrepare()
    print("Q7711606Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711606Trigger:TriggerIn()
    print("Q7711606Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711606)
    this:DestroySelf()
end

function Q7711606Trigger:PreTriggerIn()
    print("Q7711606Trigger - PreTriggerIn")
end

function Q7711606Trigger:LightUpTriggerIn()
    print("Q7711606Trigger - LightUpTriggerIn")
end

function Q7711606Trigger:TriggerOut()
    print("Q7711606Trigger - TriggerOut")
end

return Q7711606Trigger
