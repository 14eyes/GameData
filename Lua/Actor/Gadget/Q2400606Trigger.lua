require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400606Trigger = class("Q2400606Trigger", GadgetActorProxy)
Q2400606Trigger.defaultAlias = "Q2400606Trigger"
local Q24006ClientConfig = require("Quest/Client/Q24006ClientConfig")

local this
local subIDs = Q24006ClientConfig.SubIDs
local npcs = Q24006ClientConfig.Npcs
local points = Q24006ClientConfig.Points
local datas = Q24006ClientConfig.Datas

function Q2400606Trigger:OnPostDataPrepare()
    print("[MainId: 24006][Trigger: Q2400606Trigger] OnPostDataPrepare")
    this = self
end

function Q2400606Trigger:OnPostComponentPrepare()
    print("[MainId: 24006][Trigger: Q2400606Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400606Trigger:TriggerIn()
    print("[MainId: 24006][Trigger: Q2400606Trigger] TriggerIn")
    actorMgr:GetActor("24006"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("24006")
        actor:CreateQuestNpcById(2400606, npcs.Npc5062Data.id, 1)
        actor:CreateQuestNpcById(2400606, npcs.Npc5063Data.id, 2)
        actor:CreateQuestNpcById(2400606, npcs.Npc5021Data.id, 3)
        actor:RequestInteraction(npcs.Npc5062Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q2400606Trigger:PreTriggerIn()
    print("[MainId: 24006][Trigger: Q2400606Trigger] PreTriggerIn")
end

function Q2400606Trigger:LightUpTriggerIn()
    print("[MainId: 24006][Trigger: Q2400606Trigger] LightUpTriggerIn")
end

function Q2400606Trigger:TriggerOut()
    print("[MainId: 24006][Trigger: Q2400606Trigger] TriggerOut")
end

return Q2400606Trigger
