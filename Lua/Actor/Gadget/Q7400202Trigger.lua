require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400202Trigger = class("Q7400202Trigger", GadgetActorProxy)
Q7400202Trigger.defaultAlias = "Q7400202Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400202Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400202Trigger] OnPostDataPrepare")
    this = self
end

function Q7400202Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400202Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400202Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400202Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400202)
    this:DestroySelf()
end

function Q7400202Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400202Trigger] PreTriggerIn")
end

function Q7400202Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400202Trigger] LightUpTriggerIn")
end

function Q7400202Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400202Trigger] TriggerOut")
end

return Q7400202Trigger
