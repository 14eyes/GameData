require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006549Trigger = class("Q7006549Trigger", GadgetActorProxy)
Q7006549Trigger.defaultAlias = "Q7006549Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006549Trigger:OnPostDataPrepare()
    print("Q7006549Trigger - OnPostDataPrepare")
    this = self
end

function Q7006549Trigger:OnPostComponentPrepare()
    print("Q7006549Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006549Trigger:TriggerIn()
    print("Q7006549Trigger - TriggerIn")
end

function Q7006549Trigger:PreTriggerIn()
    print("Q7006549Trigger - PreTriggerIn")
end

function Q7006549Trigger:LightUpTriggerIn()
    print("Q7006549Trigger - LightUpTriggerIn")
end

function Q7006549Trigger:TriggerOut()
    print("Q7006549Trigger - TriggerOut")
end

return Q7006549Trigger
