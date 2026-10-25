require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004Trigger = class("Q4004Trigger", GadgetActorProxy)
Q4004Trigger.defaultAlias = "Q4004Trigger"
local Q4004ClientConfig = require("Quest/Client/Q4004ClientConfig")

local this
local subIDs = Q4004ClientConfig.SubIDs
local npcs = Q4004ClientConfig.Npcs
local points = Q4004ClientConfig.Points
local datas = Q4004ClientConfig.Datas

function Q4004Trigger:OnPostDataPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger] OnPostDataPrepare")
    this = self
end

function Q4004Trigger:OnPostComponentPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4004Trigger:TriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger] TriggerIn")
    actorMgr:GetActor("4004"):RequestInteraction(npcs.Npc5138Data.alias)
    this:DestroySelf()
end

function Q4004Trigger:PreTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger] PreTriggerIn")
end

function Q4004Trigger:LightUpTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger] LightUpTriggerIn")
end

function Q4004Trigger:TriggerOut()
    print("[MainId: 4004][Trigger: Q4004Trigger] TriggerOut")
end

return Q4004Trigger
