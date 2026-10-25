require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400205Trigger = class("Q1400205Trigger", GadgetActorProxy)
Q1400205Trigger.defaultAlias = "Q1400205Trigger"
local Q14002ClientConfig = require("Quest/Client/Q14002ClientConfig")

local this
local subIDs = Q14002ClientConfig.SubIDs
local npcs = Q14002ClientConfig.Npcs
local points = Q14002ClientConfig.Points

function Q1400205Trigger:OnPostDataPrepare()
    print("[MainId: 14002][Trigger: Q1400205Trigger] OnPostDataPrepare")
    this = self
end

function Q1400205Trigger:OnPostComponentPrepare()
    print("[MainId: 14002][Trigger: Q1400205Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400205Trigger:TriggerIn()
    print("[MainId: 14002][Trigger: Q1400205Trigger] TriggerIn")
    actorMgr:GetActor("14002"):RequestInteraction(npcs.Npc1070Data.alias)
    this:DestroySelf()
end

function Q1400205Trigger:PreTriggerIn()
    print("[MainId: 14002][Trigger: Q1400205Trigger] PreTriggerIn")
    actorMgr:GetActor("14002"):CreateQuestNpcById(1400205, npcs.Npc1070Data.id, 0)
end

function Q1400205Trigger:LightUpTriggerIn()
    print("[MainId: 14002][Trigger: Q1400205Trigger] LightUpTriggerIn")
    actorMgr:GetActor("14002"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q1400205Trigger:TriggerOut()
    print("[MainId: 14002][Trigger: Q1400205Trigger] TriggerOut")
end

return Q1400205Trigger
