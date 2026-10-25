require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300107Trigger = class("Q1300107Trigger", GadgetActorProxy)
Q1300107Trigger.defaultAlias = "Q1300107Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300107Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300107Trigger] OnPostDataPrepare")
    this = self
end

function Q1300107Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300107Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300107Trigger] TriggerIn")
    local actor = actorMgr:GetActor("13001")
    actor:CreateQuestNpcById(1300107, npcs.Npc12603Data.id, 2)
    actor:RequestInteraction(npcs.Npc12603Data.alias)
end

function Q1300107Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300107Trigger] TriggerOut")
end

return Q1300107Trigger
