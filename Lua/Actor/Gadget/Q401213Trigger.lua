require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401213Trigger = class("Q401213Trigger", GadgetActorProxy)
Q401213Trigger.defaultAlias = "Q401213Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401213Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401213Trigger] OnPostDataPrepare")
    this = self
end

function Q401213Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401213Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401213Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401213Trigger] TriggerIn")
    actorMgr:GetActor("4012"):RequestInteraction(npcs.Npc1071Data.alias, "", true)
    this:DestroySelf()
end

function Q401213Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401213Trigger] PreTriggerIn")
end

function Q401213Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401213Trigger] LightUpTriggerIn")
end

function Q401213Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401213Trigger] TriggerOut")
end

return Q401213Trigger
