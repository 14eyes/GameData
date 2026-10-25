require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72279 = class("Quest72279", QuestActorProxy)
Quest72279.defaultAlias = "Quest72279"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas
local n = 0
local v = 0

function Quest72279:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72279:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227919"] = self.OnSubStart7227919,
        ["7227901"] = self.OnSubStart7227901,
        ["7227902"] = self.OnSubStart7227902,
        ["7227903"] = self.OnSubStart7227903,
        ["7227916"] = self.OnSubStart7227916,
        ["7227920"] = self.OnSubStart7227920,
        ["7227917"] = self.OnSubStart7227917,
        ["7227912"] = self.OnSubStart7227912,
        ["7227904"] = self.OnSubStart7227904,
        ["7227905"] = self.OnSubStart7227905,
        ["7227918"] = self.OnSubStart7227918,
        ["7227906"] = self.OnSubStart7227906,
        ["7227907"] = self.OnSubStart7227907,
        ["7227911"] = self.OnSubStart7227911,
        ["7227913"] = self.OnSubStart7227913,
        ["7227908"] = self.OnSubStart7227908,
        ["7227921"] = self.OnSubStart7227921,
        ["7227914"] = self.OnSubStart7227914,
        ["7227915"] = self.OnSubStart7227915,
        ["7227909"] = self.OnSubStart7227909,
        ["7227910"] = self.OnSubStart7227910
    }
end

function Quest72279:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227919"] = self.OnSubFinish7227919,
        ["7227901"] = self.OnSubFinish7227901,
        ["7227902"] = self.OnSubFinish7227902,
        ["7227903"] = self.OnSubFinish7227903,
        ["7227916"] = self.OnSubFinish7227916,
        ["7227920"] = self.OnSubFinish7227920,
        ["7227917"] = self.OnSubFinish7227917,
        ["7227912"] = self.OnSubFinish7227912,
        ["7227904"] = self.OnSubFinish7227904,
        ["7227905"] = self.OnSubFinish7227905,
        ["7227918"] = self.OnSubFinish7227918,
        ["7227906"] = self.OnSubFinish7227906,
        ["7227907"] = self.OnSubFinish7227907,
        ["7227911"] = self.OnSubFinish7227911,
        ["7227913"] = self.OnSubFinish7227913,
        ["7227908"] = self.OnSubFinish7227908,
        ["7227921"] = self.OnSubFinish7227921,
        ["7227914"] = self.OnSubFinish7227914,
        ["7227915"] = self.OnSubFinish7227915,
        ["7227909"] = self.OnSubFinish7227909,
        ["7227910"] = self.OnSubFinish7227910
    }
end

function Quest72279:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7227917"] = self.OnSubFailed7227917}
end

function Quest72279:Start()
    print("Start")
end

function Quest72279:OnDestroy()
    print("OnDestroy")
end

function Quest72279:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72279:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72279:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3081Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20567Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20568Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20569Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20565Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20566Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30163Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30163Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q72279Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q72279Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q72279Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q72279Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q72279Trigger4", 3, false)
    self:ClearSpeechBubbleTask()
    self:BattleUITerminate()
    self:CountDownUITerminate()
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72279:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72279:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72279:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72279:AddScore()
    local n2 = math.random(7, 12)
    local subQuestState = self:GetSubQuestState(7227916)
    local subQuestState2 = self:GetSubQuestState(7227917)
    local isTalkDialogActive = self:IsTalkDialogActive()
    print("q7227916state" .. subQuestState)
    print("q7227917state" .. subQuestState2)
    if isTalkDialogActive == false and subQuestState == 3 and subQuestState2 ~= 3 then
        self:CallDelay(n2, function(arg1)
            local n2 = math.random(3, 5)
            if 100 <= v + n2 then
                local n3 = 100 - v
                v = 100
                arg1:BattleUIChange(n, 0, v, n3)
            else
                v = v + n2
                arg1:BattleUIChange(n, 0, v, n2)
            end
        end)
    end

    self:CallDelay(n2, function(arg1)
        local subQuestState = arg1:GetSubQuestState(7227916)
        local v = arg1:GetSubQuestState(7227917)
        print("q7227916state" .. subQuestState)
        print("q7227917state" .. v)
        if subQuestState == 3 and v ~= 3 then
            print("\229\134\141\230\172\161\229\138\160\229\136\134")
            arg1:AddScore()
        end
    end)
end

