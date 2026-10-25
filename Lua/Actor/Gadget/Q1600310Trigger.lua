require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600310Trigger = class("Q1600310Trigger", GadgetActorProxy)
Q1600310Trigger.defaultAlias = "Q1600310Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600310Trigger:OnPostDataPrepare()
    print("Q1600310Trigger - OnPostDataPrepare")
    this = self
end

function Q1600310Trigger:OnPostComponentPrepare()
    print("Q1600310Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600310Trigger:TriggerIn()
    print("Q1600310Trigger - TriggerIn")
    actorUtils.ShowContext("MagicStorybook", 1, 403)
end

function Q1600310Trigger:PreTriggerIn()
    print("Q1600310Trigger - PreTriggerIn")
end

function Q1600310Trigger:LightUpTriggerIn()
    print("Q1600310Trigger - LightUpTriggerIn")
end

function Q1600310Trigger:TriggerOut()
    print("Q1600310Trigger - TriggerOut")
end

return Q1600310Trigger
