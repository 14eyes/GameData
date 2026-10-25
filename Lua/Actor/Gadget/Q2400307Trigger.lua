require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400307Trigger = class("Q2400307Trigger", GadgetActorProxy)
Q2400307Trigger.defaultAlias = "Q2400307Trigger"
local Q24003ClientConfig = require("Quest/Client/Q24003ClientConfig")

local this
local subIDs = Q24003ClientConfig.SubIDs
local npcs = Q24003ClientConfig.Npcs
local points = Q24003ClientConfig.Points
local datas = Q24003ClientConfig.Datas

function Q2400307Trigger:OnPostDataPrepare()
    print("[MainId: 24003][Trigger: Q2400307Trigger] OnPostDataPrepare")
    this = self
end

function Q2400307Trigger:OnPostComponentPrepare()
    print("[MainId: 24003][Trigger: Q2400307Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400307Trigger:TriggerIn()
    print("[MainId: 24003][Trigger: Q2400307Trigger] TriggerIn")
    actorMgr:GetActor("24003"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("24003")
        actor:CreateQuestNpcById(2400307, npcs.Npc5062Data.id, 1)
        actor:CreateQuestNpcById(2400307, npcs.Npc5063Data.id, 2)
        actor:RequestInteraction(npcs.Npc5062Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q2400307Trigger:PreTriggerIn()
    print("[MainId: 24003][Trigger: Q2400307Trigger] PreTriggerIn")
end

function Q2400307Trigger:LightUpTriggerIn()
    print("[MainId: 24003][Trigger: Q2400307Trigger] LightUpTriggerIn")
end

function Q2400307Trigger:TriggerOut()
    print("[MainId: 24003][Trigger: Q2400307Trigger] TriggerOut")
end

return Q2400307Trigger
