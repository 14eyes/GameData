require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918401Trigger = class("Q1918401Trigger", GadgetActorProxy)
Q1918401Trigger.defaultAlias = "Q1918401Trigger"
local Q19184ClientConfig = require("Quest/Client/Q19184ClientConfig")

local this
local subIDs = Q19184ClientConfig.SubIDs
local npcs = Q19184ClientConfig.Npcs
local points = Q19184ClientConfig.Points

function Q1918401Trigger:OnPostDataPrepare()
    print("[MainId: 19184][Trigger: Q1918401Trigger] OnPostDataPrepare")
    this = self
end

function Q1918401Trigger:OnPostComponentPrepare()
    print("[MainId: 19184][Trigger: Q1918401Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(12, 4, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19184)
end

function Q1918401Trigger:TriggerIn()
    print("[MainId: 19184][Trigger: Q1918401Trigger] TriggerIn")
    actorMgr:GetActor("19184"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19184")
        actor:CreateQuestNpcById(1918401, npcs.Npc518Data.id, 0)
        actor:RequestInteraction(npcs.Npc518Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1918401Trigger:PreTriggerIn()
    print("[MainId: 19184][Trigger: Q1918401Trigger] PreTriggerIn")
end

function Q1918401Trigger:LightUpTriggerIn()
    print("[MainId: 19184][Trigger: Q1918401Trigger] LightUpTriggerIn")
end

function Q1918401Trigger:TriggerOut()
    print("[MainId: 19184][Trigger: Q1918401Trigger] TriggerOut")
end

return Q1918401Trigger
