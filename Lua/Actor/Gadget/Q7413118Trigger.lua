require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413118Trigger = class("Q7413118Trigger", GadgetActorProxy)
Q7413118Trigger.defaultAlias = "Q7413118Trigger"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413118Trigger:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413118Trigger] OnPostDataPrepare")
    this = self
end

function Q7413118Trigger:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413118Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413118Trigger:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413118Trigger] TriggerIn")
    actorMgr:GetActor("74131"):RequestInteraction(npcs.Npc5273Data.alias, "", true)
    this:DestroySelf()
end

function Q7413118Trigger:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413118Trigger] PreTriggerIn")
end

function Q7413118Trigger:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413118Trigger] LightUpTriggerIn")
end

function Q7413118Trigger:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413118Trigger] TriggerOut")
end

return Q7413118Trigger
