require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400824Trigger = class("Q7400824Trigger", GadgetActorProxy)
Q7400824Trigger.defaultAlias = "Q7400824Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400824Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400824Trigger] OnPostDataPrepare")
    this = self
end

function Q7400824Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400824Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400824Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400824Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400824)
    this:DestroySelf()
end

function Q7400824Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400824Trigger] PreTriggerIn")
end

function Q7400824Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400824Trigger] LightUpTriggerIn")
end

function Q7400824Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400824Trigger] TriggerOut")
end

return Q7400824Trigger
