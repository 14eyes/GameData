require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400831Trigger = class("Q7400831Trigger", GadgetActorProxy)
Q7400831Trigger.defaultAlias = "Q7400831Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400831Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400831Trigger] OnPostDataPrepare")
    this = self
end

function Q7400831Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400831Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400831Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400831Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400831)
    this:DestroySelf()
end

function Q7400831Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400831Trigger] PreTriggerIn")
end

function Q7400831Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400831Trigger] LightUpTriggerIn")
end

function Q7400831Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400831Trigger] TriggerOut")
end

return Q7400831Trigger
