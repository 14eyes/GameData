require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20101 = class("Quest20101", QuestActorProxy)
Quest20101.defaultAlias = "Quest20101"
local clientData
local NPCUtil = require("Actor/Npc/NPCUtil")

local subIDs
local scaredNPC
local guardNPC
local guardNPC201
local guardNPC401
local dilucData
local n = 0
local v = 0
local n2 = 0
local n3 = 0
local n4 = 0
local n5 = 0
local n6 = 0

function Quest20101:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    scaredNPC = clientData.ScaredNPC
    guardNPC = clientData.GuardNPC
    guardNPC201 = clientData.GuardNPC201
    guardNPC401 = clientData.GuardNPC401
    dilucData = clientData.DilucData
end

function Quest20101:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2010102"] = self.OnSubStart2010102
    self.subStartHandlers["2010103"] = self.OnSubStart2010103
    self.subStartHandlers["2010104"] = self.OnSubStart2010104
    self.subStartHandlers["2010105"] = self.OnSubStart2010105
    self.subStartHandlers["2010111"] = self.OnSubStart2010111
    self.subStartHandlers["2010114"] = self.OnSubStart2010114
    self.subStartHandlers["2010115"] = self.OnSubStart2010115
    self.subStartHandlers["2010121"] = self.OnSubStart2010121
    self.subStartHandlers["2010124"] = self.OnSubStart2010124
    self.subStartHandlers["2010131"] = self.OnSubStart2010131
    self.subStartHandlers["2010134"] = self.OnSubStart2010134
    self.subStartHandlers["2010136"] = self.OnSubStart2010136
    self.subStartHandlers["2010138"] = self.OnSubStart2010138
    self.subStartHandlers["2010141"] = self.OnSubStart2010141
    self.subStartHandlers["2010142"] = self.OnSubStart2010142
    self.subStartHandlers["2010143"] = self.OnSubStart2010143
    self.subStartHandlers["2010145"] = self.OnSubStart2010145
    self.subStartHandlers["2010146"] = self.OnSubStart2010146
    self.subStartHandlers["2010147"] = self.OnSubStart2010147
    self.subStartHandlers["2010148"] = self.OnSubStart2010148
    self.subStartHandlers["2010152"] = self.OnSubStart2010152
    self.subStartHandlers["2010151"] = self.OnSubStart2010151
end

function Quest20101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2010100"] = self.OnSubFinish2010100
    self.subFinishHandlers["2010103"] = self.OnSubFinish2010103
    self.subFinishHandlers["2010104"] = self.OnSubFinish2010104
    self.subFinishHandlers["2010105"] = self.OnSubFinish2010105
    self.subFinishHandlers["2010109"] = self.OnSubFinish2010109
    self.subFinishHandlers["2010111"] = self.OnSubFinish2010111
    self.subFinishHandlers["2010112"] = self.OnSubFinish2010112
    self.subFinishHandlers["2010113"] = self.OnSubFinish2010113
    self.subFinishHandlers["2010114"] = self.OnSubFinish2010114
    self.subFinishHandlers["2010115"] = self.OnSubFinish2010115
    self.subFinishHandlers["2010121"] = self.OnSubFinish2010121
    self.subFinishHandlers["2010119"] = self.OnSubFinish2010119
    self.subFinishHandlers["2010122"] = self.OnSubFinish2010122
    self.subFinishHandlers["2010123"] = self.OnSubFinish2010123
    self.subFinishHandlers["2010129"] = self.OnSubFinish2010129
    self.subFinishHandlers["2010132"] = self.OnSubFinish2010132
    self.subFinishHandlers["2010135"] = self.OnSubFinish2010135
    self.subFinishHandlers["2010139"] = self.OnSubFinish2010139
    self.subFinishHandlers["2010142"] = self.OnSubFinish2010142
    self.subFinishHandlers["2010151"] = self.OnSubFinish2010151
    self.subFinishHandlers["2010153"] = self.OnSubFinish2010153
    self.subFinishHandlers["2010154"] = self.OnSubFinish2010154
    self.subFinishHandlers["2010155"] = self.OnSubFinish2010155
    self.subFinishHandlers["2010156"] = self.OnSubFinish2010156
    self.subFinishHandlers["2010157"] = self.OnSubFinish2010157
    self.subFinishHandlers["2010158"] = self.OnSubFinish2010158
    self.subFinishHandlers["2010159"] = self.OnSubFinish2010159
    self.subFinishHandlers["2010160"] = self.OnSubFinish2010160
