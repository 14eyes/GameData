require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508601 = class("Trigger7508601", GadgetActorProxy)
Trigger7508601.defaultAlias = "Trigger7508601"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508601:OnPostDataPrepare()
    print("Trigger7508601 - OnPostDataPrepare")
    this = self
end

function Trigger7508601:OnPostComponentPrepare()
    print("Trigger7508601 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508601:TriggerIn()
    print("Trigger7508601 - TriggerIn")
    this:DestroySelf()
end

function Trigger7508601:PreTriggerIn()
    print("Trigger7508601 - PreTriggerIn")
end

function Trigger7508601:LightUpTriggerIn()
    print("Trigger7508601 - LightUpTriggerIn")
end

function Trigger7508601:TriggerOut()
    print("Trigger7508601 - TriggerOut")
end

return Trigger7508601
