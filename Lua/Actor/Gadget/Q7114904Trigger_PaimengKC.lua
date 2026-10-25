require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7114904Trigger_PaimengKC = class("Q7114904Trigger_PaimengKC", GadgetActorProxy)
Q7114904Trigger_PaimengKC.defaultAlias = "Q7114904Trigger_PaimengKC"
local Q71149ClientConfig = require("Quest/Client/Q71149ClientConfig")

local this
local subIDs = Q71149ClientConfig.SubIDs
local npcs = Q71149ClientConfig.Npcs

function Q7114904Trigger_PaimengKC:OnPostDataPrepare()
    print("Q7114904Trigger_PaimengKC - OnPostDataPrepare")
    this = self
end

function Q7114904Trigger_PaimengKC:OnPostComponentPrepare()
    print("Q7114904Trigger_PaimengKC - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71149)
end

function Q7114904Trigger_PaimengKC:TriggerIn()
    print("Q7114904Trigger_PaimengKC - TriggerIn")
    this:DestroySelf()
end

function Q7114904Trigger_PaimengKC:PreTriggerIn()
    print("Q7114904Trigger_PaimengKC - PreTriggerIn")
end

function Q7114904Trigger_PaimengKC:LightUpTriggerIn()
    print("Q7114904Trigger_PaimengKC - LightUpTriggerIn")
end

function Q7114904Trigger_PaimengKC:TriggerOut()
    print("Q7114904Trigger_PaimengKC - TriggerOut")
end

return Q7114904Trigger_PaimengKC
