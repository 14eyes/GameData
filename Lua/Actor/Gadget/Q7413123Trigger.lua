require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413123Trigger = class("Q7413123Trigger", GadgetActorProxy)
Q7413123Trigger.defaultAlias = "Q7413123Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413123Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413123Trigger] OnPostDataPrepare")
    this = self
end

function Q7413123Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413123Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413123Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413123Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413123)
    this:DestroySelf()
end

function Q7413123Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413123Trigger] PreTriggerIn")
end

function Q7413123Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413123Trigger] LightUpTriggerIn")
end

function Q7413123Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413123Trigger] TriggerOut")
end

return Q7413123Trigger
