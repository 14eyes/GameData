require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918516Trigger = class("Q1918516Trigger", GadgetActorProxy)
Q1918516Trigger.defaultAlias = "Q1918516Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918516Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918516Trigger] OnPostDataPrepare")
    this = self
end

function Q1918516Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918516Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918516Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918516Trigger] TriggerIn")
    actorMgr:GetActor("19185"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19185"):RequestInteraction(npcs.Npc14016Data.alias, "", true)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1918516Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918516Trigger] PreTriggerIn")
end

function Q1918516Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918516Trigger] LightUpTriggerIn")
end

function Q1918516Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918516Trigger] TriggerOut")
end

return Q1918516Trigger
