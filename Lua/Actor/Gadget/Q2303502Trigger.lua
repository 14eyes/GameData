require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303502Trigger = class("Q2303502Trigger", GadgetActorProxy)
Q2303502Trigger.defaultAlias = "Q2303502Trigger"
local Q23035ClientConfig = require("Quest/Client/Q23035ClientConfig")

local this
local subIDs = Q23035ClientConfig.SubIDs
local npcs = Q23035ClientConfig.Npcs
local gadgets = Q23035ClientConfig.Gadgets

function Q2303502Trigger:OnPostDataPrepare()
    print("[MainId: 23035][Trigger: Q2303502Trigger] OnPostDataPrepare")
    this = self
end

function Q2303502Trigger:OnPostComponentPrepare()
    print("[MainId: 23035][Trigger: Q2303502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303502Trigger:TriggerIn()
    print("[MainId: 23035][Trigger: Q2303502Trigger] TriggerIn")
end

function Q2303502Trigger:TriggerOut()
    print("[MainId: 23035][Trigger: Q2303502Trigger] TriggerOut")
    actorMgr:GetActor("23035")
    local actor = actorMgr:GetActor("23035")
    actor:GetQuestNpcActor(npcs.Npc12717Data01.alias):DisableInteeHeadCtrl(false)
    actor:GetQuestNpcActor(npcs.Npc1058Data01.alias):DisableInteeHeadCtrl(false)
    local v = actorMgr:GetActor("23035")
    v:SafeDestroyQuestNpc(npcs.Npc12717Data01.alias, 1074)
    v:SafeDestroyQuestNpc(npcs.Npc1058Data01.alias, 1074)
    this:DestroySelf()
end

return Q2303502Trigger
