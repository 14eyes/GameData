require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7011401Trigger = class("Q7011401Trigger", GadgetActorProxy)
Q7011401Trigger.defaultAlias = "Q7011401Trigger"
local Q70114ClientConfig = require("Quest/Client/Q70114ClientConfig")

local this
local subIDs = Q70114ClientConfig.SubIDs
local npcs = Q70114ClientConfig.Npcs
local points = Q70114ClientConfig.Points

function Q7011401Trigger:OnPostDataPrepare()
    print("Q7011401Trigger - OnPostDataPrepare")
    this = self
end

function Q7011401Trigger:OnPostComponentPrepare()
    print("Q7011401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70114)
end

function Q7011401Trigger:TriggerIn()
    print("Q7011401Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7011401})
    this:DestroySelf()
end

function Q7011401Trigger:PreTriggerIn()
    print("Q7011401Trigger - PreTriggerIn")
end

function Q7011401Trigger:LightUpTriggerIn()
    print("Q7011401Trigger - LightUpTriggerIn")
end

function Q7011401Trigger:TriggerOut()
    print("Q7011401Trigger - TriggerOut")
end

return Q7011401Trigger
