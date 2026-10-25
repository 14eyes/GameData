require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest466 = class("Quest466", QuestActorProxy)
Quest466.defaultAlias = "Quest466"
local clientData
local DailyNPCManager = require("Actor/DailyNPCManager")

local subIDs
local dilucData
local hoffmanData
local conorData
local kaeyaData
local lureData
local baitData
local guardData
local joseData

function Quest466:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    dilucData = clientData.DilucData
    hoffmanData = clientData.HoffmanData
    conorData = clientData.ConorData
    kaeyaData = clientData.KaeyaData
    guardData = clientData.GuardData
    joseData = clientData.JoseData
    baitData = clientData.BaitData
    lureData = clientData.LureData
end

function Quest466:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46601"] = self.OnSubStart46601
    self.subStartHandlers["46602"] = self.OnSubStart46602
    self.subStartHandlers["46603"] = self.OnSubStart46603
    self.subStartHandlers["46604"] = self.OnSubStart46604
    self.subStartHandlers["46605"] = self.OnSubStart46605
    self.subStartHandlers["46606"] = self.OnSubStart46606
    self.subStartHandlers["46607"] = self.OnSubStart46607
    self.subStartHandlers["46608"] = self.OnSubStart46608
    self.subStartHandlers["46609"] = self.OnSubStart46609
    self.subStartHandlers["46610"] = self.OnSubStart46610
    self.subStartHandlers["46611"] = self.OnSubStart46611
    self.subStartHandlers["46612"] = self.OnSubStart46612
    self.subStartHandlers["46613"] = self.OnSubStart46613
    self.subStartHandlers["46614"] = self.OnSubStart46614
    self.subStartHandlers["46615"] = self.OnSubStart46615
    self.subStartHandlers["46616"] = self.OnSubStart46616
    self.subStartHandlers["46617"] = self.OnSubStart46617
    self.subStartHandlers["46618"] = self.OnSubStart46618
    self.subStartHandlers["46619"] = self.OnSubStart46619
    self.subStartHandlers["46620"] = self.OnSubStart46620
    self.subStartHandlers["46621"] = self.OnSubStart46621
    self.subStartHandlers["46622"] = self.OnSubStart46622
    self.subStartHandlers["46623"] = self.OnSubStart46623
    self.subStartHandlers["46624"] = self.OnSubStart46624
    self.subStartHandlers["46625"] = self.OnSubStart46625
end

function Quest466:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46601"] = self.OnSubFinish46601
    self.subFinishHandlers["46602"] = self.OnSubFinish46602
    self.subFinishHandlers["46603"] = self.OnSubFinish46603
    self.subFinishHandlers["46604"] = self.OnSubFinish46604
    self.subFinishHandlers["46605"] = self.OnSubFinish46605
    self.subFinishHandlers["46606"] = self.OnSubFinish46606
    self.subFinishHandlers["46607"] = self.OnSubFinish46607
    self.subFinishHandlers["46608"] = self.OnSubFinish46608
    self.subFinishHandlers["46609"] = self.OnSubFinish46609
    self.subFinishHandlers["46610"] = self.OnSubFinish46610
    self.subFinishHandlers["46611"] = self.OnSubFinish46611
    self.subFinishHandlers["46612"] = self.OnSubFinish46612
    self.subFinishHandlers["46613"] = self.OnSubFinish46613
    self.subFinishHandlers["46614"] = self.OnSubFinish46614
    self.subFinishHandlers["46615"] = self.OnSubFinish46615
    self.subFinishHandlers["46616"] = self.OnSubFinish46616
    self.subFinishHandlers["46617"] = self.OnSubFinish46617
    self.subFinishHandlers["46618"] = self.OnSubFinish46618
    self.subFinishHandlers["46619"] = self.OnSubFinish46619
    self.subFinishHandlers["46620"] = self.OnSubFinish46620
    self.subFinishHandlers["46621"] = self.OnSubFinish46621
    self.subFinishHandlers["46622"] = self.OnSubFinish46622
    self.subFinishHandlers["46623"] = self.OnSubFinish46623
    self.subFinishHandlers["46624"] = self.OnSubFinish46624
    self.subFinishHandlers["46625"] = self.OnSubFinish46625
