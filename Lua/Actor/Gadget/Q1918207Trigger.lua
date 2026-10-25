require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918207Trigger = class("Q1918207Trigger", GadgetActorProxy)
Q1918207Trigger.defaultAlias = "Q1918207Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918207Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918207Trigger] OnPostDataPrepare")
    this = self
end

function Q1918207Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918207Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918207Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918207Trigger] TriggerIn")
    actorMgr:GetActor("19182"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19182"):RequestInteraction(npcs.Npc13932Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918207Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918207Trigger] PreTriggerIn")
end

function Q1918207Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918207Trigger] LightUpTriggerIn")
end

function Q1918207Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918207Trigger] TriggerOut")
end

return Q1918207Trigger