function Quest72279:move()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1044Data.alias, 72279)
    if self:GetSubQuestState(7227917) == 2 then
        actor.NpcRunToTask(actor, questNpcActor, sceneData:GetDummyPoint(3, "Q7227904_N1033").pos, function(arg1)
            questNpcActor:Standby()
            questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q7227904_N1033").rot))
            questNpcActor:DoFreeStyle(1180, true, nil, true, true, false)
            actor:CallDelay(10, function(arg1)
                if arg1:GetSubQuestState(7227917) == 2 then
                    actor:NpcRunToTask(questNpcActor, sceneData:GetDummyPoint(3, "Q7227917_N1044").pos, function(arg1)
                        questNpcActor:Standby()
                        questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q7227917_N1044").rot))
                        questNpcActor:DoFreeStyle(1280, true, nil, true, true, false)
                        actor:CallDelay(15, function(arg1)
                            if arg1:GetSubQuestState(7227917) == 2 then
                                actor:NpcRunToTask(questNpcActor, sceneData:GetDummyPoint(3, "Q7227918_N1044").pos, function(arg1)
                                    questNpcActor:Standby()
                                    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q7227918_N1044").rot))
                                    questNpcActor:DoFreeStyle(1142, true, nil, true, true, false)
                                    actor:CallDelay(10, function(arg1)
                                        if arg1:GetSubQuestState(7227917) == 2 then
                                            actor:move()
                                        end
                                    end)
                                end)
                            end
                        end)
                    end)
                end
            end)
        end)
    end
end

function Quest72279:QuestJudge()
    if n == 0 then
        print("teammateScore == 0")
        n = n + 1
        v = v + 5
        self:BattleUIStart(100, 20563, n, 1044, v)
    else
        if 100 <= v then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                print("Battle  ------------------- failed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(n) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(v))
                actor:FinishQuestID(false, 7227917)
            end

            self:CallDelay(3, function(arg1)
                arg1:CountDownUITerminate()
                arg1:BattleUITerminate()
            end)
        end
    end

    self:CallDelay(2, function(arg1)
        local subQuestState = arg1:GetSubQuestState(7227916)
        local v = arg1:GetSubQuestState(7227917)
        print("q7227916state" .. v)
        if subQuestState == 3 and v ~= 3 then
            print("\231\187\167\231\187\173\229\136\164\230\150\173")
            arg1:QuestJudge()
        end
    end)
end

function Quest72279:OnSubStart7227919(arg1)
    print("OnSubStart7227919")
end

function Quest72279:OnSubFinish7227919(arg1)
    print("OnSubFinish7227919")
end

function Quest72279:OnSubStart7227901(arg1)
    print("OnSubStart7227901")
    self:NpcCreate(arg1, npcs.Npc20567Data.id, 1)
end

function Quest72279:OnSubFinish7227901(arg1)
    print("OnSubFinish7227901")
    self:NpcDestroy(npcs.Npc20567Data.alias, 3)
end

function Quest72279:OnSubStart7227902(arg1)
    print("OnSubStart7227902")
    self:NpcCreate(arg1, npcs.Npc1044Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12276Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12277Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:NpcCreate(arg1, npcs.Npc12278Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(4010, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q72279Trigger", "Actor/Gadget/Q72279Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7227814").pos, sceneData:GetDummyPoint(3, "guide_Q7227814").rot, true, false, 3)
end

function Quest72279:OnSubFinish7227902(arg1)
    print("OnSubFinish7227902")
    self:ActorDestroy("Q72279Trigger")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest72279:OnSubStart7227903(arg1)
    print("OnSubStart7227903")
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(4010, true, nil, true, true, false)
end

function Quest72279:OnSubFinish7227903(arg1)
    print("OnSubFinish7227903")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest72279:OnSubStart7227916(arg1)
    print("OnSubStart7227916")
    n = 0
    v = 0
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1044Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
        arg1_2:NpcCreate(arg1, npcs.Npc12277Data.id, 3)
        arg1_2:NpcCreate(arg1, npcs.Npc12278Data.id, 4)
        arg1_2:NpcCreate(arg1, npcs.Npc1033Data.id, 5)
        arg1_2:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    end)

    self:ClearSpeechBubbleTask()
    self:BattleUITerminate()
    self:CountDownUITerminate()
end

function Quest72279:OnSubFinish7227916(arg1)
    print("OnSubFinish7227916")
    self:NpcDestroy(npcs.Npc1044Data.alias, 3)
    self:NpcDestroy(npcs.Npc12276Data.alias, 3)
    self:NpcDestroy(npcs.Npc12277Data.alias, 3)
    self:NpcDestroy(npcs.Npc12278Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest72279:OnSubStart7227920(arg1)
    print("OnSubStart7227920")
end

function Quest72279:OnSubFinish7227920(arg1)
    print("OnSubFinish7227920")
end

function Quest72279:OnSubStart7227917(arg1)
    print("OnSubStart7227917")
    self:ActionSafeCall(function(arg1)
        arg1:QuestJudge()
        arg1:AddScore()
        arg1:move()
    end)
end

function Quest72279:OnSubFinish7227917(arg1)
    print("OnSubFinish7227917")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 3, 0.3, function(arg1)
            arg1:BattleUITerminate()
            arg1:CountDownUITerminate()
            arg1:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
            arg1:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
            arg1:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
            arg1:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
            arg1:ClearSpeechBubbleTask()
        end, nil, nil, "QUEST_Message_Q7227901", false, true)
    end)
end

function Quest72279:OnSubFailed7227917(arg1)
    print("OnSubFailed7227917")
    self:SafeDestroyQuestNpc(npcs.Npc20568Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20565Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20566Data.alias, 3)
end

function Quest72279:OnSubStart7227912(arg1)
    print("OnSubStart7227912")
end

function Quest72279:OnSubFinish7227912(arg1)
    print("OnSubFinish7227912")
end

function Quest72279:OnSubStart7227904(arg1)
    print("OnSubStart7227904")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1044Data.id, 1)
        arg1_2:NpcCreate(arg1, npcs.Npc12276Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12277Data.id, 3)
        arg1_2:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12278Data.id, 4)
        arg1_2:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc1033Data.id, 5)
        arg1_2:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc20568Data.id, 6)
        arg1_2:move()
        arg1_2:CreateSpeechBubbleTask(npcs.Npc12276Data.id, 1017122760, 4, true, 4, 5)
        arg1_2:CreateSpeechBubbleTask(npcs.Npc12277Data.id, 1017122770, 4, true, 4, 5)
        arg1_2:CreateSpeechBubbleTask(npcs.Npc12278Data.id, 1017122780, 4, true, 4, 5)
    end)
