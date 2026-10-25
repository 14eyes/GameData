require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7335601Trigger = class("Q7335601Trigger", GadgetActorProxy)
Q7335601Trigger.defaultAlias = "Q7335601Trigger"
local Q73356ClientConfig = require("Quest/Client/Q73356ClientConfig")

local this
local subIDs = Q73356ClientConfig.SubIDs
local npcs = Q73356ClientConfig.Npcs
local points = Q73356ClientConfig.Points

function Q7335601Trigger:OnPostDataPrepare()
    print("Q7335601Trigger - OnPostDataPrepare")
    this = self
end

function Q7335601Trigger:OnPostComponentPrepare()
    print("Q7335601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73356)
end

function Q7335601Trigger:TriggerIn()
    print("Q7335601Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7335601})
    this:DestroySelf()
end

function Q7335601Trigger:PreTriggerIn()
    print("Q7335601Trigger - PreTriggerIn")
end

function Q7335601Trigger:LightUpTriggerIn()
    print("Q7335601Trigger - LightUpTriggerIn")
end

function Q7335601Trigger:TriggerOut()
    print("Q7335601Trigger - TriggerOut")
end

return Q7335601Trigger
