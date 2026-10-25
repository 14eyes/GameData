require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74087NPCTrigger = class("Q74087NPCTrigger", GadgetActorProxy)
Q74087NPCTrigger.defaultAlias = "Q74087NPCTrigger"
local Q74087ClientConfig = require("Quest/Client/Q74087ClientConfig")

local this
local subIDs = Q74087ClientConfig.SubIDs
local npcs = Q74087ClientConfig.Npcs
local points = Q74087ClientConfig.Points

function Q74087NPCTrigger:OnPostDataPrepare()
    print("[MainId: 74087][Trigger: Q74087NPCTrigger] OnPostDataPrepare")
    this = self
end

function Q74087NPCTrigger:OnPostComponentPrepare()
    print("[MainId: 74087][Trigger: Q74087NPCTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74087NPCTrigger:TriggerIn()
    print("[MainId: 74087][Trigger: Q74087NPCTrigger] TriggerIn")
    local actor = actorMgr:GetActor("74087")
    actor:CreateQuestNpcById(7408703, npcs.Npc21084Data.id, 1)
    actor:CreateQuestNpcById(7408703, npcs.Npc5259Data.id, 2)
end

function Q74087NPCTrigger:PreTriggerIn()
    print("[MainId: 74087][Trigger: Q74087NPCTrigger] PreTriggerIn")
end

function Q74087NPCTrigger:LightUpTriggerIn()
    print("[MainId: 74087][Trigger: Q74087NPCTrigger] LightUpTriggerIn")
end

function Q74087NPCTrigger:TriggerOut()
    print("[MainId: 74087][Trigger: Q74087NPCTrigger] TriggerOut")
    local actor = actorMgr:GetActor("74087")
    actor:DestroyQuestNpcActor(npcs.Npc21084Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc5259Data.alias, 3)
end

return Q74087NPCTrigger
