require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24004Trigger = class("Q24004Trigger", GadgetActorProxy)
Q24004Trigger.defaultAlias = "Q24004Trigger"
local Q24004ClientConfig = require("Quest/Client/Q24004ClientConfig")

local this
local subIDs = Q24004ClientConfig.SubIDs
local npcs = Q24004ClientConfig.Npcs
local points = Q24004ClientConfig.Points
local datas = Q24004ClientConfig.Datas

function Q24004Trigger:OnPostDataPrepare()
    print("[MainId: 24004][Trigger: Q24004Trigger] OnPostDataPrepare")
    this = self
end

function Q24004Trigger:OnPostComponentPrepare()
    print("[MainId: 24004][Trigger: Q24004Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q24004Trigger:TriggerIn()
    print("[MainId: 24004][Trigger: Q24004Trigger] TriggerIn")
    actorMgr:GetActor("24004"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("24004")
        actor:CreateQuestNpcById(2400406, npcs.Npc5062Data.id, 1)
        actor:CreateQuestNpcById(2400406, npcs.Npc5063Data.id, 2)
        actor:CreateQuestNpcById(2400406, npcs.Npc5021Data.id, 3)
        actor:RequestInteraction(npcs.Npc5062Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q24004Trigger:PreTriggerIn()
    print("[MainId: 24004][Trigger: Q24004Trigger] PreTriggerIn")
end

function Q24004Trigger:LightUpTriggerIn()
    print("[MainId: 24004][Trigger: Q24004Trigger] LightUpTriggerIn")
end

function Q24004Trigger:TriggerOut()
    print("[MainId: 24004][Trigger: Q24004Trigger] TriggerOut")
end

return Q24004Trigger
