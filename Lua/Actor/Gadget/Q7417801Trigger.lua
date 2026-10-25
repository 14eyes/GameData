require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7417801Trigger = class("Q7417801Trigger", GadgetActorProxy)
Q7417801Trigger.defaultAlias = "Q7417801Trigger"
local Q74178ClientConfig = require("Quest/Client/Q74178ClientConfig")

local this
local subIDs = Q74178ClientConfig.SubIDs
local npcs = Q74178ClientConfig.Npcs
local datas = Q74178ClientConfig.Datas

function Q7417801Trigger:OnPostDataPrepare()
    print("[MainId: 74178][Trigger: Q7417801Trigger] OnPostDataPrepare")
    this = self
end

function Q7417801Trigger:OnPostComponentPrepare()
    print("[MainId: 74178][Trigger: Q7417801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7417801Trigger:TriggerIn()
    print("[MainId: 74178][Trigger: Q7417801Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74178")
    actor:CreateQuestNpcById(21275, npcs.Npc21275Data.id, 0)
    actor:CreateQuestNpcById(21275, npcs.Npc21276Data.id, 0)
    actor:RequestInteraction(npcs.Npc21275Data.alias, "", true)
    this:DestroySelf()
end

function Q7417801Trigger:PreTriggerIn()
    print("[MainId: 74178][Trigger: Q7417801Trigger] PreTriggerIn")
end

function Q7417801Trigger:LightUpTriggerIn()
    print("[MainId: 74178][Trigger: Q7417801Trigger] LightUpTriggerIn")
end

function Q7417801Trigger:TriggerOut()
    print("[MainId: 74178][Trigger: Q7417801Trigger] TriggerOut")
end

return Q7417801Trigger
