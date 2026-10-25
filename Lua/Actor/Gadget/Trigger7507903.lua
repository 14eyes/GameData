require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7507903 = class("Trigger7507903", GadgetActorProxy)
Trigger7507903.defaultAlias = "Trigger7507903"
local Q75079ClientConfig = require("Quest/Client/Q75079ClientConfig")

local this
local subIDs = Q75079ClientConfig.SubIDs
local datas = Q75079ClientConfig.Datas
local npcs = Q75079ClientConfig.Npcs
local points = Q75079ClientConfig.Points

function Trigger7507903:OnPostDataPrepare()
    print("Trigger7507903 - OnPostDataPrepare")
    this = self
end

function Trigger7507903:OnPostComponentPrepare()
    print("Trigger7507903 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75079)
end

function Trigger7507903:TriggerIn()
    print("Trigger7507903 - TriggerIn")
    this:DestroySelf()
end

function Trigger7507903:PreTriggerIn()
    print("Trigger7507903 - PreTriggerIn")
end

function Trigger7507903:LightUpTriggerIn()
    print("Trigger7507903 - LightUpTriggerIn")
end

function Trigger7507903:TriggerOut()
    print("Trigger7507903 - TriggerOut")
end

return Trigger7507903
