require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14017Trigger = class("Q14017Trigger", GadgetActorProxy)
Q14017Trigger.defaultAlias = "Q14017Trigger"
local Q14017ClientConfig = require("Quest/Client/Q14017ClientConfig")

local this
local subIDs = Q14017ClientConfig.SubIDs
local npcs = Q14017ClientConfig.Npcs
local datas = Q14017ClientConfig.Datas

function Q14017Trigger:OnPostDataPrepare()
    print("[MainId: 14017][Trigger: Q14017Trigger] OnPostDataPrepare")
    this = self
end

function Q14017Trigger:OnPostComponentPrepare()
    print("[MainId: 14017][Trigger: Q14017Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14017Trigger:TriggerIn()
    print("[MainId: 14017][Trigger: Q14017Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14017")
    actor:CreateQuestNpcById(1401711, npcs.Npc13774Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13775Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13776Data.id, 0)
    actor:CreateQuestNpcById(1401711, npcs.Npc13777Data.id, 0)
    actor:GetQuestNpcActor(npcs.Npc13774Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
    actor:GetQuestNpcActor(npcs.Npc13775Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    actor:GetQuestNpcActor(npcs.Npc13776Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
    actor:GetQuestNpcActor(npcs.Npc13777Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    actor:RequestInteraction(npcs.Npc13774Data.alias, "", true)
    this:DestroySelf()
end

function Q14017Trigger:PreTriggerIn()
    print("[MainId: 14017][Trigger: Q14017Trigger] PreTriggerIn")
end

function Q14017Trigger:LightUpTriggerIn()
    print("[MainId: 14017][Trigger: Q14017Trigger] LightUpTriggerIn")
end

function Q14017Trigger:TriggerOut()
    print("[MainId: 14017][Trigger: Q14017Trigger] TriggerOut")
end

return Q14017Trigger
