require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413117Trigger = class("Q7413117Trigger", GadgetActorProxy)
Q7413117Trigger.defaultAlias = "Q7413117Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413117Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413117Trigger] OnPostDataPrepare")
    this = self
end

function Q7413117Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413117Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413117Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413117Trigger] TriggerIn")
    actorMgr:GetActor("74131"):RequestInteraction(npcs.Npc5273Data.alias, "", true)
    this:DestroySelf()
end

function Q7413117Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413117Trigger] PreTriggerIn")
end

function Q7413117Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413117Trigger] LightUpTriggerIn")
end

function Q7413117Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413117Trigger] TriggerOut")
end

return Q7413117Trigger
