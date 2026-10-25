require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609008Trigger = class("Q7609008Trigger", GadgetActorProxy)
Q7609008Trigger.defaultAlias = "Q7609008Trigger"
local Q76090ClientConfig = require("Quest/Client/Q76090ClientConfig")

local this
local subIDs = Q76090ClientConfig.SubIDs
local npcs = Q76090ClientConfig.Npcs
local points = Q76090ClientConfig.Points

function Q7609008Trigger:OnPostDataPrepare()
    print("Q7609008Trigger - OnPostDataPrepare")
    this = self
end

function Q7609008Trigger:OnPostComponentPrepare()
    print("Q7609008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76090)
end

function Q7609008Trigger:TriggerIn()
    print("Q7609008Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7609008Trigger:PreTriggerIn()
    print("Q7609008Trigger - PreTriggerIn")
end

function Q7609008Trigger:LightUpTriggerIn()
    print("Q7609008Trigger - LightUpTriggerIn")
end

function Q7609008Trigger:TriggerOut()
    print("Q7609008Trigger - TriggerOut")
end

return Q7609008Trigger
