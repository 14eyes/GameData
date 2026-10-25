require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger4 = class("Q14007Trigger4", GadgetActorProxy)
Q14007Trigger4.defaultAlias = "Q14007Trigger4"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas
local n = 0
local v = 0

function Q14007Trigger4:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger4] OnPostDataPrepare")
    this = self
end

function Q14007Trigger4:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger4:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger4] TriggerIn")
    local actor = actorMgr:GetActor("14007")
    if actor:GetSubQuestState(1400719) == 2 then
        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13503Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:SetWalkSpeedRatio(0.8)
        actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 10, 5, -1, function(arg1)
            local questNpcActor = actorMgr:GetActor("14007"):GetQuestNpcActor(npcs.Npc13503Data.alias)
            questNpcActor:SyncPos(2)
            if questNpcActor.BeFollowState == BeFollowState.FAILED then
                return
            end

            questNpcActor:Standby()
            local pos = questNpcActor:GetPos()
            local questNpcActor2 = actorMgr:GetActor("14007"):GetQuestNpcActor(npcs.Npc5037Data.alias)
            local n2 = questNpcActor2:GetPos() - pos
            questNpcActor:SteerToTask(n2, 1, true, true)
            questNpcActor2:LookAt({x = 3541.7, y = 446.5, z = 4435.8})
            questNpcActor2:DoFreeStyle(1200, true, nil, true, true, false, false)
            v = 1
            if n == 1 then
                actorMgr:CreateActorWithPos("Q14007Trigger5", "Actor/Gadget/Q14007Trigger5", 70900002, 0, points.TPos_Q14007Trigger5.pos, points.TPos_Q14007Trigger5.rot, true, false, 3)
            end
        end, nil, nil, function(arg1)
            local questNpcActor = actorMgr:GetActor(Q14007ClientConfig.ActorAlias):GetQuestNpcActor(npcs.Npc13503Data.alias)
            questNpcActor:TryPauseCurAutoNarrator()
            questNpcActor:Standby()
            questNpcActor:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = questNpcActor:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            local questNpcActor = actorMgr:GetActor(Q14007ClientConfig.ActorAlias):GetQuestNpcActor(npcs.Npc13503Data.alias)
            questNpcActor:TryResumeCurAutoNarrator()
            questNpcActor:ClearSteerToAutonomyTask()
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:ResumeMove()
        end, nil, true)

        local actor2 = actorMgr:GetActor("14007")
        print("\229\188\128\232\189\166\229\188\128\229\167\139\229\155\158\232\176\131")
        local questNpcActor2 = actor2:GetQuestNpcActor(npcs.Npc13503Data.alias)
        actor2:NpcNarratorOnlyTaskByData(questNpcActor2, datas.Narrator_1400704, function(arg1)
            print("\229\188\128\232\189\166finish\229\155\158\232\176\131 ")
            local actor = actorMgr:GetActor("14007")
            if actor ~= actorMgr.dummyActor then
                actor:CallDelayByQuest("1", 0.1, function(arg1)
                    print("calldelay\229\155\158\232\176\131")
                    local actor = actorMgr:GetActor("14007")
                    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13503Data.alias)
                    if questNpcActor.uActor ~= nil then
                        if questNpcActor ~= actorMgr.dummyActor then
                            print("\229\136\164\230\150\173NPC\229\156\168\231\154\132\229\155\158\232\176\131")
                            if actor:GetQuestVar(1400719, 3) == 0 then
                                n = 1
                                if v == 1 then
                                    actorUtils.FinishQuestID(false, 1400719)
                                end
                            end
                        end
                    end
                end)
            end
        end, 14007)
    end

    this:DestroySelf()
end

function Q14007Trigger4:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger4] PreTriggerIn")
end

function Q14007Trigger4:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger4] LightUpTriggerIn")
end

function Q14007Trigger4:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger4] TriggerOut")
end

return Q14007Trigger4
