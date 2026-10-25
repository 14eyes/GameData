require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2020 = class("Quest2020", QuestActorProxy)
Quest2020.defaultAlias = "Quest2020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local n = 0
local v = 0
local n2 = 0
local n3 = 0
local n4 = 0

function Quest2020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest2020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["202001"] = self.OnSubStart202001,
        ["202007"] = self.OnSubStart202007,
        ["202008"] = self.OnSubStart202008,
        ["202009"] = self.OnSubStart202009,
        ["202002"] = self.OnSubStart202002,
        ["202013"] = self.OnSubStart202013,
        ["202003"] = self.OnSubStart202003,
        ["202004"] = self.OnSubStart202004,
        ["202010"] = self.OnSubStart202010,
        ["202011"] = self.OnSubStart202011,
        ["202005"] = self.OnSubStart202005,
        ["202006"] = self.OnSubStart202006,
        ["202012"] = self.OnSubStart202012
    }
end

function Quest2020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["202001"] = self.OnSubFinish202001,
        ["202007"] = self.OnSubFinish202007,
        ["202008"] = self.OnSubFinish202008,
        ["202009"] = self.OnSubFinish202009,
        ["202002"] = self.OnSubFinish202002,
        ["202013"] = self.OnSubFinish202013,
        ["202003"] = self.OnSubFinish202003,
        ["202004"] = self.OnSubFinish202004,
        ["202010"] = self.OnSubFinish202010,
        ["202011"] = self.OnSubFinish202011,
        ["202005"] = self.OnSubFinish202005,
        ["202006"] = self.OnSubFinish202006,
        ["202012"] = self.OnSubFinish202012
    }
end

function Quest2020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["202001"] = self.OnSubFailed202001,
        ["202007"] = self.OnSubFailed202007,
        ["202008"] = self.OnSubFailed202008,
        ["202009"] = self.OnSubFailed202009,
        ["202002"] = self.OnSubFailed202002,
        ["202013"] = self.OnSubFailed202013,
        ["202003"] = self.OnSubFailed202003,
        ["202004"] = self.OnSubFailed202004,
        ["202010"] = self.OnSubFailed202010,
        ["202011"] = self.OnSubFailed202011,
        ["202005"] = self.OnSubFailed202005,
        ["202006"] = self.OnSubFailed202006,
        ["202012"] = self.OnSubFailed202012
    }
end

function Quest2020:Start()
    print("Start")
end

function Quest2020:OnDestroy()
    print("OnDestroy")
end

function Quest2020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2020:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest2020:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest2020:QTERandomThunder2()
    print("QTERandomThunder2")
end

function Quest2020:QTERandomThunder1()
    print("QTERandomThunder1")
end

