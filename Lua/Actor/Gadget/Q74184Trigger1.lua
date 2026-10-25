require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184Trigger1 = class("Q74184Trigger1", GadgetActorProxy)
Q74184Trigger1.defaultAlias = "Q74184Trigger1"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184Trigger1:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184Trigger1] OnPostDataPrepare")
    this = self
end

function Q74184Trigger1:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(26, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74184Trigger1:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184Trigger1] TriggerIn")
    actorMgr:GetActor("74184"):RequestInteraction(nil, nil, true)
    this:DestroySelf()
end

function Q74184Trigger1:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184Trigger1] PreTriggerIn")
end

function Q74184Trigger1:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184Trigger1] LightUpTriggerIn")
end

function Q74184Trigger1:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184Trigger1] TriggerOut")
end

return Q74184Trigger1