end

function Quest20101:OnSubStart2010102(arg1)
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    n3 = 0
    n4 = 0
    n5 = 0
    n6 = 0
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    actorMgr:CreateActorWithPos("Q20101Trigger01", "Actor/Gadget/Q20101Trigger01", 70900002, 0, sceneData:GetDummyPoint(20023, "NPC_Scared").pos, sceneData:GetDummyPoint(20023, "NPC_Scared").rot, true, false, 20023)
end

function Quest20101:OnSubStart2010103(arg1)
    n = 0
    v = 0
    n2 = 0
    self:CreateQuestNpc(arg1, scaredNPC.ScaredNPCID)
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(scaredNPC.ScaredNPC):DoFreeStyle(4050)
    end)
end

function Quest20101:OnSubStart2010141(arg1)
    print("2010141 Start : ")
    self:CreateQuestNpc(arg1, guardNPC.GuardNPCID)
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(guardNPC.GuardNPC):DoFreeStyle(1190)
        arg1:ShowBubble1()
    end)

    self:CreateQuestNpc(arg1, guardNPC201.GuardNPCID)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(guardNPC201.GuardNPC):DoFreeStyle(1050)
        arg1:ShowBubble2()
    end)
end

function Quest20101:OnSubStart2010104(arg1) end

function Quest20101:OnSubStart2010111(arg1)
    print("2010111 Start : ")
end

function Quest20101:OnSubStart2010142(arg1)
    print("2010142 Start : ")
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest20101:OnSubStart2010114(arg1) end

function Quest20101:OnSubStart2010121(arg1)
    print("2010121 Start : ")
end

function Quest20101:OnSubStart2010124(arg1) end

function Quest20101:OnSubStart2010131(arg1)
    print("2010131 Start : ")
end

function Quest20101:OnSubStart2010134(arg1)
    actorMgr:CreateActorWithPos("Q20101Trigger03", "Actor/Gadget/Q20101Trigger03", 70900002, 0, sceneData:GetDummyPoint(20023, "Guard301").pos, sceneData:GetDummyPoint(20023, "Guard301").rot, true, false, 20023)
end

function Quest20101:OnSubStart2010136(arg1)
    actorMgr:CreateActorWithPos("Q20101Trigger05", "Actor/Gadget/Q20101Trigger05", 70900002, 0, sceneData:GetDummyPoint(20023, "Guard501").pos, sceneData:GetDummyPoint(20023, "Guard501").rot, true, false, 20023)
end

function Quest20101:OnSubStart2010138(arg1)
    actorMgr:CreateActorWithPos("Q20101Trigger06", "Actor/Gadget/Q20101Trigger06", 70900002, 0, sceneData:GetDummyPoint(20023, "Guard601").pos, sceneData:GetDummyPoint(20023, "Guard601").rot, true, false, 20023)
end

function Quest20101:OnSubStart2010143(arg1)
    self:SpawnGadget(arg1, 70300040)
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest20101:OnSubStart2010152(arg1)
    self:SpawnGadget(arg1, 70700016)
    self:SpawnGadget(arg1, 70900201)
    self:UnSpawn("Harp")
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:CallDelay(0.5, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70300040)
    end)
end

function Quest20101:OnSubStart2010151(arg1)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({dilucData.Diluc})
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1.0, 0.1, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
            arg1_2:UnSpawn("Harp")
            arg1_2:UnSpawn("Harp0")
            arg1_2:UnSpawn("Goal01")
            arg1_2:RequestInteraction(dilucData.Diluc)
        end, nil, questNpcCreateTask)
    end)
