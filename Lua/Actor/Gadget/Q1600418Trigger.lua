require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600418Trigger = class("Q1600418Trigger", GadgetActorProxy)
Q1600418Trigger.defaultAlias = "Q1600418Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600418Trigger:OnPostDataPrepare()
    print("Q1600418Trigger - OnPostDataPrepare")
    this = self
end

function Q1600418Trigger:OnPostComponentPrepare()
    print("Q1600418Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(80, 55, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600418Trigger:TriggerIn()
    print("Q1600418Trigger - TriggerIn")
    actorUtils.ShowContext("MagicInkBar", 1)
end

function Q1600418Trigger:PreTriggerIn()
    print("Q1600418Trigger - PreTriggerIn")
end

function Q1600418Trigger:LightUpTriggerIn()
    print("Q1600418Trigger - LightUpTriggerIn")
end

function Q1600418Trigger:TriggerOut()
    print("Q1600418Trigger - TriggerOut")
    actorUtils.ShowContext("MagicInkBar", 0)
end

return Q1600418Trigger
