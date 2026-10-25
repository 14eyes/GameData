require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418426_TriggerIn = class("Q7418426_TriggerIn", GadgetActorProxy)
Q7418426_TriggerIn.defaultAlias = "Q7418426_TriggerIn"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q7418426_TriggerIn:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q7418426_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q7418426_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q7418426_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74184)
end

function Q7418426_TriggerIn:TriggerIn()
    print("[MainId: 74184][Trigger: Q7418426_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q7418426_TriggerIn:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q7418426_TriggerIn] PreTriggerIn")
    local actor = actorMgr:GetActor("74184")
    actor:DeployStoryByQuest(147418401)
    actor:CreateQuestNpcById(7418426, npcs.Npc21355Data.id, 0)
    actor:RequestInteraction(npcs.Npc21355Data.alias, "", true)
end

function Q7418426_TriggerIn:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q7418426_TriggerIn] LightUpTriggerIn")
end

function Q7418426_TriggerIn:TriggerOut()
    print("[MainId: 74184][Trigger: Q7418426_TriggerIn] TriggerOut")
end

return Q7418426_TriggerIn
