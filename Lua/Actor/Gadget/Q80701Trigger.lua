require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80701Trigger = class("Q80701Trigger", GadgetActorProxy)
Q80701Trigger.defaultAlias = "Q80701Trigger"
local Q807ClientConfig = require("Quest/Client/Q807ClientConfig")

local this
local subIDs = Q807ClientConfig.SubIDs
local npcs = Q807ClientConfig.Npcs

function Q80701Trigger:OnPostDataPrepare()
    print("Q80701Trigger - OnPostDataPrepare")
    this = self
end

function Q80701Trigger:OnPostComponentPrepare()
    print("Q80701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 807)
end

function Q80701Trigger:TriggerIn()
    print("Q80701Trigger - TriggerIn")
    this:DestroySelf()
end

function Q80701Trigger:PreTriggerIn()
    print("Q80701Trigger - PreTriggerIn")
end

function Q80701Trigger:LightUpTriggerIn()
    print("Q80701Trigger - LightUpTriggerIn")
end

function Q80701Trigger:TriggerOut()
    print("Q80701Trigger - TriggerOut")
end

return Q80701Trigger
