require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger11 = class("Q14038Trigger11", GadgetActorProxy)
Q14038Trigger11.defaultAlias = "Q14038Trigger11"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger11:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger11] OnPostDataPrepare")
    this = self
end

function Q14038Trigger11:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger11] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger11:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger11] TriggerIn")
    actorMgr:GetActor("14038"):RequestInteraction(npcs.Npc1090Data.alias, "", true)
    this:DestroySelf()
end

function Q14038Trigger11:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger11] PreTriggerIn")
end

function Q14038Trigger11:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger11] LightUpTriggerIn")
end

function Q14038Trigger11:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger11] TriggerOut")
end

return Q14038Trigger11
