require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401501_Trigger = class("Q1401501_Trigger", GadgetActorProxy)
Q1401501_Trigger.defaultAlias = "Q1401501_Trigger"
local Q14015ClientConfig = require("Quest/Client/Q14015ClientConfig")

local this
local subIDs = Q14015ClientConfig.SubIDs
local npcs = Q14015ClientConfig.Npcs
local points = Q14015ClientConfig.Points
local datas = Q14015ClientConfig.Datas

function Q1401501_Trigger:OnPostDataPrepare()
    print("[MainId: 14015][Trigger: Q1401501_Trigger] OnPostDataPrepare")
    this = self
end

function Q1401501_Trigger:OnPostComponentPrepare()
    print("[MainId: 14015][Trigger: Q1401501_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401501_Trigger:TriggerIn()
    print("[MainId: 14015][Trigger: Q1401501_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14015")
    actor:CreateQuestNpcById(1401501, npcs.Npc1075Data.id, 0)
    actor:RequestInteraction(npcs.Npc1075Data.alias, nil, true)
    this:DestroySelf()
end

function Q1401501_Trigger:PreTriggerIn()
    print("[MainId: 14015][Trigger: Q1401501_Trigger] PreTriggerIn")
end

function Q1401501_Trigger:LightUpTriggerIn()
    print("[MainId: 14015][Trigger: Q1401501_Trigger] LightUpTriggerIn")
end

function Q1401501_Trigger:TriggerOut()
    print("[MainId: 14015][Trigger: Q1401501_Trigger] TriggerOut")
end

return Q1401501_Trigger