end

function Quest466:OnSubStart46601(arg1)
    print("46601 Start: Creat NPC")
    self:CreateQuestNpcById(46601, dilucData.DilucID, 1)
end

function Quest466:OnSubFinish46601(arg1)
    print("46601 Finish: Creat NPC")
    self:CreateQuestNpcById(46601, dilucData.DilucID, 1)
end

function Quest466:OnSubFinish46602(arg1)
    print("46602 Finish: Hide NPC")
    self:ActionSafeCall(self.Finish46602Do)
end

function Quest466:Finish46602Do(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest466:OnBright1(arg1) end

function Quest466:OnSubFinish46603(arg1)
    print("---------- 46603 Finish: Creat NPC -----------")
    self:CreateQuestNpcById(46603, dilucData.DilucID, 1)
end

function Quest466:Finish46603Do(arg1)
    print("---------- 46603 Do: Creat NPC -----------")
end

function Quest466:OnSubFinish46621(arg1)
    print("46621 Finish: Creat NPC")
    self:NotifyTo("Npc1529", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpcById(46621, dilucData.DilucID, 1)
    self:CreateQuestNpcById(46621, conorData.ConorID, 2)
end

function Quest466:OnSubFinish46622(arg1)
    print("46622 Finish: Creat NPC")
    self:NotifyTo("Npc1529", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.OnBright8)
end

function Quest466:Finish46622Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright8)
end

function Quest466:OnBright8()
    self:CreateQuestNpcById(46622, conorData.ConorID, 2)
    local questNpcActor = self:GetQuestNpcActor(conorData.Conor)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    globalActor:UnSpawn("Lure")
    local lureData = self.clientData.LureData
    self:SpawnGadgetById(46622, lureData.LureID, 1)
    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest466:OnSubStart46604(arg1)
    print("46604 Start: Clear Target")
    local targetData = self.clientData.TargetData
    globalActor:UnSpawn("Bait")
end

function Quest466:OnSubFinish46604(arg1)
    print("46604 Finish: Creat NPC")
    globalActor:UnSpawn("Bait")
    local baitData = self.clientData.BaitData
    self:SpawnGadgetById(46604, baitData.BaitID, 1)
end

function Quest466:OnSubFinish46605(arg1)
    print("46605 Finish: Creat Monster")
    self:ActionSafeCall(self.Finish46605Do)
end

function Quest466:Finish46605Do(arg1)
    globalActor:UnSpawn("Bait")
    self:CreateQuestNpcById(46605, conorData.ConorID, 1)
    local questNpcActor = self:GetQuestNpcActor(conorData.Conor)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest466:OnSubStart46606(arg1)
    print("46606 Start: Clear bait")
    globalActor:UnSpawn("Bait")
    globalActor:UnSpawn("Lure")
end

function Quest466:OnSubFinish46606(arg1)
    print("46606 Finish: Clear Target")
    self:CallDelay(4, self.Delay1)
end

function Quest466:Delay1(arg1)
    local dilucData = self.clientData.DilucData
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({dilucData.DilucID})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright7, nil, questNpcCreateTask)
    local targetData = self.clientData.TargetData
end

function Quest466:OnBright7(arg1)
    self:CreateQuestNpcById(46606, dilucData.DilucID, 1)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest466:OnSubFinish46607(arg1)
    print("46607 Finish: Creat Monster")
    self:ActionSafeCall(self.Finish46607Do)
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
end

function Quest466:Finish46607Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright5)
end

function Quest466:OnBright5(arg1)
    self:CreateQuestNpcById(46607, dilucData.DilucID, 1)
    local questNpcActor = self:GetQuestNpcActor(dilucData.Diluc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end

    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2)
end

