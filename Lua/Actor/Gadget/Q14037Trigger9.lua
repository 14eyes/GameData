require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14037Trigger9 = class("Q14037Trigger9", GadgetActorProxy)
Q14037Trigger9.defaultAlias = "Q14037Trigger9"
local Q14037ClientConfig = require("Quest/Client/Q14037ClientConfig")

local this
local subIDs = Q14037ClientConfig.SubIDs
local npcs = Q14037ClientConfig.Npcs
local points = Q14037ClientConfig.Points
local datas = Q14037ClientConfig.Datas

function Q14037Trigger9:OnPostDataPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger9] OnPostDataPrepare")
    this = self
end

function Q14037Trigger9:OnPostComponentPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger9] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14037)
end

function Q14037Trigger9:TriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger9] TriggerIn")
    actorMgr:GetActor("14037"):RequestInteraction(npcs.Npc1050Data.alias, "", true)
    this:DestroySelf()
end

function Q14037Trigger9:PreTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger9] PreTriggerIn")
end

function Q14037Trigger9:LightUpTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger9] LightUpTriggerIn")
end

function Q14037Trigger9:TriggerOut()
    print("[MainId: 14037][Trigger: Q14037Trigger9] TriggerOut")
end

return Q14037Trigger9