end

function Quest72279:OnSubFinish7227904(arg1)
    print("OnSubFinish7227904")
    n = n + 9
    self:BattleUIChange(n, 9, v, 0)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(3, 5)
        if 100 <= v + n2 then
            local n3 = 100 - v
            v = 100
            arg1:BattleUIChange(n, 0, v, n3)
        else
            v = v + n2
            arg1:BattleUIChange(n, 0, v, n2)
        end
    end)
end

function Quest72279:OnSubStart7227905(arg1)
    print("OnSubStart7227905")
end

function Quest72279:OnSubFinish7227905(arg1)
    print("OnSubFinish7227905")
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(12, 16)
        if 100 <= v + n2 then
            local n3 = 100 - v
            v = 100
            arg1:BattleUIChange(n, 0, v, n3)
        else
            v = v + n2
            arg1:BattleUIChange(n, 0, v, n2)
        end
    end)
end

function Quest72279:OnSubStart7227918(arg1)
    print("OnSubStart7227918")
end

function Quest72279:OnSubFinish7227918(arg1)
    print("OnSubFinish7227918")
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(12, 16)
        if 100 <= v + n2 then
            local n3 = 100 - v
            v = 100
            arg1:BattleUIChange(n, 0, v, n3)
        else
            v = v + n2
            arg1:BattleUIChange(n, 0, v, n2)
        end
    end)
end

function Quest72279:OnSubStart7227906(arg1)
    print("OnSubStart7227906")
end

function Quest72279:OnSubFinish7227906(arg1)
    print("OnSubFinish7227906")
    self:NpcDestroy(npcs.Npc20568Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        n = n + 10
        arg1:BattleUIChange(n, 10, v, 0)
        arg1:CallDelay(5, function(arg1)
            local n2 = math.random(12, 16)
            if 100 <= v + n2 then
                local n3 = 100 - v
                v = 100
                arg1:BattleUIChange(n, 0, v, n3)
            else
                v = v + n2
                arg1:BattleUIChange(n, 0, v, n2)
            end
        end)

        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
    end)
end

function Quest72279:OnSubStart7227907(arg1)
    print("OnSubStart7227907")
    self:NpcCreate(arg1, npcs.Npc20565Data.id, 6)
end

function Quest72279:OnSubFinish7227907(arg1)
    print("OnSubFinish7227907")
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(9, 11)
        if 100 <= v + n2 then
            local n3 = 100 - v
            v = 100
            arg1:BattleUIChange(n, 0, v, n3)
        else
            v = v + n2
            arg1:BattleUIChange(n, 0, v, n2)
        end
    end)
end

function Quest72279:OnSubStart7227911(arg1)
    print("OnSubStart7227911")
end

function Quest72279:OnSubFinish7227911(arg1)
    print("OnSubFinish7227911")
    n = n + 20
    self:BattleUIChange(n, 20, v, 0)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(19, 21)
        if 100 <= v + n2 then
            local n3 = 100 - v
            v = 100
            arg1:BattleUIChange(n, 0, v, n3)
        else
            v = v + n2
            arg1:BattleUIChange(n, 0, v, n2)
        end
    end)
