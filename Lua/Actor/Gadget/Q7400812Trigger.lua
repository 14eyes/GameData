require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400812Trigger = class("Q7400812Trigger", GadgetActorProxy)
Q7400812Trigger.defaultAlias = "Q7400812Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400812Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400812Trigger] OnPostDataPrepare")
    this = self
end

function Q7400812Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400812Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400812Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400812Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400812)
    this:DestroySelf()
end

function Q7400812Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400812Trigger] PreTriggerIn")
end

function Q7400812Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400812Trigger] LightUpTriggerIn")
end

function Q7400812Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400812Trigger] TriggerOut")
end

return Q7400812Trigger
