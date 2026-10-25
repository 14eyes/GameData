require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508614 = class("Trigger7508614", GadgetActorProxy)
Trigger7508614.defaultAlias = "Trigger7508614"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508614:OnPostDataPrepare()
    print("Trigger7508614 - OnPostDataPrepare")
    this = self
end

function Trigger7508614:OnPostComponentPrepare()
    print("Trigger7508614 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508614:TriggerIn()
    print("Trigger7508614 - TriggerIn")
    this:DestroySelf()
end

function Trigger7508614:PreTriggerIn()
    print("Trigger7508614 - PreTriggerIn")
end

function Trigger7508614:LightUpTriggerIn()
    print("Trigger7508614 - LightUpTriggerIn")
end

function Trigger7508614:TriggerOut()
    print("Trigger7508614 - TriggerOut")
end

return Trigger7508614
