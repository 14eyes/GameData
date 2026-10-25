require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger_NPC = class("Q74216Trigger_NPC", GadgetActorProxy)
Q74216Trigger_NPC.defaultAlias = "Q74216Trigger_NPC"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Quest74216.NpcDestroy(arg1, arg2, arg3)
    actorMgr:GetActor("74216"):SafeDestroyQuestNpc(arg2, arg3)
end

function Q74216Trigger_NPC:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger_NPC] OnPostDataPrepare")
    this = self
end

function Q74216Trigger_NPC:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger_NPC] OnPostComponentPrepare")
    this:AddComponentTrigger(83.48508, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74216)
end

function Q74216Trigger_NPC:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_NPC] TriggerIn")
end

function Q74216Trigger_NPC:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_NPC] PreTriggerIn")
end

function Q74216Trigger_NPC:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_NPC] LightUpTriggerIn")
end

function Q74216Trigger_NPC:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger_NPC] TriggerOut")
    this:NpcDestroy(npcs.Npc5337Data.alias, 3)
    this:NpcDestroy(npcs.Npc5338Data.alias, 3)
    this:DestroySelf()
end

return Q74216Trigger_NPC
