require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508605 = class("Trigger7508605", GadgetActorProxy)
Trigger7508605.defaultAlias = "Trigger7508605"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508605:OnPostDataPrepare()
    print("Trigger7508605 - OnPostDataPrepare")
    this = self
end

function Trigger7508605:OnPostComponentPrepare()
    print("Trigger7508605 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508605:TriggerIn()
    print("Trigger7508605 - TriggerIn")
    this:DestroySelf()
end

function Trigger7508605:PreTriggerIn()
    print("Trigger7508605 - PreTriggerIn")
end

function Trigger7508605:LightUpTriggerIn()
    print("Trigger7508605 - LightUpTriggerIn")
end

function Trigger7508605:TriggerOut()
    print("Trigger7508605 - TriggerOut")
end

return Trigger7508605