end

function Quest20101:RequestDiluc(arg1)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest20101:OnSubStart2010145(arg1)
    print("2010145 Judge Freetalk")
    if n3 == 0 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            if self:GetSubQuestState(2010140) == 3 then
                actor:FinishQuestID(false, 2010145)
            end
        end

        n3 = 1
    end
end

function Quest20101:OnSubStart2010146(arg1)
    print("2010146 Judge Freetalk")
    if n4 == 0 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            if self:GetSubQuestState(2010140) == 3 then
                actor:FinishQuestID(false, 2010146)
            end
        end

        n4 = 1
    end
end

function Quest20101:OnSubStart2010147(arg1)
    print("2010147 Judge Freetalk")
    if n5 == 0 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            if self:GetSubQuestState(2010140) == 3 then
                actor:FinishQuestID(false, 2010147)
            end
        end

        n5 = 1
    end
end

function Quest20101:OnSubStart2010148(arg1)
    print("2010148 Judge Freetalk")
    if n6 == 0 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            if self:GetSubQuestState(2010140) == 3 then
                actor:FinishQuestID(false, 2010148)
            end
        end

        n6 = 1
    end
end

function Quest20101:OnSubFinish2010100(arg1)
    print("2010100 Finish : show NPC")
    local mengdeNpcListSpecial = NPCUtil.GetMengdeNpcListSpecial()
    for i = 1, #mengdeNpcListSpecial do
        self:NotifyTo(mengdeNpcListSpecial[i], NPCUtil.NpcEventType.STARTDAILY, true)
    end
end

function Quest20101:OnSubFinish2010103(arg1)
    print("2010103 Finish : ")
    self:ActionSafeCall(self.DestroyScaredNPC)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest20101:OnSubFinish2010142(arg1) end

function Quest20101:DestroyScaredNPC(arg1)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(scaredNPC.ScaredNPC)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end, self.TellStory)
end

function Quest20101:TellStory(arg1)
    self:CallDelay(1.0, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow1, nil, "Story")
    end)
end

function Quest20101:OnSubFinish2010104(arg1)
    print("2010104 Finish :")
    self:RequestInteraction(guardNPC.GuardNPC)
end

function Quest20101:OnSubFinish2010109(arg1)
    print("2010109 Finish :")
end

function Quest20101:OnSubFinish2010112(arg1)
    print("2010112 Finish :")
end

function Quest20101:OnSubFinish2010119(arg1)
    print("2010119 Finish :")
end

function Quest20101:OnSubFinish2010122(arg1)
    print("2010122 Finish :")
end

function Quest20101:OnSubFinish2010129(arg1)
    print("2010129 Finish :")
end

function Quest20101:OnSubFinish2010132(arg1)
    print("2010132 Finish :")
end

function Quest20101:OnSubFinish2010111(arg1)
    print("2010111 Finish :")
    self:ActionSafeCall(self.DestroyGuardNPC1)
end

function Quest20101:DestroyGuardNPC1(arg1)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(guardNPC.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest20101:OnSubFinish2010114(arg1)
    print("2010104 Finish :")
    self:RequestInteraction(guardNPC201.GuardNPC)
end

function Quest20101:OnSubFinish2010121(arg1)
    print("2010111 Finish :")
    self:ActionSafeCall(self.DestroyGuardNPC2)
end

function Quest20101:DestroyGuardNPC2(arg1)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(guardNPC201.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest20101:OnSubFinish2010151(arg1)
    print("2010151 Finish :")
    self:ActionSafeCall(self.MoveDiluc)
end

function Quest20101:OnSubFinish2010113(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1.5, function(arg1)
            if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                if arg1:GetSubQuestState(2010141) ~= 3 then
                    if arg1:GetSubQuestState(2010140) == 3 then
                        arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey05, nil, "Tag")
                    else
                        arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey01, nil, "Tag")
                    end
                end
            end
        end)
    end)
