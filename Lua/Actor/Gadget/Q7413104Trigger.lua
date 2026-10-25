require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413104Trigger = class("Q7413104Trigger", GadgetActorProxy)
Q7413104Trigger.defaultAlias = "Q7413104Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413104Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413104Trigger] OnPostDataPrepare")
    this = self
end

function Q7413104Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413104Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413104Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413104)
    this:DestroySelf()
end

function Q7413104Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413104Trigger] PreTriggerIn")
end

function Q7413104Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413104Trigger] LightUpTriggerIn")
end

function Q7413104Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413104Trigger] TriggerOut")
end

return Q7413104Trigger