function Quest2020:OnSubStart202001(arg1)
    print("OnSubStart202001")
    self.CallDelay(self, 0.5, function()
        self:ClearNarratorTask()
        self:StopNarrator()
        actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    end)

    self.ClearSpeechBubbleTask(self)
    self.NotifyTo(self, npcs.Npc3175Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3176Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3177Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3061Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3178Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3060Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc3064Data.alias, 1, true)
    self.CreateQuestNpc(self, arg1, npcs.Npc12138Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12139Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12140Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12141Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12142Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12143Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12144Data.id)
    self.CreateQuestNpc(self, arg1, npcs.Npc12145Data.id)
    self.GetQuestNpcActor(self, npcs.Npc12145Data.alias):DoFreeStyle(4110)
    globalActor:SetHeroMoveRatio(0.5, 0.75)
    self.DisableMainPageUI(self, true)
    self.BanAvatarFreeStyle(self)
    actorUtils.KeepEnableAvatarHeadCtrl()
    actorUtils.StartAvatarShakeHead()
    actorMgr:CreateActorWithPos("Q2020Trigger", "Actor/Gadget/Q2020Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q202001Target").pos, sceneData:GetDummyPoint(3, "Q202001Target").rot, true, false, 3)
    self.CallDelay(self, 2, function()
        self:ActionSafeCall(function()
            self:CallDelay(21, function(arg1_2)
                if n == 0 then
                    print("\231\172\1721\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131\228\191\157\230\138\164 \230\136\144\229\138\159")
                    n = 1
                    arg1_2.CallDelay(arg1_2, 1.5, function()
                        arg1_2:ShowBlackScreen(2, 5, 2, nil, nil, nil, "QUEST_Message_Q2020011", false, true)
                        arg1_2:CallDelay(5, function()
                            arg1_2:TransmitPlayerById(arg1, 1, nil, nil, nil, false)
                        end)

                        arg1_2:CallDelay(6.5, function()
                            globalActor:AvatarMoveToRoute({sceneData:GetDummyPoint(3, "Q202001QTE1").pos, sceneData:GetDummyPoint(3, "Q202001Player3").pos}, true)
                        end)

                        arg1_2:CallDelay(9, function()
                            arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId1, function()
                                if v == 0 then
                                    print("\231\172\1722\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131 \230\136\144\229\138\159")
                                    v = 1
                                    arg1_2:CallDelay(0.1, function()
                                        arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId5)
                                    end)

                                    arg1_2:CallDelay(0.1, function()
                                        globalActor:StopAvatarMove()
                                        actorUtils.AvatarDoFreeStyle(1240, true)
                                        actorMgr:GetActor(clientData.ActorAlias):StartMainQTE(1)
                                    end)
                                end
                            end)
                        end)
                    end)
                end
            end)
        end)
    end)

    self.CallDelay(self, 2, function()
        self:ActionSafeCall(function()
            self:CallDelay(51, function()
                if v == 0 then
                    print("\231\172\1722\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131\228\191\157\230\138\164 \230\136\144\229\138\159")
                    v = 1
                    self:CallDelay(0.1, function()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId5)
                    end)

                    self:CallDelay(0.1, function()
                        globalActor:StopAvatarMove()
                        actorUtils.AvatarDoFreeStyle(1240, true)
                        actorMgr:GetActor(clientData.ActorAlias):StartMainQTE(1)
                    end)
                end
            end)
        end)
    end)

    globalActor:AvatarMoveToRoute({sceneData:GetDummyPoint(3, "Q202001Player2").pos}, true)
    self.CallDelay(self, 1.5, function()
        self:ActionSafeCall(function()
            actorUtils.SetPostEffect("PostEffect_Quest_Avator_Scary_ScreenEffect", true)
            self:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1_2)
                print("\231\172\1721\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131 \230\136\144\229\138\159")
                n = 1
                arg1_2.CallDelay(arg1_2, 1.5, function()
                    arg1_2:ShowBlackScreen(2, 5, 2, nil, nil, nil, "QUEST_Message_Q2020011", false, true)
                    arg1_2:CallDelay(5, function()
                        arg1_2:TransmitPlayerById(arg1, 1, nil, nil, nil, false)
                    end)

                    arg1_2:CallDelay(6.5, function()
                        globalActor:AvatarMoveToRoute({sceneData:GetDummyPoint(3, "Q202001QTE1").pos, sceneData:GetDummyPoint(3, "Q202001Player3").pos}, true)
                    end)

                    arg1_2:CallDelay(9, function()
                        arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId1, function()
                            if v == 0 then
                                print("\231\172\1722\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131 \230\136\144\229\138\159")
                                v = 1
                                arg1_2:CallDelay(0.1, function()
                                    arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId5)
                                end)

                                arg1_2:CallDelay(0.1, function()
                                    globalActor:StopAvatarMove()
                                    actorUtils.AvatarDoFreeStyle(1240, true)
                                    actorMgr:GetActor(clientData.ActorAlias):StartMainQTE(1)
                                end)
                            end
                        end)
                    end)
                end)
            end)
        end)
    end)
end

function Quest2020:OnSubFinish202001(arg1)
    print("OnSubFinish202001")
end

function Quest2020:OnSubFailed202001(arg1)
    print("OnSubFailed202001")
end

function Quest2020:OnSubStart202007(arg1)
    print("OnSubStart202007")
end

function Quest2020:OnSubFinish202007(arg1)
    print("OnSubFinish202007")
