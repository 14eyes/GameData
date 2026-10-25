require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74153Trigger = class("Q74153Trigger", GadgetActorProxy)
Q74153Trigger.defaultAlias = "Q74153Trigger"
local Q74153ClientConfig = require("Quest/Client/Q74153ClientConfig")

local this
local subIDs = Q74153ClientConfig.SubIDs
local npcs = Q74153ClientConfig.Npcs
local datas = Q74153ClientConfig.Datas

function Q74153Trigger:OnPostDataPrepare()
    print("[MainId: 74153][Trigger: Q74153Trigger] OnPostDataPrepare")
    this = self
end

function Q74153Trigger:OnPostComponentPrepare()
    print("[MainId: 74153][Trigger: Q74153Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74153Trigger:TriggerIn()
    print("[MainId: 74153][Trigger: Q74153Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7415311)
    this:DestroySelf()
end

function Q74153Trigger:PreTriggerIn()
    print("[MainId: 74153][Trigger: Q74153Trigger] PreTriggerIn")
end

function Q74153Trigger:LightUpTriggerIn()
    print("[MainId: 74153][Trigger: Q74153Trigger] LightUpTriggerIn")
end

function Q74153Trigger:TriggerOut()
    print("[MainId: 74153][Trigger: Q74153Trigger] TriggerOut")
end

return Q74153Trigger
