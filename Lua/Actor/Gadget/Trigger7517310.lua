require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7517310 = class("Trigger7517310", GadgetActorProxy)
Trigger7517310.defaultAlias = "Trigger7517310"
local Q75173ClientConfig = require("Quest/Client/Q75173ClientConfig")

local this
local subIDs = Q75173ClientConfig.SubIDs
local npcs = Q75173ClientConfig.Npcs
local points = Q75173ClientConfig.Points

function Trigger7517310:OnPostDataPrepare()
    print("Trigger7517310 - OnPostDataPrepare")
    this = self
end

function Trigger7517310:OnPostComponentPrepare()
    print("Trigger7517310 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75173)
end

function Trigger7517310:TriggerIn()
    print("Trigger7517310 - TriggerIn")
    actorUtils.FinishQuestID(false, 7517310)
    this:DestroySelf()
end

function Trigger7517310:PreTriggerIn()
    print("Trigger7517310 - PreTriggerIn")
end

function Trigger7517310:LightUpTriggerIn()
    print("Trigger7517310 - LightUpTriggerIn")
end

function Trigger7517310:TriggerOut()
    print("Trigger7517310 - TriggerOut")
end

return Trigger7517310
