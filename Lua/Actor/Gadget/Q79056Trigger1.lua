require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79056Trigger1 = class("Q79056Trigger1", GadgetActorProxy)
Q79056Trigger1.defaultAlias = "Q79056Trigger1"
local Q79056ClientConfig = require("Quest/Client/Q79056ClientConfig")

local this
local subIDs = Q79056ClientConfig.SubIDs
local datas = Q79056ClientConfig.Datas

function Q79056Trigger1:OnPostDataPrepare()
    print("[MainId: 79056][Trigger: Q79056Trigger1] OnPostDataPrepare")
    this = self
end

function Q79056Trigger1:OnPostComponentPrepare()
    print("[MainId: 79056][Trigger: Q79056Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79056Trigger1:TriggerIn()
    print("[MainId: 79056][Trigger: Q79056Trigger1] TriggerIn")
    this:DestroySelf()
end

function Q79056Trigger1:PreTriggerIn()
    print("[MainId: 79056][Trigger: Q79056Trigger1] PreTriggerIn")
end

function Q79056Trigger1:LightUpTriggerIn()
    print("[MainId: 79056][Trigger: Q79056Trigger1] LightUpTriggerIn")
end

function Q79056Trigger1:TriggerOut()
    print("[MainId: 79056][Trigger: Q79056Trigger1] TriggerOut")
end

return Q79056Trigger1
