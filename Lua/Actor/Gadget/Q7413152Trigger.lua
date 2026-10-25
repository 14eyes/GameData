require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413152Trigger = class("Q7413152Trigger", GadgetActorProxy)
Q7413152Trigger.defaultAlias = "Q7413152Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413152Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413152Trigger] OnPostDataPrepare")
    this = self
end

function Q7413152Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413152Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413152Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413152Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413152)
    this:DestroySelf()
end

function Q7413152Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413152Trigger] PreTriggerIn")
end

function Q7413152Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413152Trigger] LightUpTriggerIn")
end

function Q7413152Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413152Trigger] TriggerOut")
end

return Q7413152Trigger