end

function Quest20101:OnSubFinish2010123(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1.5, function(arg1)
            if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                if arg1:GetSubQuestState(2010141) ~= 3 then
                    if arg1:GetSubQuestState(2010140) == 3 then
                        arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey05, nil, "Tag")
                    else
                        arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey02, nil, "Tag")
                    end
                end
            end
        end)
    end)
end

function Quest20101:OnSubFinish2010135(arg1)
    self:CallDelay(1.5, function(arg1)
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            if arg1:GetSubQuestState(2010141) ~= 3 then
                if arg1:GetSubQuestState(2010140) == 3 then
                    arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey06, nil, "Tag")
                else
                    arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey03, nil, "Tag")
                end
            end
        end
    end)
end

function Quest20101:OnSubFinish2010139(arg1)
    self:CallDelay(1.5, function(arg1)
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            if arg1:GetSubQuestState(2010141) ~= 3 then
                if arg1:GetSubQuestState(2010140) == 3 then
                    arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey06, nil, "Tag")
                else
                    arg1:NarratorOnlyTaskLegacy(clientData.NarratorNokey04, nil, "Tag")
                end
            end
        end
    end)
end

function Quest20101:OnSubFinish2010153(arg1)
    print("Now BRIBE 3 heart")
    n = n + 3
end

function Quest20101:OnSubFinish2010154(arg1)
    print("Now BRIBE 2 heart")
    n = n + 2
end

function Quest20101:OnSubFinish2010155(arg1)
    print("Now BRIBE 3 heart")
    n = n + 3
end

function Quest20101:OnSubFinish2010156(arg1)
    print("Now BRIBE 2 heart")
    n = n + 2
end

function Quest20101:OnSubFinish2010157(arg1)
    print("Now BRIBE 1 heart")
    n = n + 1
end

function Quest20101:OnSubFinish2010158(arg1)
    print("Now BRIBE 3 heart")
    v = v + 3
end

function Quest20101:OnSubFinish2010159(arg1)
    print("Now BRIBE 2 heart")
    v = v + 2
end

function Quest20101:OnSubFinish2010160(arg1)
    print("Now BRIBE 1 heart")
    v = v + 1
end

function Quest20101:MoveDiluc(arg1)
    print("2010151 Finish :")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:UnSpawn("Harp")
    local v = self:GetQuestNpcActor(dilucData.Diluc)
    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest20101:ShowBubble1()
    self:CreateSpeechBubbleTask(1503, 201015111, 5, true, 1, 2)
end

function Quest20101:BubbleTime1()
    self:CallDelay(5, self.CloseBubble1)
end

function Quest20101:CloseBubble1()
    self:ClearNpcSpeechBubble(1503)
    self:BubbleGap1()
end

function Quest20101:BubbleGap1()
    self:CallDelay(2.5, self.ShowBubble1)
end

function Quest20101:ShowBubble2()
    self:CreateSpeechBubbleTask(1504, 201015112, 5, true, 1, 2)
end

function Quest20101:BubbleTime2()
    self:CallDelay(5, self.CloseBubble2)
end

function Quest20101:CloseBubble2()
    self:ClearNpcSpeechBubble(1504)
    self:BubbleGap2()
end

function Quest20101:BubbleGap2()
    self:CallDelay(2.5, self.ShowBubble2)
end

