require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger = class("Q14038Trigger", GadgetActorProxy)
Q14038Trigger.defaultAlias = "Q14038Trigger"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger] OnPostDataPrepare")
    this = self
end

function Q14038Trigger:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 50, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger] TriggerIn")
    actorMgr:GetActor("14038"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14038")
        actor:CreateQuestNpcById(1403812, npcs.Npc14258Data.id, 0, false, 0)
        actor:CreateQuestNpcById(1403812, npcs.Npc14259Data.id, 0, false, 0)
        actor:CreateQuestNpcById(1403812, npcs.Npc14260Data.id, 0, false, 0)
        actor:CreateQuestNpcById(1403812, npcs.Npc14261Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc14258Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14038Trigger:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger] PreTriggerIn")
end

function Q14038Trigger:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger] LightUpTriggerIn")
    actorMgr:GetActor("14038"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14038Trigger:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger] TriggerOut")
end

return Q14038Trigger
