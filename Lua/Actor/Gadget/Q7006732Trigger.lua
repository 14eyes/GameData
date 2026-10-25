require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006732Trigger = class("Q7006732Trigger", GadgetActorProxy)
Q7006732Trigger.defaultAlias = "Q7006732Trigger"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006732Trigger:OnPostDataPrepare()
    print("Q7006732Trigger - OnPostDataPrepare")
    this = self
end

function Q7006732Trigger:OnPostComponentPrepare()
    print("Q7006732Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006732Trigger:TriggerIn()
    print("Q7006732Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7006732Trigger:PreTriggerIn()
    print("Q7006732Trigger - PreTriggerIn")
end

function Q7006732Trigger:LightUpTriggerIn()
    print("Q7006732Trigger - LightUpTriggerIn")
end

function Q7006732Trigger:TriggerOut()
    print("Q7006732Trigger - TriggerOut")
end

return Q7006732Trigger
