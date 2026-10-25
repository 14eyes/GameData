require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300105TriggerWalk = class("Q1300105TriggerWalk", GadgetActorProxy)
Q1300105TriggerWalk.defaultAlias = "Q1300105TriggerWalk"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300105TriggerWalk:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300105TriggerWalk] OnPostDataPrepare")
    this = self
end

function Q1300105TriggerWalk:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300105TriggerWalk] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300105TriggerWalk:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300105TriggerWalk] TriggerIn")
    local actor = actorMgr:GetActor("13001")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1050Data.alias, 13001)
    actor:NpcWalkToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "Q1300105_N1050_02").pos)
    local v = actorMgr:GetActor("Q1300105TriggerNearCall")
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor("Q1300105TriggerWalk")
    if actor2 ~= nil then
        actor2:DestroySelf()
    end
end

function Q1300105TriggerWalk:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300105TriggerWalk] TriggerOut")
end

return Q1300105TriggerWalk
