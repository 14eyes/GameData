require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76023Trigger = class("Q76023Trigger", GadgetActorProxy)
Q76023Trigger.defaultAlias = "Q76023Trigger"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q76023Trigger:OnPostDataPrepare()
    print("Q76023Trigger - OnPostDataPrepare")
    this = self
end

function Q76023Trigger:OnPostComponentPrepare()
    print("Q76023Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q76023Trigger:TriggerIn()
    print("Q76023Trigger - TriggerIn")
    this:DestroySelf()
end

function Q76023Trigger:PreTriggerIn()
    print("Q76023Trigger - PreTriggerIn")
end

function Q76023Trigger:LightUpTriggerIn()
    print("Q76023Trigger - LightUpTriggerIn")
end

function Q76023Trigger:TriggerOut()
    print("Q76023Trigger - TriggerOut")
end

return Q76023Trigger
