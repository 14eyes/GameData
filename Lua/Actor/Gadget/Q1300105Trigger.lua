require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300105Trigger = class("Q1300105Trigger", GadgetActorProxy)
Q1300105Trigger.defaultAlias = "Q1300105Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300105Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300105Trigger] OnPostDataPrepare")
    this = self
end

function Q1300105Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300105Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300105Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1300105)
    local actor = actorMgr:GetActor("13001")
    actor:ClearNarratorTask()
    this:DestroySelf()
    actor:GetQuestNpcActor(npcs.Npc1050Data.alias, 13001):Standby()
end

function Q1300105Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300105Trigger] TriggerOut")
end

return Q1300105Trigger
