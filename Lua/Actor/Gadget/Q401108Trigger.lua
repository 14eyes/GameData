require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401108Trigger = class("Q401108Trigger", GadgetActorProxy)
Q401108Trigger.defaultAlias = "Q401108Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401108Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401108Trigger] OnPostDataPrepare")
    this = self
end

function Q401108Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401108Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 60, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401108Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401108Trigger] TriggerIn")
    actorMgr:GetActor("4011"):RequestInteraction(npcs.Npc5271Data.alias, "", true)
    this:DestroySelf()
end

function Q401108Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401108Trigger] PreTriggerIn")
end

function Q401108Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401108Trigger] LightUpTriggerIn")
end

function Q401108Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401108Trigger] TriggerOut")
end

return Q401108Trigger
