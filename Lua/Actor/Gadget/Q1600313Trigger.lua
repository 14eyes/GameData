require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600313Trigger = class("Q1600313Trigger", GadgetActorProxy)
Q1600313Trigger.defaultAlias = "Q1600313Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600313Trigger:OnPostDataPrepare()
    print("Q1600313Trigger - OnPostDataPrepare")
    this = self
end

function Q1600313Trigger:OnPostComponentPrepare()
    print("Q1600313Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(160, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600313Trigger:TriggerIn()
    print("Q1600313Trigger - TriggerIn")
    actorUtils.ShowContext("MagicInkBar", 1)
end

function Q1600313Trigger:PreTriggerIn()
    print("Q1600313Trigger - PreTriggerIn")
end

function Q1600313Trigger:LightUpTriggerIn()
    print("Q1600313Trigger - LightUpTriggerIn")
end

function Q1600313Trigger:TriggerOut()
    print("Q1600313Trigger - TriggerOut")
    actorUtils.ShowContext("MagicInkBar", 0)
end

return Q1600313Trigger