function Quest466:OnSubStart46608(arg1)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
    globalActor:UnSpawn("Lure")
    globalActor:UnSpawn("Bait")
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
    local actor = actorMgr:GetActor("Q466Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor("Q466Trigger3")
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor("Q466Trigger2")
    if actor2 ~= nil then
        actor2:DestroySelf()
    end

    local actor3 = actorMgr:GetActor("Q466Trigger4")
    if actor3 ~= nil then
        actor3:DestroySelf()
    end

    self:CallDelay(1.0, function(arg1)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
    end)
end

function Quest466:OnSubFinish46608(arg1)
    print("46608 Finish: Creat NPC & Trigger1")
    actorMgr:CreateActorWithPos("Q466Trigger1", "Actor/Gadget/Q466Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q466Trigger1").pos, sceneData:GetDummyPoint(3, "Q466Trigger1").rot, true, false)
    actorMgr:CreateActorWithPos("Q466Trigger3", "Actor/Gadget/Q466Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q466Trigger1").pos, sceneData:GetDummyPoint(3, "Q466Trigger1").rot, true, false)
end

function Quest466:OnSubFinish46609(arg1)
    print("46608 Finish: Creat NPC & Trigger1")
end

function Quest466:OnSubStart46610(arg1)
    print("OnSubStart46610")
    self:CreateQuestNpcById(46610, dilucData.DilucID, 1)
    self:CreateQuestNpcById(46610, hoffmanData.HoffmanID, 2)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubFinish46610(arg1)
    print("46610 Finish: Creat Lure")
    globalActor:UnSpawn("Lure")
    local lureData = self.clientData.LureData
    self:SpawnGadgetById(46610, lureData.LureID, 1)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNPCManager.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest466:OnSubStart46611(arg1)
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubStart46619(arg1)
    print("46619 start:...")
    self:AdvanceQuest()
end

function Quest466:AdvanceQuest()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest466:OnSubFinish46620(arg1)
    print("46620 Finish: Story")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story7)
    actorMgr:CreateActorWithPos("Q466Trigger1", "Actor/Gadget/Q466Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q466Trigger1").pos, sceneData:GetDummyPoint(3, "Q466Trigger1").rot, true, false)
    actorMgr:CreateActorWithPos("Q466Trigger3", "Actor/Gadget/Q466Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q466Trigger1").pos, sceneData:GetDummyPoint(3, "Q466Trigger1").rot, true, false)
end

function Quest466:OnSubFinish46611(arg1)
    print("46611 Finish: Creat NPC")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story3)
    globalActor:UnSpawn("Bait")
    local baitData = self.clientData.BaitData
    self:SpawnGadgetById(46611, baitData.BaitID, 1)
    print("46611 Finish: Creat Lure")
    self:CreateQuestNpcById(46611, dilucData.DilucID, 1)
    self:CreateQuestNpcById(46611, hoffmanData.HoffmanID, 2)
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
    local monster1Data = self.clientData.Monster1Data
    local monster2Data = self.clientData.Monster2Data
    local monster3Data = self.clientData.Monster3Data
    local monster4Data = self.clientData.Monster4Data
    self:SpawnMonsterById(46611, monster1Data.MonsterID, 1)
    self:SpawnMonsterById(46611, monster2Data.MonsterID, 2)
    self:SpawnMonsterById(46611, monster3Data.MonsterID, 3)
    self:SpawnMonsterById(46611, monster4Data.MonsterID, 4)
    self:SpawnMonsterById(46611, monster3Data.MonsterID, 5)
    self:SpawnMonsterById(46611, monster4Data.MonsterID, 6)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q466Slime").pos, 4, 12, true)
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(13, self.OnEnableInput)
end

function Quest466:OnEnableInput()
    print("466 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
    self:TransmitPlayerByQuestId(46611, 1)
end

function Quest466:OnSubFinish46625(arg1)
    print("46625 Finish: Paimon Talk")
    self.uActor:AvatarPaimonAppear()
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story8)
    self:CallDelay(5, self.OnEnableInput2)
end

