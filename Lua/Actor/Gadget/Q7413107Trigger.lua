require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413107Trigger = class("Q7413107Trigger", GadgetActorProxy)
Q7413107Trigger.defaultAlias = "Q7413107Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413107Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413107Trigger] OnPostDataPrepare")
    this = self
end

function Q7413107Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413107Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413107Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413107)
    this:DestroySelf()
end

function Q7413107Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413107Trigger] PreTriggerIn")
end

function Q7413107Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413107Trigger] LightUpTriggerIn")
end

function Q7413107Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413107Trigger] TriggerOut")
end

return Q7413107Trigger
