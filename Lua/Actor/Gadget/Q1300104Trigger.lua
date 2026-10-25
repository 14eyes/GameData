require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300104Trigger = class("Q1300104Trigger", GadgetActorProxy)
Q1300104Trigger.defaultAlias = "Q1300104Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300104Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300104Trigger] OnPostDataPrepare")
    this = self
end

function Q1300104Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300104Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300104Trigger] TriggerIn")
    local actor = actorMgr:GetActor("13001")
    actor:CreateQuestNpcById(1300104, npcs.Npc1050Data.id, 1)
    actor:RequestInteraction(npcs.Npc1050Data.alias)
    this:DestroySelf()
end

function Q1300104Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300104Trigger] TriggerOut")
end

return Q1300104Trigger
