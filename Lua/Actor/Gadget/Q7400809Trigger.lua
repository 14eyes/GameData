require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400809Trigger = class("Q7400809Trigger", GadgetActorProxy)
Q7400809Trigger.defaultAlias = "Q7400809Trigger"
local Q74008ClientConfig = require("Quest/Client/Q74008ClientConfig")

local this
local subIDs = Q74008ClientConfig.SubIDs
local npcs = Q74008ClientConfig.Npcs
local points = Q74008ClientConfig.Points
local datas = Q74008ClientConfig.Datas

function Q7400809Trigger:OnPostDataPrepare()
    print("[MainId: 74008][Trigger: Q7400809Trigger] OnPostDataPrepare")
    this = self
end

function Q7400809Trigger:OnPostComponentPrepare()
    print("[MainId: 74008][Trigger: Q7400809Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400809Trigger:TriggerIn()
    print("[MainId: 74008][Trigger: Q7400809Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400809)
    this:DestroySelf()
end

function Q7400809Trigger:PreTriggerIn()
    print("[MainId: 74008][Trigger: Q7400809Trigger] PreTriggerIn")
end

function Q7400809Trigger:LightUpTriggerIn()
    print("[MainId: 74008][Trigger: Q7400809Trigger] LightUpTriggerIn")
end

function Q7400809Trigger:TriggerOut()
    print("[MainId: 74008][Trigger: Q7400809Trigger] TriggerOut")
end

return Q7400809Trigger
