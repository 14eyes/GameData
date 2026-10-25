require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400706Trigger = class("Q2400706Trigger", GadgetActorProxy)
Q2400706Trigger.defaultAlias = "Q2400706Trigger"
local Q24007ClientConfig = require("Quest/Client/Q24007ClientConfig")

local this
local subIDs = Q24007ClientConfig.SubIDs
local npcs = Q24007ClientConfig.Npcs
local points = Q24007ClientConfig.Points

function Q2400706Trigger:OnPostDataPrepare()
    print("[MainId: 24007][Trigger: Q2400706Trigger] OnPostDataPrepare")
    this = self
end

function Q2400706Trigger:OnPostComponentPrepare()
    print("[MainId: 24007][Trigger: Q2400706Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400706Trigger:TriggerIn()
    print("[MainId: 24007][Trigger: Q2400706Trigger] TriggerIn")
    actorMgr:GetActor("24007"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("24007")
        actor:CreateQuestNpcById(2400706, npcs.Npc5062Data.id, 2)
        actor:CreateQuestNpcById(2400706, npcs.Npc5021Data.id, 1)
        actor:RequestInteraction(npcs.Npc5021Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q2400706Trigger:PreTriggerIn()
    print("[MainId: 24007][Trigger: Q2400706Trigger] PreTriggerIn")
end

function Q2400706Trigger:LightUpTriggerIn()
    print("[MainId: 24007][Trigger: Q2400706Trigger] LightUpTriggerIn")
end

function Q2400706Trigger:TriggerOut()
    print("[MainId: 24007][Trigger: Q2400706Trigger] TriggerOut")
end

return Q2400706Trigger
