require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600415Trigger = class("Q1600415Trigger", GadgetActorProxy)
Q1600415Trigger.defaultAlias = "Q1600415Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600415Trigger:OnPostDataPrepare()
    print("Q1600415Trigger - OnPostDataPrepare")
    this = self
end

function Q1600415Trigger:OnPostComponentPrepare()
    print("Q1600415Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600415Trigger:TriggerIn()
    print("Q1600415Trigger - TriggerIn")
    actorUtils.ShowContext("MagicStorybook", 1, 503)
end

function Q1600415Trigger:PreTriggerIn()
    print("Q1600415Trigger - PreTriggerIn")
end

function Q1600415Trigger:LightUpTriggerIn()
    print("Q1600415Trigger - LightUpTriggerIn")
end

function Q1600415Trigger:TriggerOut()
    print("Q1600415Trigger - TriggerOut")
end

return Q1600415Trigger
