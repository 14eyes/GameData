require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600307Trigger = class("Q1600307Trigger", GadgetActorProxy)
Q1600307Trigger.defaultAlias = "Q1600307Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600307Trigger:OnPostDataPrepare()
    print("Q1600307Trigger - OnPostDataPrepare")
    this = self
end

function Q1600307Trigger:OnPostComponentPrepare()
    print("Q1600307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(160, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600307Trigger:TriggerIn()
    print("Q1600307Trigger - TriggerIn")
    actorUtils.ShowContext("MagicInkBar", 1)
end

function Q1600307Trigger:PreTriggerIn()
    print("Q1600307Trigger - PreTriggerIn")
end

function Q1600307Trigger:LightUpTriggerIn()
    print("Q1600307Trigger - LightUpTriggerIn")
end

function Q1600307Trigger:TriggerOut()
    print("Q1600307Trigger - TriggerOut")
    actorUtils.ShowContext("MagicInkBar", 0)
end

return Q1600307Trigger
