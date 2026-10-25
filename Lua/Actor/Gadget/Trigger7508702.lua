require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508702 = class("Trigger7508702", GadgetActorProxy)
Trigger7508702.defaultAlias = "Trigger7508702"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger7508702:OnPostDataPrepare()
    print("Trigger7508702 - OnPostDataPrepare")
    this = self
end

function Trigger7508702:OnPostComponentPrepare()
    print("Trigger7508702 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger7508702:TriggerIn()
    print("Trigger7508702 - TriggerIn")
    self:EnterCombatSneakMode(8)
    this:DestroySelf()
end

function Trigger7508702:PreTriggerIn()
    print("Trigger7508702 - PreTriggerIn")
end

function Trigger7508702:LightUpTriggerIn()
    print("Trigger7508702 - LightUpTriggerIn")
end

function Trigger7508702:TriggerOut()
    print("Trigger7508702 - TriggerOut")
    self:ExitCombatSneakMode()
end

return Trigger7508702
