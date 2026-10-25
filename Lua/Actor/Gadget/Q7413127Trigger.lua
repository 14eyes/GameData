require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413127Trigger = class("Q7413127Trigger", GadgetActorProxy)
Q7413127Trigger.defaultAlias = "Q7413127Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413127Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413127Trigger] OnPostDataPrepare")
    this = self
end

function Q7413127Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413127Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413127Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413127Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413126)
    this:DestroySelf()
end

function Q7413127Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413127Trigger] PreTriggerIn")
end

function Q7413127Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413127Trigger] LightUpTriggerIn")
end

function Q7413127Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413127Trigger] TriggerOut")
end

return Q7413127Trigger