function Quest466:OnEnableInput2()
    print("46625 DelayFinish: Enable Player Input")
    self.uActor:AvatarPaimonDisappear(nil, false)
    globalActor:EnablePlayerInput(true)
    self:TransmitPlayerByQuestId(46625, 1)
end

function Quest466:OnSubStart46612(arg1)
    self:NotifyTo("Npc1663", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest466:OnSubStart46613(arg1)
    self:CreateQuestNpcById(46613, dilucData.DilucID, 1)
    self:CreateQuestNpcById(46613, hoffmanData.HoffmanID, 7)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest466:OnSubFinish46613(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright3)
end

function Quest466:OnBright3(arg1)
    print("46613 Finish: Hoffman Destroy")
    local questNpcActor = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end

    self:CreateQuestNpcById(46613, guardData.GuardID, 1)
    local questNpcActor2 = self:GetQuestNpcActor(guardData.Guard)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    self:CreateQuestNpcById(46613, dilucData.DilucID, 2)
    local questNpcActor3 = self:GetQuestNpcActor(dilucData.Diluc)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end
end

function Quest466:OnSubStart46614(arg1)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1437", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubFinish46614(arg1)
    print("46614 Finish: Creat Monster")
    self:PlayCutsceneIndex(46601, self.AfterCSDo)
    globalActor:UnSpawn("Q466Trigger1")
    globalActor:UnSpawn("Q466Trigger3")
    actorMgr:GetActor("Q466Trigger1"):DestroySelf()
    actorMgr:GetActor("Q466Trigger3"):DestroySelf()
    local actorWithPos = actorMgr:CreateActorWithPos("Q466Trigger2", "Actor/Gadget/Q466Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q466Trigger2").pos, sceneData:GetDummyPoint(3, "Q466Trigger2").rot, true, false)
    local v = actorMgr:CreateActorWithPos("Q466Trigger4", "Actor/Gadget/Q466Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q466Trigger2").pos, sceneData:GetDummyPoint(3, "Q466Trigger2").rot, true, false)
    actorWithPos:SetLocalEntityDist(200)
    v:SetLocalEntityDist(200)
    local questNpcActor = self:GetQuestNpcActor(guardData.Guard)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:Destroy(false)
        end)
    end
end

function Quest466:AfterCSDo(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest466:OnSubStart46624(arg1)
    print("46615 Finish: Creat NPC")
    self:CallDelay(2, self.Delay2)
end

function Quest466:Delay2(arg1)
    print("Finish 46624")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest466:OnSubFinish46624(arg1)
    local dilucData = self.clientData.DilucData
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({dilucData.Diluc})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright4, nil, questNpcCreateTask)
end

function Quest466:OnBright4(arg1)
    self:CreateQuestNpcById(46624, dilucData.DilucID, 1)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest466:OnSubStart46616(arg1)
    self:CreateQuestNpcById(46616, dilucData.DilucID, 1)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1437", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubFinish46616(arg1)
    print("46616 Finish: Creat NPC")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story5)
    self:ActionSafeCall(self.Finish46616Do)
end

function Quest466:Finish46616Do(arg1)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright6)
end

function Quest466:OnBright6(arg1)
    self:CreateQuestNpcById(46616, dilucData.DilucID, 1)
    local questNpcActor = self:GetQuestNpcActor(dilucData.Diluc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest466:OnSubFinish46617(arg1)
    print("46617 Finish: Creat NPC")
    self:CreateQuestNpcById(46617, dilucData.DilucID, 1)
end

function Quest466:OnSubStart46618(arg1)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1437", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1439", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:CreateQuestNpcById(46618, dilucData.DilucID, 1)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest466:OnSubFinish46618(arg1)
    print("46618 Finish: Hide NPC")
    if self:GetSubQuestState(1020014) ~= 2 then
        if self:GetSubQuestState(1020014) ~= 1 then
            if self:GetSubQuestState(4015705) ~= 3 then
                goto lbl_25
            end
        end
    end

    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.STARTDAILY, true)
    ::lbl_25::
    self:ActionSafeCall(self.Finish46618Do)
