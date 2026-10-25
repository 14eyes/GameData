require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621903Trigger = class("Q7621903Trigger", GadgetActorProxy)
Q7621903Trigger.defaultAlias = "Q7621903Trigger"
local Q76219ClientConfig = require("Quest/Client/Q76219ClientConfig")

local this
local subIDs = Q76219ClientConfig.SubIDs
local npcs = Q76219ClientConfig.Npcs
local points = Q76219ClientConfig.Points

function Q7621903Trigger:OnPostDataPrepare()
    print("Q7621903Trigger - OnPostDataPrepare")
    this = self
end

function Q7621903Trigger:OnPostComponentPrepare()
    print("Q7621903Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76219)
end

function Q7621903Trigger:TriggerIn()
    print("Q7621903Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7621903Trigger:PreTriggerIn()
    print("Q7621903Trigger - PreTriggerIn")
end

function Q7621903Trigger:LightUpTriggerIn()
    print("Q7621903Trigger - LightUpTriggerIn")
end

function Q7621903Trigger:TriggerOut()
    print("Q7621903Trigger - TriggerOut")
end

return Q7621903Trigger
