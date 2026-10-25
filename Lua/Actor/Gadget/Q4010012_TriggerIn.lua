require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010012_TriggerIn = class("Q4010012_TriggerIn", GadgetActorProxy)
Q4010012_TriggerIn.defaultAlias = "Q4010012_TriggerIn"
local Q40100ClientConfig = require("Quest/Client/Q40100ClientConfig")

local this
local subIDs = Q40100ClientConfig.SubIDs
local npcs = Q40100ClientConfig.Npcs
local points = Q40100ClientConfig.Points
local datas = Q40100ClientConfig.Datas

function Q4010012_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010012_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010012_TriggerIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40100")
    actor:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc1067Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 3)
    actor:RequestInteraction(npcs.Npc13153Data.alias)
    this:DestroySelf()
end

function Q4010012_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010012_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010012_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010012_TriggerIn
