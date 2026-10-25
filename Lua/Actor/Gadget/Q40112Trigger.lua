require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40112Trigger = class("Q40112Trigger", GadgetActorProxy)
Q40112Trigger.defaultAlias = "Q40112Trigger"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q40112Trigger:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q40112Trigger] OnPostDataPrepare")
    this = self
end

function Q40112Trigger:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q40112Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40112Trigger:TriggerIn()
    print("[MainId: 40112][Trigger: Q40112Trigger] TriggerIn")
    this:DestroySelf()
end

function Q40112Trigger:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q40112Trigger] PreTriggerIn")
end

function Q40112Trigger:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q40112Trigger] LightUpTriggerIn")
end

function Q40112Trigger:TriggerOut()
    print("[MainId: 40112][Trigger: Q40112Trigger] TriggerOut")
end

return Q40112Trigger
