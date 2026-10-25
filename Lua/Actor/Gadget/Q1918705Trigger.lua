require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918705Trigger = class("Q1918705Trigger", GadgetActorProxy)
Q1918705Trigger.defaultAlias = "Q1918705Trigger"
local Q19187ClientConfig = require("Quest/Client/Q19187ClientConfig")

local this
local subIDs = Q19187ClientConfig.SubIDs
local npcs = Q19187ClientConfig.Npcs
local points = Q19187ClientConfig.Points
local datas = Q19187ClientConfig.Datas

function Q1918705Trigger:OnPostDataPrepare()
    print("[MainId: 19187][Trigger: Q1918705Trigger] OnPostDataPrepare")
    this = self
end

function Q1918705Trigger:OnPostComponentPrepare()
    print("[MainId: 19187][Trigger: Q1918705Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(5, 5, true, {x = 0.0, y = 2.4, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19187)
end

function Q1918705Trigger:TriggerIn()
    print("[MainId: 19187][Trigger: Q1918705Trigger] TriggerIn")
    actorMgr:GetActor("19187"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19187"):RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1918705Trigger:PreTriggerIn()
    print("[MainId: 19187][Trigger: Q1918705Trigger] PreTriggerIn")
end

function Q1918705Trigger:LightUpTriggerIn()
    print("[MainId: 19187][Trigger: Q1918705Trigger] LightUpTriggerIn")
end

function Q1918705Trigger:TriggerOut()
    print("[MainId: 19187][Trigger: Q1918705Trigger] TriggerOut")
end

return Q1918705Trigger
