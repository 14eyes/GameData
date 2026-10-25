require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918202Trigger = class("Q1918202Trigger", GadgetActorProxy)
Q1918202Trigger.defaultAlias = "Q1918202Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918202Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918202Trigger] OnPostDataPrepare")
    this = self
end

function Q1918202Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19182)
end

function Q1918202Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918202Trigger] TriggerIn")
    actorMgr:GetActor("19182"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19182")
        actor:CreateQuestNpcById(1918202, npcs.Npc518Data.id, 0)
        actor:RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918202Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918202Trigger] PreTriggerIn")
end

function Q1918202Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918202Trigger] LightUpTriggerIn")
end

function Q1918202Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918202Trigger] TriggerOut")
end

return Q1918202Trigger
