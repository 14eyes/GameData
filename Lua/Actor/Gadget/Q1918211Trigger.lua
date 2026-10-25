require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918211Trigger = class("Q1918211Trigger", GadgetActorProxy)
Q1918211Trigger.defaultAlias = "Q1918211Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918211Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918211Trigger] OnPostDataPrepare")
    this = self
end

function Q1918211Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918211Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918211Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918211Trigger] TriggerIn")
    actorMgr:GetActor("19182"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19182"):RequestInteraction(npcs.Npc13980Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918211Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918211Trigger] PreTriggerIn")
end

function Q1918211Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918211Trigger] LightUpTriggerIn")
end

function Q1918211Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918211Trigger] TriggerOut")
end

return Q1918211Trigger