end

function Quest2020:OnSubFailed202007(arg1)
    print("OnSubFailed202007")
end

function Quest2020:OnSubStart202008(arg1)
    print("OnSubStart202008")
    self.CallDelay(self, 35, function(arg1_2)
        if n2 == 0 then
            print("\231\172\1723\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131\228\191\157\230\138\164 \230\136\144\229\138\159")
            n2 = 1
            arg1_2.CallDelay(arg1_2, 2, function()
                arg1_2:ShowBlackScreen(2, 4, 2, nil, nil, nil, "QUEST_Message_Q2020013", false, true)
                arg1_2:CallDelay(5, function()
                    arg1_2:TransmitPlayerById(arg1, 3, nil, nil, nil, false)
                    globalActor:AvatarMoveToRoute({
                        sceneData:GetDummyPoint(3, "Q202001QTE2").pos,
                        sceneData:GetDummyPoint(3, "Q202001Player8").pos,
                        sceneData:GetDummyPoint(3, "Q202001Player9").pos
                    }, true)

                    arg1_2:CallDelay(1.86, function()
                        arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId3, function()
                            if n3 == 0 then
                                print("\231\172\1724\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131\228\191\157\230\138\1641 \230\136\144\229\138\159")
                                n3 = 1
                                arg1_2:CallDelay(1.86, function()
                                    arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId6)
                                    arg1_2:CallDelay(2, function()
                                        globalActor:StopAvatarMove()
                                        actorUtils.AvatarDoFreeStyle(1240, true)
                                        actorMgr:GetActor(clientData.ActorAlias):StartMainQTE(2)
                                    end)
                                end)
                            end
                        end)
                    end)
                end)
            end)
        end
    end)

    self.CallDelay(self, 65, function()
        if n3 == 0 then
            print("\231\172\1724\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131\228\191\157\230\138\1642 \230\136\144\229\138\159")
            n3 = 1
            self:CallDelay(1.86, function()
                self:NarratorOnlyTaskByData(datas.NarratorWithId6)
                self:CallDelay(2, function()
                    globalActor:StopAvatarMove()
                    actorUtils.AvatarDoFreeStyle(1240, true)
                    actorMgr:GetActor(clientData.ActorAlias):StartMainQTE(2)
                end)
            end)
        end
    end)

    actorUtils.AvatarDoFreeStateTrigger()
    actorUtils.StopAvatarShakeHead()
    self.CallDelay(self, 2, function()
        actorUtils.AvatarDoFreeStateTrigger()
        actorUtils.StartAvatarShakeHead()
        globalActor:AvatarMoveToRoute({
            sceneData:GetDummyPoint(3, "Q202001Player3").pos,
            sceneData:GetDummyPoint(3, "Q202001Player4").pos,
            sceneData:GetDummyPoint(3, "Q202001Player5").pos
        }, true)

        self:CallDelay(4, function()
            self:ShowBlackScreen(2, 4, 2, nil, nil, nil, "QUEST_Message_Q2020012", false, true)
            self:CallDelay(5, function()
                self:TransmitPlayerById(arg1, 2, nil, nil, nil, false)
                self:CallDelay(0.5, function()
                    globalActor:AvatarMoveToRoute({sceneData:GetDummyPoint(3, "Q202001Player4").pos, sceneData:GetDummyPoint(3, "Q202001Player5").pos}, true)
                    self:CallDelay(2, function()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId2, function(arg1_2)
                            print("\231\172\1723\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131 \230\136\144\229\138\159")
                            n2 = 1
                            arg1_2.CallDelay(arg1_2, 2, function()
                                arg1_2:ShowBlackScreen(2, 4, 2, nil, nil, nil, "QUEST_Message_Q2020013", false, true)
                                arg1_2:CallDelay(5, function()
                                    arg1_2:TransmitPlayerById(arg1, 3, nil, nil, nil, false)
                                    globalActor:AvatarMoveToRoute({
                                        sceneData:GetDummyPoint(3, "Q202001QTE2").pos,
                                        sceneData:GetDummyPoint(3, "Q202001Player8").pos,
                                        sceneData:GetDummyPoint(3, "Q202001Player9").pos
                                    }, true)

                                    arg1_2:CallDelay(1.86, function()
                                        arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId3, function()
                                            if n3 == 0 then
                                                print("\231\172\1724\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131 \230\136\144\229\138\159")
                                                n3 = 1
                                                arg1_2:CallDelay(1.86, function()
                                                    arg1_2:NarratorOnlyTaskByData(datas.NarratorWithId6)
                                                    arg1_2:CallDelay(2, function()
                                                        globalActor:StopAvatarMove()
                                                        actorUtils.AvatarDoFreeStyle(1240, true)
                                                        actorMgr:GetActor(clientData.ActorAlias):StartMainQTE(2)
                                                    end)
                                                end)
                                            end
                                        end)
                                    end)
                                end)
                            end)
                        end)
                    end)
                end)
            end)
        end)
    end)
