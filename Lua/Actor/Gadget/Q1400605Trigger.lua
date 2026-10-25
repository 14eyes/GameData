require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400605Trigger = class("Q1400605Trigger", GadgetActorProxy)
Q1400605Trigger.defaultAlias = "Q1400605Trigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400605Trigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400605Trigger] OnPostDataPrepare")
    this = self
end

function Q1400605Trigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400605Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400605Trigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400605Trigger] TriggerIn")
    globalActor:DisablePaimonInProfilePage({3})
end

function Q1400605Trigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400605Trigger] PreTriggerIn")
end

function Q1400605Trigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400605Trigger] LightUpTriggerIn")
end

function Q1400605Trigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400605Trigger] TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
end

return Q1400605Trigger
