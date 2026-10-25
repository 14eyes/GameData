require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508615 = class("Trigger7508615", GadgetActorProxy)
Trigger7508615.defaultAlias = "Trigger7508615"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508615:OnPostDataPrepare()
    print("Trigger7508615 - OnPostDataPrepare")
    this = self
end

function Trigger7508615:OnPostComponentPrepare()
    print("Trigger7508615 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508615:TriggerIn()
    print("Trigger7508615 - TriggerIn")
    this:DestroySelf()
end

function Trigger7508615:PreTriggerIn()
    print("Trigger7508615 - PreTriggerIn")
end

function Trigger7508615:LightUpTriggerIn()
    print("Trigger7508615 - LightUpTriggerIn")
end

function Trigger7508615:TriggerOut()
    print("Trigger7508615 - TriggerOut")
end

return Trigger7508615
