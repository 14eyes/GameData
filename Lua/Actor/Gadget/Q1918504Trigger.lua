require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918504Trigger = class("Q1918504Trigger", GadgetActorProxy)
Q1918504Trigger.defaultAlias = "Q1918504Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918504Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918504Trigger] OnPostDataPrepare")
    this = self
end

function Q1918504Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918504Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(7, 8, true, {x = 0.0, y = 2.5, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918504Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918504Trigger] TriggerIn")
    actorMgr:GetActor("19185"):RequestInteraction(npcs.Npc518Data.alias, "", true)
    this:DestroySelf()
end

function Q1918504Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918504Trigger] PreTriggerIn")
end

function Q1918504Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918504Trigger] LightUpTriggerIn")
end

function Q1918504Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918504Trigger] TriggerOut")
end

return Q1918504Trigger
