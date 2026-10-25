require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7501406 = class("Trigger7501406", GadgetActorProxy)
Trigger7501406.defaultAlias = "Trigger7501406"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger7501406:OnPostDataPrepare()
    print("Trigger7501406 - OnPostDataPrepare")
    this = self
end

function Trigger7501406:OnPostComponentPrepare()
    print("Trigger7501406 - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger7501406:TriggerIn()
    print("Trigger7501406 - TriggerIn")
    self:EnterCombatSneakMode(12)
end

function Trigger7501406:PreTriggerIn()
    print("Trigger7501406 - PreTriggerIn")
end

function Trigger7501406:LightUpTriggerIn()
    print("Trigger7501406 - LightUpTriggerIn")
end

function Trigger7501406:TriggerOut()
    print("Trigger7501406 - TriggerOut")
    self:ExitCombatSneakMode()
end

return Trigger7501406
