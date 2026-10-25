require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7618201Trigger = class("Q7618201Trigger", GadgetActorProxy)
Q7618201Trigger.defaultAlias = "Q7618201Trigger"
local Q76182ClientConfig = require("Quest/Client/Q76182ClientConfig")

local this
local subIDs = Q76182ClientConfig.SubIDs
local npcs = Q76182ClientConfig.Npcs
local points = Q76182ClientConfig.Points

function Q7618201Trigger:OnPostDataPrepare()
    print("Q7618201Trigger - OnPostDataPrepare")
    this = self
end

function Q7618201Trigger:OnPostComponentPrepare()
    print("Q7618201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76182)
end

function Q7618201Trigger:TriggerIn()
    print("Q7618201Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7618201})
    this:DestroySelf()
end

function Q7618201Trigger:PreTriggerIn()
    print("Q7618201Trigger - PreTriggerIn")
end

function Q7618201Trigger:LightUpTriggerIn()
    print("Q7618201Trigger - LightUpTriggerIn")
end

function Q7618201Trigger:TriggerOut()
    print("Q7618201Trigger - TriggerOut")
end

return Q7618201Trigger
