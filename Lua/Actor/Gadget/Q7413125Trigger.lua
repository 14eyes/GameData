require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413125Trigger = class("Q7413125Trigger", GadgetActorProxy)
Q7413125Trigger.defaultAlias = "Q7413125Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413125Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413125Trigger] OnPostDataPrepare")
    this = self
end

function Q7413125Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413125Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7413125Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413125Trigger] TriggerIn")
    actorMgr:GetActor("74131"):RequestInteraction(npcs.Npc5273Data.alias, "", true)
    this:DestroySelf()
end

function Q7413125Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413125Trigger] PreTriggerIn")
end

function Q7413125Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413125Trigger] LightUpTriggerIn")
end

function Q7413125Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413125Trigger] TriggerOut")
end

return Q7413125Trigger
