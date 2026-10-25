require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710704Trigger = class("Q7710704Trigger", GadgetActorProxy)
Q7710704Trigger.defaultAlias = "Q7710704Trigger"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710704Trigger:OnPostDataPrepare()
    print("Q7710704Trigger - OnPostDataPrepare")
    this = self
end

function Q7710704Trigger:OnPostComponentPrepare()
    print("Q7710704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710704Trigger:TriggerIn()
    print("Q7710704Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7710704Trigger:PreTriggerIn()
    print("Q7710704Trigger - PreTriggerIn")
end

function Q7710704Trigger:LightUpTriggerIn()
    print("Q7710704Trigger - LightUpTriggerIn")
end

function Q7710704Trigger:TriggerOut()
    print("Q7710704Trigger - TriggerOut")
end

return Q7710704Trigger
