require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601103Trigger = class("Q1601103Trigger", GadgetActorProxy)
Q1601103Trigger.defaultAlias = "Q1601103Trigger"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601103Trigger:OnPostDataPrepare()
    print("Q1601103Trigger - OnPostDataPrepare")
    this = self
end

function Q1601103Trigger:OnPostComponentPrepare()
    print("Q1601103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601103Trigger:TriggerIn()
    print("Q1601103Trigger - TriggerIn")
end

function Q1601103Trigger:PreTriggerIn()
    print("Q1601103Trigger - PreTriggerIn")
end

function Q1601103Trigger:LightUpTriggerIn()
    print("Q1601103Trigger - LightUpTriggerIn")
end

function Q1601103Trigger:TriggerOut()
    print("Q1601103Trigger - TriggerOut")
end

return Q1601103Trigger