end

function Quest2020:OnSubFinish202008(arg1)
    print("OnSubFinish202008")
end

function Quest2020:OnSubFailed202008(arg1)
    print("OnSubFailed202008")
end

function Quest2020:OnSubStart202009(arg1)
    print("OnSubStart202009")
    self.CallDelay(self, 32, function()
        if n4 == 0 then
            print("\231\172\1725\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131\228\191\157\230\138\164 \230\136\144\229\138\159")
            n4 = 1
            self:CallDelay(2, function()
                self:FinishQuestID(false, 202009)
            end)
        end
    end)

    actorUtils.AvatarDoFreeStateTrigger()
    actorUtils.StopAvatarShakeHead()
    self.CallDelay(self, 2, function()
        actorUtils.AvatarDoFreeStateTrigger()
        actorUtils.StartAvatarShakeHead()
        globalActor:AvatarMoveToRoute({sceneData:GetDummyPoint(3, "Q202001Player9").pos}, true)
        self:CallDelay(4, function()
            self:ShowBlackScreen(2, 4, 2, nil, nil, nil, "QUEST_Message_Q2020014", false, true)
            self:CallDelay(5, function()
                self:TransmitPlayerById(arg1, 4, nil, nil, nil, false)
                globalActor:AvatarMoveToRoute({sceneData:GetDummyPoint(3, "Q202001Player10").pos}, true)
            end)

            self:CallDelay(9, function()
                self:NarratorOnlyTaskByData(datas.NarratorWithId4, function()
                    print("\231\172\1725\230\174\181\229\188\128\232\189\166\229\155\158\232\176\131 \230\136\144\229\138\159")
                    n4 = 1
                    self:CallDelay(2, function()
                        self:FinishQuestID(false, 202009)
                    end)
                end)
            end)
        end)
    end)
end

function Quest2020:OnSubFinish202009(arg1)
    print("OnSubFinish202009")
end

function Quest2020:OnSubFailed202009(arg1)
    print("OnSubFailed202009")
end

function Quest2020:OnSubStart202002(arg1)
    print("OnSubStart202002")
    self.CallDelay(self, 1, function()
        actorUtils.SetPostEffect("PostEffect_Quest_Avator_Scary_ScreenEffect", false)
        actorUtils.StopAvatarShakeHead()
        globalActor:ResumeHeroMoveRatio()
        self:DisableMainPageUI(false)
        self:ResumeAvatarFreeStyle()
    end)

    self.PlayCutsceneIndex(self, 20200401, function()
        globalActor:PlayerEnterDungeon(421, 1122)
    end)
end

function Quest2020:OnSubFinish202002(arg1)
    print("OnSubFinish202002")
end

function Quest2020:OnSubFailed202002(arg1)
    print("OnSubFailed202002")
end

function Quest2020:OnSubStart202013(arg1)
    print("OnSubStart202013")
    local actor = actorMgr:GetActor("2022")
    if actor ~= nil then
        actor:DestroyQuestNpcActor("Npc12092", 3)
    end

    if self:GetQuestVar(arg1.QuestConfigId, 0) == 0 then
        self:FinishQuestID(false, 202013)
    end

    self:LightNotifyTo(npcs.Npc3175Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3176Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3177Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3061Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3178Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3060Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3064Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3055Data.alias, 0, true)
    self:DestroyQuestNpcActor(npcs.Npc12138Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12139Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12140Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12141Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12142Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12143Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12144Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12145Data.alias, 3)
