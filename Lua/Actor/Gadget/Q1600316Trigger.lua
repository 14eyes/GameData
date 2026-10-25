require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600316Trigger = class("Q1600316Trigger", GadgetActorProxy)
Q1600316Trigger.defaultAlias = "Q1600316Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600316Trigger:OnPostDataPrepare()
    print("Q1600316Trigger - OnPostDataPrepare")
    this = self
end

function Q1600316Trigger:OnPostComponentPrepare()
    print("Q1600316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(160, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600316Trigger:TriggerIn()
    print("Q1600316Trigger - TriggerIn")
    actorUtils.ShowContext("MagicInkBar", 1)
end

function Q1600316Trigger:PreTriggerIn()
    print("Q1600316Trigger - PreTriggerIn")
end

function Q1600316Trigger:LightUpTriggerIn()
    print("Q1600316Trigger - LightUpTriggerIn")
end

function Q1600316Trigger:TriggerOut()
    print("Q1600316Trigger - TriggerOut")
    actorUtils.ShowContext("MagicInkBar", 0)
end

return Q1600316Trigger
