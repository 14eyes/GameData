require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400817Trigger = class("Q7400817Trigger", GadgetActorProxy)
Q7400817Trigger.defaultAlias = "Q7400817Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400817Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400817Trigger] OnPostDataPrepare")
    this = self
end

function Q7400817Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400817Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400817Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400817Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400817)
    this:DestroySelf()
end

function Q7400817Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400817Trigger] PreTriggerIn")
end

function Q7400817Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400817Trigger] LightUpTriggerIn")
end

function Q7400817Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400817Trigger] TriggerOut")
end

return Q7400817Trigger
