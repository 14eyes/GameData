require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415613Trigger = class("Q7415613Trigger", GadgetActorProxy)
Q7415613Trigger.defaultAlias = "Q7415613Trigger"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q7415613Trigger:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q7415613Trigger] OnPostDataPrepare")
    this = self
end

function Q7415613Trigger:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q7415613Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7415613Trigger:TriggerIn()
    print("[MainId: 74156][Trigger: Q7415613Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7415613)
    this:DestroySelf()
end

function Q7415613Trigger:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q7415613Trigger] PreTriggerIn")
end

function Q7415613Trigger:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q7415613Trigger] LightUpTriggerIn")
end

function Q7415613Trigger:TriggerOut()
    print("[MainId: 74156][Trigger: Q7415613Trigger] TriggerOut")
end

return Q7415613Trigger
