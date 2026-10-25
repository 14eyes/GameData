require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20034Trigger = class("Q20034Trigger", GadgetActorProxy)
Q20034Trigger.defaultAlias = "Q20034Trigger"
local Q20034ClientConfig = require("Quest/Client/Q20034ClientConfig")

local this
local subIDs = Q20034ClientConfig.SubIDs
local npcs = Q20034ClientConfig.Npcs
local points = Q20034ClientConfig.Points

function Q20034Trigger:OnPostDataPrepare()
    print("Q20034Trigger - OnPostDataPrepare")
    this = self
end

function Q20034Trigger:OnPostComponentPrepare()
    print("Q20034Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 20034)
end

function Q20034Trigger:TriggerIn()
    print("Q20034Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {2003405})
    this:DestroySelf()
end

function Q20034Trigger:PreTriggerIn()
    print("Q20034Trigger - PreTriggerIn")
end

function Q20034Trigger:LightUpTriggerIn()
    print("Q20034Trigger - LightUpTriggerIn")
end

function Q20034Trigger:TriggerOut()
    print("Q20034Trigger - TriggerOut")
end

return Q20034Trigger
