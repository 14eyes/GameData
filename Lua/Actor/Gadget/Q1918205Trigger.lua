require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918205Trigger = class("Q1918205Trigger", GadgetActorProxy)
Q1918205Trigger.defaultAlias = "Q1918205Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918205Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918205Trigger] OnPostDataPrepare")
    this = self
end

function Q1918205Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918205Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19182)
end

function Q1918205Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918205Trigger] TriggerIn")
    actorMgr:GetActor("19182"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19182"):RequestInteraction(npcs.Npc13934Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918205Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918205Trigger] PreTriggerIn")
end

function Q1918205Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918205Trigger] LightUpTriggerIn")
end

function Q1918205Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918205Trigger] TriggerOut")
end

return Q1918205Trigger
