require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14037Trigger10 = class("Q14037Trigger10", GadgetActorProxy)
Q14037Trigger10.defaultAlias = "Q14037Trigger10"
local Q14037ClientConfig = require("Quest/Client/Q14037ClientConfig")

local this
local subIDs = Q14037ClientConfig.SubIDs
local npcs = Q14037ClientConfig.Npcs
local points = Q14037ClientConfig.Points
local datas = Q14037ClientConfig.Datas

function Q14037Trigger10:OnPostDataPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger10] OnPostDataPrepare")
    this = self
end

function Q14037Trigger10:OnPostComponentPrepare()
    print("[MainId: 14037][Trigger: Q14037Trigger10] OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14037)
end

function Q14037Trigger10:TriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger10] TriggerIn")
    actorMgr:GetActor("14037"):RequestInteraction(npcs.Npc1090Data.alias, "", true)
    this:DestroySelf()
end

function Q14037Trigger10:PreTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger10] PreTriggerIn")
end

function Q14037Trigger10:LightUpTriggerIn()
    print("[MainId: 14037][Trigger: Q14037Trigger10] LightUpTriggerIn")
end

function Q14037Trigger10:TriggerOut()
    print("[MainId: 14037][Trigger: Q14037Trigger10] TriggerOut")
end

return Q14037Trigger10