function Quest20101:InvokeOnInteraction(arg1)
    print("Now Talk! ")
    if arg1 == 11 then
        print("Now THREAT 3 heart")
        n = n + 3
        local questNpcActor = self:GetQuestNpcActor(guardNPC.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:DoFreeStyle(1120)
        end
    elseif arg1 == 12 then
        print("Now THREAT 2 heart")
        n = n + 2
        local questNpcActor = self:GetQuestNpcActor(guardNPC.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:DoFreeStyle(4040)
        end
    elseif arg1 == 13 then
        print("Now THREAT 1 heart")
        n = n + 1
        local questNpcActor = self:GetQuestNpcActor(guardNPC.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:DoFreeStyle(1150)
        end
    elseif arg1 == 19 then
        print("Now Check", n)
        if 5 <= n then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2010109)
                actor:FinishQuestID(true, 2010110)
                print("Now Check Succ")
            end
        else
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(true, 2010109)
                actor:FinishQuestID(false, 2010110)
                print("Now Check Fail")
            end
        end
    elseif arg1 == 2 then
        print("Now BRIBE")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 2010109)
            actor:FinishQuestID(false, 2010110)
        end

        if self:GetQuestNpcActor(guardNPC.GuardNPC) ~= nil then
        end
    elseif arg1 == 3 then
        print("Now DECLARE")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 2010109)
            actor:FinishQuestID(false, 2010110)
        end

        if self:GetQuestNpcActor(guardNPC.GuardNPC) ~= nil then
        end
    elseif arg1 == 99 then
        print("Now FIGHT")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2010111)
        end

        if self:GetQuestNpcActor(guardNPC.GuardNPC) ~= nil then
        end
    elseif arg1 == 31 then
        print("Now BRIBE 3 heart")
        v = v + 3
        local questNpcActor = self:GetQuestNpcActor(guardNPC201.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:DoFreeStyle(1120)
        end
    elseif arg1 == 32 then
        print("Now BRIBE 2 heart")
        v = v + 2
        local questNpcActor = self:GetQuestNpcActor(guardNPC201.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:DoFreeStyle(4040)
        end
    elseif arg1 == 33 then
        print("Now BRIBE 1 heart")
        v = v + 1
        local questNpcActor = self:GetQuestNpcActor(guardNPC201.GuardNPC)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:DoFreeStyle(1150)
        end
    elseif arg1 == 39 then
        print("Now Check", v)
        if 5 <= v then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2010119)
                actor:FinishQuestID(true, 2010120)
                print("Now Check Succ")
            end
        else
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(true, 2010119)
                actor:FinishQuestID(false, 2010120)
                print("Now Check Fail")
            end
        end
    elseif arg1 == 21 then
        print("Now THREAT")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 2010119)
            actor:FinishQuestID(false, 2010120)
        end

        if self:GetQuestNpcActor(guardNPC201.GuardNPC) ~= nil then
        end
    elseif arg1 == 23 then
        print("Now DECLARE")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 2010119)
            actor:FinishQuestID(false, 2010120)
        end

        if self:GetQuestNpcActor(guardNPC201.GuardNPC) ~= nil then
        end
    elseif arg1 == 109 then
        print("Now FIGHT")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2010121)
        end

        if self:GetQuestNpcActor(guardNPC201.GuardNPC) ~= nil then
        end
    elseif arg1 == 51 then
        print("Now BRIBE 3 heart")
        n2 = n2 + 3
    elseif arg1 == 52 then
        print("Now BRIBE 2 heart")
        n2 = n2 + 2
    elseif arg1 == 53 then
        print("Now BRIBE 1 heart")
        n2 = n2 + 1
    elseif arg1 == 59 then
        print("Now Check", v)
        if 5 <= n2 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2010129)
                actor:FinishQuestID(true, 2010130)
                print("Now Check Succ")
            end
        else
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(true, 2010129)
                actor:FinishQuestID(false, 2010130)
                print("Now Check Fail")
            end
        end
    elseif arg1 == 41 then
        print("Now THREAT")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 2010129)
            actor:FinishQuestID(false, 2010130)
        end
    elseif arg1 == 43 then
        print("Now DECLARE")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 2010129)
            actor:FinishQuestID(false, 2010130)
        end
    elseif arg1 == 119 then
        print("Now FIGHT")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2010131)
        end
    end
end

function Quest20101:Start() end
function Quest20101:OnDestroy() end
return Quest20101
