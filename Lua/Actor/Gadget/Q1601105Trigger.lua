require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601105Trigger = class("Q1601105Trigger", GadgetActorProxy)
Q1601105Trigger.defaultAlias = "Q1601105Trigger"
local Q16011ClientConfig = require("Quest/Client/Q16011ClientConfig")

local this
local subIDs = Q16011ClientConfig.SubIDs
local datas = Q16011ClientConfig.Datas
local npcs = Q16011ClientConfig.Npcs
local points = Q16011ClientConfig.Points

function Q1601105Trigger:OnPostDataPrepare()
    print("Q1601105Trigger - OnPostDataPrepare")
    this = self
end

function Q1601105Trigger:OnPostComponentPrepare()
    print("Q1601105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16011)
end

function Q1601105Trigger:TriggerIn()
    print("Q1601105Trigger - TriggerIn")
    this:DestroySelf()
end

function Q1601105Trigger:PreTriggerIn()
    print("Q1601105Trigger - PreTriggerIn")
end

function Q1601105Trigger:LightUpTriggerIn()
    print("Q1601105Trigger - LightUpTriggerIn")
end

function Q1601105Trigger:TriggerOut()
    print("Q1601105Trigger - TriggerOut")
end

return Q1601105Trigger
