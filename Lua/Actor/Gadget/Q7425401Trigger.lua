require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425401Trigger = class("Q7425401Trigger", GadgetActorProxy)
Q7425401Trigger.defaultAlias = "Q7425401Trigger"
local Q74254ClientConfig = require("Quest/Client/Q74254ClientConfig")

local this
local subIDs = Q74254ClientConfig.SubIDs
local npcs = Q74254ClientConfig.Npcs
local points = Q74254ClientConfig.Points

function Q7425401Trigger:OnPostDataPrepare()
    print("Q7425401Trigger - OnPostDataPrepare")
    this = self
end

function Q7425401Trigger:OnPostComponentPrepare()
    print("Q7425401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74254)
end

function Q7425401Trigger:TriggerIn()
    print("Q7425401Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425401})
    this:DestroySelf()
end

function Q7425401Trigger:PreTriggerIn()
    print("Q7425401Trigger - PreTriggerIn")
end

function Q7425401Trigger:LightUpTriggerIn()
    print("Q7425401Trigger - LightUpTriggerIn")
end

function Q7425401Trigger:TriggerOut()
    print("Q7425401Trigger - TriggerOut")
end

return Q7425401Trigger
