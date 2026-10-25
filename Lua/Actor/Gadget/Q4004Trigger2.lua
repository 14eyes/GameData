require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004Trigger2 = class("Q4004Trigger2", GadgetActorProxy)
Q4004Trigger2.defaultAlias = "Q4004Trigger2"
local Q4004ClientConfig = require("Quest/Client/Q4004ClientConfig")

local this
local subIDs = Q4004ClientConfig.SubIDs
local npcs = Q4004ClientConfig.Npcs
local points = Q4004ClientConfig.Points
local datas = Q4004ClientConfig.Datas

function Q4004Trigger2:OnPostDataPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger2] OnPostDataPrepare")
    this = self
end

function Q4004Trigger2:OnPostComponentPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4004Trigger2:TriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger2] TriggerIn")
    actorMgr:GetActor("4004"):RequestInteraction(npcs.Npc1071Data.alias)
    this:DestroySelf()
end

function Q4004Trigger2:PreTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger2] PreTriggerIn")
end

function Q4004Trigger2:LightUpTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger2] LightUpTriggerIn")
end

function Q4004Trigger2:TriggerOut()
    print("[MainId: 4004][Trigger: Q4004Trigger2] TriggerOut")
end

return Q4004Trigger2
