require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74088NPCTrigger = class("Q74088NPCTrigger", GadgetActorProxy)
Q74088NPCTrigger.defaultAlias = "Q74088NPCTrigger"
local Q74088ClientConfig = require("Quest/Client/Q74088ClientConfig")

local this
local subIDs = Q74088ClientConfig.SubIDs
local npcs = Q74088ClientConfig.Npcs
local points = Q74088ClientConfig.Points

function Q74088NPCTrigger:OnPostDataPrepare()
    print("[MainId: 74088][Trigger: Q74088NPCTrigger] OnPostDataPrepare")
    this = self
end

function Q74088NPCTrigger:OnPostComponentPrepare()
    print("[MainId: 74088][Trigger: Q74088NPCTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74088NPCTrigger:TriggerIn()
    print("[MainId: 74088][Trigger: Q74088NPCTrigger] TriggerIn")
    local actor = actorMgr:GetActor("74088")
    actor:CreateQuestNpcById(7408806, npcs.Npc21084Data.id, 1)
    actor:CreateQuestNpcById(7408806, npcs.Npc5259Data.id, 2)
end

function Q74088NPCTrigger:PreTriggerIn()
    print("[MainId: 74088][Trigger: Q74088NPCTrigger] PreTriggerIn")
end

function Q74088NPCTrigger:LightUpTriggerIn()
    print("[MainId: 74088][Trigger: Q74088NPCTrigger] LightUpTriggerIn")
end

function Q74088NPCTrigger:TriggerOut()
    print("[MainId: 74088][Trigger: Q74088NPCTrigger] TriggerOut")
    local actor = actorMgr:GetActor("74088")
    actor:DestroyQuestNpcActor(npcs.Npc21084Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc5259Data.alias, 3)
end

return Q74088NPCTrigger
