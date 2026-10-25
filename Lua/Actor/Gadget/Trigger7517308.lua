require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7517308 = class("Trigger7517308", GadgetActorProxy)
Trigger7517308.defaultAlias = "Trigger7517308"
local Q75173ClientConfig = require("Quest/Client/Q75173ClientConfig")

local this
local subIDs = Q75173ClientConfig.SubIDs
local npcs = Q75173ClientConfig.Npcs
local points = Q75173ClientConfig.Points

function Trigger7517308:OnPostDataPrepare()
    print("Trigger7517308 - OnPostDataPrepare")
    this = self
end

function Trigger7517308:OnPostComponentPrepare()
    print("Trigger7517308 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75173)
end

function Trigger7517308:TriggerIn()
    print("Trigger7517308 - TriggerIn")
    actorUtils.FinishQuestID(false, 7517308)
    this:DestroySelf()
end

function Trigger7517308:PreTriggerIn()
    print("Trigger7517308 - PreTriggerIn")
end

function Trigger7517308:LightUpTriggerIn()
    print("Trigger7517308 - LightUpTriggerIn")
end

function Trigger7517308:TriggerOut()
    print("Trigger7517308 - TriggerOut")
end

return Trigger7517308