end

function Quest2020:OnSubFinish202013(arg1)
    print("OnSubFinish202013")
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 1 then
        globalActor:PlayerEnterDungeon(421, 1122)
    end
end

function Quest2020:OnSubFailed202013(arg1)
    print("OnSubFailed202013")
end

function Quest2020:OnSubStart202003(arg1)
    print("OnSubStart202003")
    self:ShowBlackScreen(0.5, 0.5, 0.5)
    actorMgr:CreateActorWithPos("Q2020Trigger1", "Actor/Gadget/Q2020Trigger1", 70900002, 0, sceneData:GetDummyPoint(20117, "Q202003Ying").pos, sceneData:GetDummyPoint(20117, "Q202003Ying").rot, true, false, 20117)
    self:DestroyQuestNpcActor(npcs.Npc1034Data.alias, 20117)
end

function Quest2020:OnSubFinish202003(arg1)
    print("OnSubFinish202003")
    self:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 20117)
end

function Quest2020:OnSubFailed202003(arg1)
    print("OnSubFailed202003")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 20117)
    end)
end

function Quest2020:OnSubStart202004(arg1)
    print("OnSubStart202004")
end

function Quest2020:OnSubFinish202004(arg1)
    print("OnSubFinish202004")
end

function Quest2020:OnSubFailed202004(arg1)
    print("OnSubFailed202004")
end

function Quest2020:OnSubStart202010(arg1)
    print("OnSubStart202010")
    self:PlayCutsceneIndex("20200402", function(arg1)
        arg1:FinishQuestID(false, 202010)
    end, nil, nil, false)
end

function Quest2020:OnSubFinish202010(arg1)
    print("OnSubFinish202010")
end

function Quest2020:OnSubFailed202010(arg1)
    print("OnSubFailed202010")
end

function Quest2020:OnSubStart202011(arg1)
    print("OnSubStart202011")
end

function Quest2020:OnSubFinish202011(arg1)
    print("OnSubFinish202011")
end

function Quest2020:OnSubFailed202011(arg1)
    print("OnSubFailed202011")
end

function Quest2020:OnSubStart202005(arg1)
    print("OnSubStart202005")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1036Data.id, 1, npcs.Npc1036Data.alias)
end

function Quest2020:OnSubFinish202005(arg1)
    print("OnSubFinish202005")
    self:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 20117)
end

function Quest2020:OnSubFailed202005(arg1)
    print("OnSubFailed202005")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 20117)
        arg1:DestroyQuestNpcActor("Npc1034", 20117)
    end)
end

function Quest2020:OnSubStart202006(arg1)
    print("OnSubStart202006")
    self.LevelLoadFinishSafeCall(self, function()
        self:TransmitPlayerWithTextById(arg1, 5, {""}, 2.5, function()
            self:CreateQuestNpcById(202012, 1005, 0)
            self:CallDelay(0.6, function()
                self:RequestInteraction(npcs.PaimonData.alias)
            end)
        end)
    end)
end

function Quest2020:OnSubFinish202006(arg1)
    print("OnSubFinish202006")
end

function Quest2020:OnSubFailed202006(arg1)
    print("OnSubFailed202006")
end

function Quest2020:OnSubStart202012(arg1)
    print("OnSubStart202012")
    if self:GetQuestVar(arg1.QuestConfigId, 1) == 1 then
        actorMgr:CreateActorWithPos("Q2020Trigger2", "Actor/Gadget/Q2020Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q202101Paimon").pos, sceneData:GetDummyPoint(3, "Q202101Paimon").rot, true, false, 3)
    end
end

function Quest2020:OnSubFinish202012(arg1)
    print("OnSubFinish202012")
end

function Quest2020:OnSubFailed202012(arg1)
    print("OnSubFailed202012")
end

return Quest2020
