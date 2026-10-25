require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger2 = class("Q14009Trigger2", GadgetActorProxy)
Q14009Trigger2.defaultAlias = "Q14009Trigger2"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger2:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger2] OnPostDataPrepare")
    this = self
end

function Q14009Trigger2:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger2:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger2] TriggerIn")
    local actor = actorMgr:GetActor("14009")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.8)
    actor:NpcForceAvatarWalkByDist(questNpcActor, 5, 10)
    actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 10, 5, -1, function(arg1)
        print("OnFinish")
        local questNpcActor = actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc1076Data.alias)
        questNpcActor:SyncPos(2)
        if questNpcActor.BeFollowState == BeFollowState.FAILED then
            return
        end

        questNpcActor:Standby()
    end, nil, nil, function(arg1)
        print("OnMovePause")
        local questNpcActor = actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc1076Data.alias)
        questNpcActor:TryPauseCurAutoNarrator()
        questNpcActor:Standby()
        questNpcActor:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = questNpcActor:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        print("OnMoveResume")
        local questNpcActor = actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc1076Data.alias)
        questNpcActor:TryResumeCurAutoNarrator()
        questNpcActor:ClearSteerToAutonomyTask()
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:ResumeMove()
    end, nil, true)

    local v = actorMgr:GetActor("14009")
    print("\229\188\128\232\189\166\229\188\128\229\167\139\229\155\158\232\176\131")
    local questNpcActor2 = v:GetQuestNpcActor(npcs.Npc1076Data.alias)
    v:NpcNarratorOnlyTaskByData(questNpcActor2, datas.Narrator_1400907, function(arg1)
        print("\229\188\128\232\189\166finish\229\155\158\232\176\131 ")
        local actor = actorMgr:GetActor("14009")
        if actor ~= actorMgr.dummyActor then
            actor:CallDelayByQuest("2", 0.1, function(arg1)
                print("calldelay\229\155\158\232\176\131")
                local actor = actorMgr:GetActor("14009")
                local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1076Data.alias)
                if questNpcActor.uActor ~= nil then
                    if questNpcActor ~= actorMgr.dummyActor then
                        print("\229\136\164\230\150\173NPC\229\156\168\231\154\132\229\155\158\232\176\131")
                        if actor:GetQuestVar(1400912, 1) == 0 then
                            local dummyActor = actorMgr:GetActor("14009")
                            if dummyActor ~= actorMgr.dummyActor then
                                dummyActor:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
                            end

                            local v = dummyActor:GetQuestNpcActor(npcs.Npc1076Data.alias)
                            v:ClearFollowTask()
                            v:Standby()
                            print("\229\174\140\230\136\144\228\187\187\229\138\161\229\155\158\232\176\131")
                            actorUtils.FinishQuestID(false, 1400912)
                        end
                    end
                end
            end)
        end
    end, 14009)

    this:DestroySelf()
end

function Q14009Trigger2:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger2] PreTriggerIn")
end

function Q14009Trigger2:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger2] LightUpTriggerIn")
end

function Q14009Trigger2:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger2] TriggerOut")
end

return Q14009Trigger2
