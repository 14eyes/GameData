require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918204Trigger = class("Q1918204Trigger", GadgetActorProxy)
Q1918204Trigger.defaultAlias = "Q1918204Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918204Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918204Trigger] OnPostDataPrepare")
    this = self
end

function Q1918204Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918204Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 20, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19182)
end

function Q1918204Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918204Trigger] TriggerIn")
    actorMgr:GetActor("19182"):RequestInteraction(npcs.Npc1073Data.alias, "", true)
    this:DestroySelf()
end

function Q1918204Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918204Trigger] PreTriggerIn")
end

function Q1918204Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918204Trigger] LightUpTriggerIn")
end

function Q1918204Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918204Trigger] TriggerOut")
end

return Q1918204Trigger