end

function Quest72279:OnSubStart7227913(arg1)
    print("OnSubStart7227913")
end

function Quest72279:OnSubFinish7227913(arg1)
    print("OnSubFinish7227913")
    self:NpcDestroy(npcs.Npc20565Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        n = n + 20
        arg1:BattleUIChange(n, 20, v, 0)
        arg1:CallDelay(5, function(arg1)
            local n2 = math.random(19, 21)
            if 100 <= v + n2 then
                local n3 = 100 - v
                v = 100
                arg1:BattleUIChange(n, 0, v, n3)
            else
                v = v + n2
                arg1:BattleUIChange(n, 0, v, n2)
            end
        end)

        arg1:NarratorOnlyTaskByData(datas.NarratorWithId3)
    end)
end

function Quest72279:OnSubStart7227908(arg1)
    print("OnSubStart7227908")
    self:NpcCreate(arg1, npcs.Npc20566Data.id, 8)
end

function Quest72279:OnSubFinish7227908(arg1)
    print("OnSubFinish7227908")
    self:NpcDestroy(npcs.Npc20568Data.alias, 3)
    self:NpcDestroy(npcs.Npc20565Data.alias, 3)
end

function Quest72279:OnSubStart7227921(arg1)
    print("OnSubStart7227921")
end

function Quest72279:OnSubFinish7227921(arg1)
    print("OnSubFinish7227921")
end

function Quest72279:OnSubStart7227914(arg1)
    print("OnSubStart7227914")
    self:NpcCreate(arg1, npcs.Npc20569Data.id, 5)
    actorMgr:CreateActorWithPos("Q72279Trigger2", "Actor/Gadget/Q72279Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227914_N20566").pos, sceneData:GetDummyPoint(3, "Q7227914_N20566").rot, true, false, 3)
end

function Quest72279:OnSubFinish7227914(arg1)
    print("OnSubFinish7227914")
    self:ActorDestroy("Q72279Trigger2")
end

function Quest72279:OnSubStart7227915(arg1)
    print("OnSubStart7227915")
    actorMgr:CreateActorWithPos("Q72279Trigger3", "Actor/Gadget/Q72279Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227914_N20566").pos, sceneData:GetDummyPoint(3, "Q7227914_N20566").rot, true, false, 3)
end

function Quest72279:OnSubFinish7227915(arg1)
    print("OnSubFinish7227915")
    self:NpcDestroy(npcs.Npc1044Data.alias, 3)
    self:NpcDestroy(npcs.Npc12276Data.alias, 3)
    self:NpcDestroy(npcs.Npc12277Data.alias, 3)
    self:NpcDestroy(npcs.Npc12278Data.alias, 3)
    self:NpcDestroy(npcs.Npc1033Data.alias, 3)
    self:NpcDestroy(npcs.Npc20569Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20566Data.alias, 3)
    self:ActorDestroy("Q72279Trigger3")
end

function Quest72279:OnSubStart7227909(arg1)
    print("OnSubStart7227909")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1044Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12276Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12277Data.id, 3)
        arg1_2:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12278Data.id, 4)
        arg1_2:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(4010, true, nil, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc3081Data.id, 6)
        actorMgr:CreateActorWithPos("Q72279Trigger1", "Actor/Gadget/Q72279Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7227909").pos, sceneData:GetDummyPoint(3, "guide_Q7227909").rot, true, false, 3)
    end)

    self:NotifyTo(npcs.Npc30163Data.alias, 1, true)
end

function Quest72279:OnSubFinish7227909(arg1)
    print("OnSubFinish7227909")
    self:ActorDestroy("Q72279Trigger1")
end

function Quest72279:OnSubStart7227910(arg1)
    print("OnSubStart7227910")
    actorMgr:CreateActorWithPos("Q72279Trigger4", "Actor/Gadget/Q72279Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q7227910_N1044").pos, sceneData:GetDummyPoint(3, "Q7227910_N1044").rot, true, false, 3)
end

function Quest72279:OnSubFinish7227910(arg1)
    print("OnSubFinish7227910")
    self:NpcDestroy(npcs.Npc1044Data.alias, 3)
    self:NpcDestroy(npcs.Npc12276Data.alias, 3)
    self:NpcDestroy(npcs.Npc12277Data.alias, 3)
    self:NpcDestroy(npcs.Npc12278Data.alias, 3)
    self:NpcDestroy(npcs.Npc1033Data.alias, 3)
    self:NpcDestroy(npcs.Npc3081Data.alias, 3)
    self:ActorDestroy("Q72279Trigger4")
    self:LightNotifyTo(npcs.Npc30163Data.alias, 0, true)
end

return Quest72279
