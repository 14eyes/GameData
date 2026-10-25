require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524101_01trigger = class("Q7524101_01trigger", GadgetActorProxy)
Q7524101_01trigger.defaultAlias = "Q7524101_01trigger"
local Q75241ClientConfig = require("Quest/Client/Q75241ClientConfig")

local this
local subIDs = Q75241ClientConfig.SubIDs
local datas = Q75241ClientConfig.Datas
local npcs = Q75241ClientConfig.Npcs
local points = Q75241ClientConfig.Points

function Q7524101_01trigger:OnPostDataPrepare()
    print("Q7524101_01trigger - OnPostDataPrepare")
    this = self
end

function Q7524101_01trigger:OnPostComponentPrepare()
    print("Q7524101_01trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75241)
end

function Q7524101_01trigger:TriggerIn()
    print("Q7524101_01trigger - TriggerIn")
    this:DestroySelf()
end

function Q7524101_01trigger:PreTriggerIn()
    print("Q7524101_01trigger - PreTriggerIn")
end

function Q7524101_01trigger:LightUpTriggerIn()
    print("Q7524101_01trigger - LightUpTriggerIn")
end

function Q7524101_01trigger:TriggerOut()
    print("Q7524101_01trigger - TriggerOut")
end

return Q7524101_01trigger
