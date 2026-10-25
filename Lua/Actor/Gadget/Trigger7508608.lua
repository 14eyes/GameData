require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508608 = class("Trigger7508608", GadgetActorProxy)
Trigger7508608.defaultAlias = "Trigger7508608"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508608:OnPostDataPrepare()
    print("Trigger7508608 - OnPostDataPrepare")
    this = self
end

function Trigger7508608:OnPostComponentPrepare()
    print("Trigger7508608 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508608:TriggerIn()
    print("Trigger7508608 - TriggerIn")
end

function Trigger7508608:PreTriggerIn()
    print("Trigger7508608 - PreTriggerIn")
end

function Trigger7508608:LightUpTriggerIn()
    print("Trigger7508608 - LightUpTriggerIn")
end

function Trigger7508608:TriggerOut()
    print("Trigger7508608 - TriggerOut")
end

return Trigger7508608
