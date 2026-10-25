require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500702Trigger = class("Q7500702Trigger", GadgetActorProxy)
Q7500702Trigger.defaultAlias = "Q7500702Trigger"
local Q75007ClientConfig = require("Quest/Client/Q75007ClientConfig")

local this
local subIDs = Q75007ClientConfig.SubIDs
local npcs = Q75007ClientConfig.Npcs
local datas = Q75007ClientConfig.Datas

function Q7500702Trigger:OnPostDataPrepare()
    print("[MainId: 75007][Trigger: Q7500702Trigger] OnPostDataPrepare")
    this = self
end

function Q7500702Trigger:OnPostComponentPrepare()
    print("[MainId: 75007][Trigger: Q7500702Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75007)
end

function Q7500702Trigger:TriggerIn()
    print("[MainId: 75007][Trigger: Q7500702Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500702Trigger:PreTriggerIn()
    print("[MainId: 75007][Trigger: Q7500702Trigger] PreTriggerIn")
end

function Q7500702Trigger:LightUpTriggerIn()
    print("[MainId: 75007][Trigger: Q7500702Trigger] LightUpTriggerIn")
end

function Q7500702Trigger:TriggerOut()
    print("[MainId: 75007][Trigger: Q7500702Trigger] TriggerOut")
end

return Q7500702Trigger
