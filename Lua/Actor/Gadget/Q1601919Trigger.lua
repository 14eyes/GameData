require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601919Trigger = class("Q1601919Trigger", GadgetActorProxy)
Q1601919Trigger.defaultAlias = "Q1601919Trigger"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601919Trigger:OnPostDataPrepare()
    print("Q1601919Trigger - OnPostDataPrepare")
    this = self
end

function Q1601919Trigger:OnPostComponentPrepare()
    print("Q1601919Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601919Trigger:TriggerIn()
    print("Q1601919Trigger - TriggerIn")
    this:DestroySelf()
end

function Q1601919Trigger:PreTriggerIn()
    print("Q1601919Trigger - PreTriggerIn")
end

function Q1601919Trigger:LightUpTriggerIn()
    print("Q1601919Trigger - LightUpTriggerIn")
end

function Q1601919Trigger:TriggerOut()
    print("Q1601919Trigger - TriggerOut")
end

return Q1601919Trigger