end

function Quest466:Finish46618Do(arg1)
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
    self:CallDelay(0.1, function(arg1)
        arg1:ActionSafeCall(arg1.OnBright2)
    end)
end

function Quest466:OnBright2(arg1)
    globalActor:UnSpawn("Q466Trigger2")
    globalActor:UnSpawn("Q466Trigger4")
    local actor = actorMgr:GetActor("Q466Trigger2")
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor("Q466Trigger4")
    if v ~= nil then
        v:DestroySelf()
    end

    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(dilucData.Diluc)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor(kaeyaData.Kaeya)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end

    local questNpcActor4 = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if questNpcActor4 ~= nil then
        questNpcActor4:Destroy(false)
    end

    local questNpcActor5 = self:GetQuestNpcActor(joseData.Jose)
    if questNpcActor5 ~= nil then
        questNpcActor5:Destroy(false)
    end
end

function Quest466:InvokeOnInteraction(arg1)
    print("466 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
    elseif arg1 == 2 then
        print("Invoke 2")
    elseif arg1 == 3 then
        print("Invoke 3")
        self:CreateQuestNpcById(46613, guardData.GuardID, 3)
        local questNpcActor = self:GetQuestNpcActor(self.clientData.GuardData.Guard)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(guardData.Pos1)
        end
    elseif arg1 == 4 then
        print("Invoke 4")
        local questNpcActor = self:GetQuestNpcActor(self.clientData.GuardData.Guard)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(guardData.Pos2)
        end

        local v = self:GetQuestNpcActor(hoffmanData.Hoffman)
        if v ~= nil then
            v:ClearFollowTask()
            v:WalkToTask(hoffmanData.Pos2)
        end

        self:CallDelay(2, self.GuardVanish)
    elseif arg1 == 5 then
        print("Invoke 5")
    elseif arg1 == 6 then
        print("Invoke 6")
        self:CallDelay(2, self.HoffmanVanish)
    elseif arg1 == 7 then
        print("Invoke 7")
        self:CreateQuestNpcById(48818, kaeyaData.KaeyaID, 5)
        local questNpcActor = self:GetQuestNpcActor(self.clientData.KaeyaData.Kaeya)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(kaeyaData.Pos2)
        end
    elseif arg1 == 8 then
        print("Invoke 8")
        local questNpcActor = self:GetQuestNpcActor(self.clientData.KaeyaData.Kaeya)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(kaeyaData.Pos1)
        end

        self:CallDelay(2, self.KaeyaVanish)
    elseif arg1 == 9 then
        print("Invoke 9")
        local monster5Data = self.clientData.Monster5Data
        local monster6Data = self.clientData.Monster6Data
        local monster7Data = self.clientData.Monster7Data
        self:SpawnMonsterById(46605, monster5Data.MonsterID, 1)
        self:SpawnMonsterById(46605, monster6Data.MonsterID, 2)
        self:SpawnMonsterById(46605, monster7Data.MonsterID, 3)
    elseif arg1 == 10 then
        print("Invoke 10")
        globalActor:UnSpawn("Slime7")
        globalActor:UnSpawn("Slime8")
        globalActor:UnSpawn("Slime9")
    elseif arg1 == 11 then
        print("Invoke 11")
        self:ShowBlackScreen(0.5, 2.5, 0.5)
    end
end

function Quest466:GuardVanish()
    self:CreateQuestNpcById(46613, hoffmanData.HoffmanID, 4)
    self:CreateQuestNpcById(46613, guardData.GuardID, 5)
    local questNpcActor = self:GetQuestNpcActor(guardData.Guard)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest466:HoffmanVanish()
    self:CreateQuestNpcById(48818, hoffmanData.HoffmanID, 4)
    local questNpcActor = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest466:KaeyaVanish()
    self:CreateQuestNpcById(48818, kaeyaData.KaeyaID, 5)
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Kaeya)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest466:Start() end
function Quest466:OnDestroy() end
return Quest466
