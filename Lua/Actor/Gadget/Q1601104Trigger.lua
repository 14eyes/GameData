require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601104Trigger = class("Q1601104Trigger", GadgetActorProxy)
Q1601104Trigger.defaultAlias = "Q1601104Trigger"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601104Trigger:OnPostDataPrepare()
    print("Q1601104Trigger - OnPostDataPrepare")
    this = self
end

function Q1601104Trigger:OnPostComponentPrepare()
    print("Q1601104Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601104Trigger:TriggerIn()
    print("Q1601104Trigger - TriggerIn")
    this:DestroySelf()
end

function Q1601104Trigger:PreTriggerIn()
    print("Q1601104Trigger - PreTriggerIn")
end

function Q1601104Trigger:LightUpTriggerIn()
    print("Q1601104Trigger - LightUpTriggerIn")
end

function Q1601104Trigger:TriggerOut()
    print("Q1601104Trigger - TriggerOut")
end

return Q1601104Trigger
