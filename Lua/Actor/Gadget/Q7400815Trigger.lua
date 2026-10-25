require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400815Trigger = class("Q7400815Trigger", GadgetActorProxy)
Q7400815Trigger.defaultAlias = "Q7400815Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400815Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400815Trigger] OnPostDataPrepare")
    this = self
end

function Q7400815Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400815Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400815Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400815Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400815)
    this:DestroySelf()
end

function Q7400815Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400815Trigger] PreTriggerIn")
end

function Q7400815Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400815Trigger] LightUpTriggerIn")
end

function Q7400815Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400815Trigger] TriggerOut")
end

return Q7400815Trigger
