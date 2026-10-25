require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508612 = class("Trigger7508612", GadgetActorProxy)
Trigger7508612.defaultAlias = "Trigger7508612"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508612:OnPostDataPrepare()
    print("Trigger7508612 - OnPostDataPrepare")
    this = self
end

function Trigger7508612:OnPostComponentPrepare()
    print("Trigger7508612 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508612:TriggerIn()
    print("Trigger7508612 - TriggerIn")
    this:DestroySelf()
end

function Trigger7508612:PreTriggerIn()
    print("Trigger7508612 - PreTriggerIn")
end

function Trigger7508612:LightUpTriggerIn()
    print("Trigger7508612 - LightUpTriggerIn")
end

function Trigger7508612:TriggerOut()
    print("Trigger7508612 - TriggerOut")
end

return Trigger7508612
