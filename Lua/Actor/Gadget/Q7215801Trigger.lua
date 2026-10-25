require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215801Trigger = class("Q7215801Trigger", GadgetActorProxy)
Q7215801Trigger.defaultAlias = "Q7215801Trigger"
local Q72158ClientConfig = require("Quest/Client/Q72158ClientConfig")

local subIDs = Q72158ClientConfig.SubIDs
local npcs = Q72158ClientConfig.Npcs
local datas = Q72158ClientConfig.Datas

function Q7215801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215801Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7215801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215801Trigger
