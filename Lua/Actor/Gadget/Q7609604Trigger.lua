require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609604Trigger = class("Q7609604Trigger", GadgetActorProxy)
Q7609604Trigger.defaultAlias = "Q7609604Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609604Trigger:OnPostDataPrepare()
    print("Q7609604Trigger - OnPostDataPrepare")
    this = self
end

function Q7609604Trigger:OnPostComponentPrepare()
    print("Q7609604Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609604Trigger:TriggerIn()
    print("Q7609604Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7609604Trigger:PreTriggerIn()
    print("Q7609604Trigger - PreTriggerIn")
end

function Q7609604Trigger:LightUpTriggerIn()
    print("Q7609604Trigger - LightUpTriggerIn")
end

function Q7609604Trigger:TriggerOut()
    print("Q7609604Trigger - TriggerOut")
end

return Q7609604Trigger
