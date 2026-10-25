require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7424801Trigger = class("Q7424801Trigger", GadgetActorProxy)
Q7424801Trigger.defaultAlias = "Q7424801Trigger"
local Q74248ClientConfig = require("Quest/Client/Q74248ClientConfig")

local this
local subIDs = Q74248ClientConfig.SubIDs
local npcs = Q74248ClientConfig.Npcs
local points = Q74248ClientConfig.Points

function Q7424801Trigger:OnPostDataPrepare()
    print("Q7424801Trigger - OnPostDataPrepare")
    this = self
end

function Q7424801Trigger:OnPostComponentPrepare()
    print("Q7424801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74248)
end

function Q7424801Trigger:TriggerIn()
    print("Q7424801Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7424801})
    this:DestroySelf()
end

function Q7424801Trigger:PreTriggerIn()
    print("Q7424801Trigger - PreTriggerIn")
end

function Q7424801Trigger:LightUpTriggerIn()
    print("Q7424801Trigger - LightUpTriggerIn")
end

function Q7424801Trigger:TriggerOut()
    print("Q7424801Trigger - TriggerOut")
end

return Q7424801Trigger
