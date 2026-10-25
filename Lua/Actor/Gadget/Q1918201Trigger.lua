require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918201Trigger = class("Q1918201Trigger", GadgetActorProxy)
Q1918201Trigger.defaultAlias = "Q1918201Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918201Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918201Trigger] OnPostDataPrepare")
    this = self
end

function Q1918201Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918201Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918201Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918201Trigger] TriggerIn")
    actorMgr:GetActor("19182"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19182")
        actor:CreateQuestNpcById(1918201, npcs.Npc518Data.id, 0)
        actor:RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918201Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918201Trigger] PreTriggerIn")
end

function Q1918201Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918201Trigger] LightUpTriggerIn")
    actorMgr:GetActor("19182"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q1918201Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918201Trigger] TriggerOut")
end

return Q1918201Trigger
