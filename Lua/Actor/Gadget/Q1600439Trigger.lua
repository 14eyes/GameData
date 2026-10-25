require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600439Trigger = class("Q1600439Trigger", GadgetActorProxy)
Q1600439Trigger.defaultAlias = "Q1600439Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600439Trigger:OnPostDataPrepare()
    print("Q1600439Trigger - OnPostDataPrepare")
    this = self
end

function Q1600439Trigger:OnPostComponentPrepare()
    print("Q1600439Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 55, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600439Trigger:TriggerIn()
    print("Q1600439Trigger - TriggerIn")
    actorUtils.ShowContext("MagicInkBar", 1)
end

function Q1600439Trigger:PreTriggerIn()
    print("Q1600439Trigger - PreTriggerIn")
end

function Q1600439Trigger:LightUpTriggerIn()
    print("Q1600439Trigger - LightUpTriggerIn")
end

function Q1600439Trigger:TriggerOut()
    print("Q1600439Trigger - TriggerOut")
    actorUtils.ShowContext("MagicInkBar", 0)
end

return Q1600439Trigger
