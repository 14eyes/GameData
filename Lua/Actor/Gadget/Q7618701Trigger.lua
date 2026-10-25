require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7618701Trigger = class("Q7618701Trigger", GadgetActorProxy)
Q7618701Trigger.defaultAlias = "Q7618701Trigger"
local Q76187ClientConfig = require("Quest/Client/Q76187ClientConfig")

local this
local subIDs = Q76187ClientConfig.SubIDs
local npcs = Q76187ClientConfig.Npcs
local points = Q76187ClientConfig.Points

function Q7618701Trigger:OnPostDataPrepare()
    print("Q7618701Trigger - OnPostDataPrepare")
    this = self
end

function Q7618701Trigger:OnPostComponentPrepare()
    print("Q7618701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76187)
end

function Q7618701Trigger:TriggerIn()
    print("Q7618701Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7618701})
    this:DestroySelf()
end

function Q7618701Trigger:PreTriggerIn()
    print("Q7618701Trigger - PreTriggerIn")
end

function Q7618701Trigger:LightUpTriggerIn()
    print("Q7618701Trigger - LightUpTriggerIn")
end

function Q7618701Trigger:TriggerOut()
    print("Q7618701Trigger - TriggerOut")
end

return Q7618701Trigger
