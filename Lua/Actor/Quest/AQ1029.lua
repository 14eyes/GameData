require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1029 = class("Quest1029", QuestActorProxy)
Quest1029.defaultAlias = "Quest1029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest1029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest1029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["102901"] = self.OnSubStart102901,
        ["102936"] = self.OnSubStart102936,
        ["102935"] = self.OnSubStart102935,
        ["102933"] = self.OnSubStart102933,
        ["102902"] = self.OnSubStart102902,
        ["102903"] = self.OnSubStart102903,
        ["102904"] = self.OnSubStart102904,
        ["102905"] = self.OnSubStart102905,
        ["102906"] = self.OnSubStart102906,
        ["102907"] = self.OnSubStart102907,
        ["102929"] = self.OnSubStart102929,
        ["102928"] = self.OnSubStart102928,
        ["102927"] = self.OnSubStart102927,
        ["102926"] = self.OnSubStart102926,
        ["102925"] = self.OnSubStart102925,
        ["102924"] = self.OnSubStart102924,
        ["102930"] = self.OnSubStart102930,
        ["102931"] = self.OnSubStart102931,
        ["102908"] = self.OnSubStart102908,
        ["102909"] = self.OnSubStart102909,
        ["102934"] = self.OnSubStart102934,
        ["102910"] = self.OnSubStart102910,
        ["102911"] = self.OnSubStart102911,
        ["102916"] = self.OnSubStart102916,
        ["102917"] = self.OnSubStart102917,
        ["102912"] = self.OnSubStart102912,
        ["102918"] = self.OnSubStart102918,
        ["102932"] = self.OnSubStart102932,
        ["102913"] = self.OnSubStart102913,
        ["102914"] = self.OnSubStart102914,
        ["102915"] = self.OnSubStart102915,
        ["102919"] = self.OnSubStart102919,
        ["102920"] = self.OnSubStart102920,
        ["102921"] = self.OnSubStart102921,
        ["102922"] = self.OnSubStart102922,
        ["102923"] = self.OnSubStart102923
    }
end

function Quest1029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["102901"] = self.OnSubFinish102901,
        ["102936"] = self.OnSubFinish102936,
        ["102935"] = self.OnSubFinish102935,
        ["102933"] = self.OnSubFinish102933,
        ["102902"] = self.OnSubFinish102902,
        ["102903"] = self.OnSubFinish102903,
        ["102904"] = self.OnSubFinish102904,
        ["102905"] = self.OnSubFinish102905,
        ["102906"] = self.OnSubFinish102906,
        ["102907"] = self.OnSubFinish102907,
        ["102929"] = self.OnSubFinish102929,
        ["102928"] = self.OnSubFinish102928,
        ["102927"] = self.OnSubFinish102927,
        ["102926"] = self.OnSubFinish102926,
        ["102925"] = self.OnSubFinish102925,
        ["102924"] = self.OnSubFinish102924,
        ["102930"] = self.OnSubFinish102930,
        ["102931"] = self.OnSubFinish102931,
        ["102908"] = self.OnSubFinish102908,
        ["102909"] = self.OnSubFinish102909,
        ["102934"] = self.OnSubFinish102934,
        ["102910"] = self.OnSubFinish102910,
        ["102911"] = self.OnSubFinish102911,
        ["102916"] = self.OnSubFinish102916,
        ["102917"] = self.OnSubFinish102917,
        ["102912"] = self.OnSubFinish102912,
        ["102918"] = self.OnSubFinish102918,
        ["102932"] = self.OnSubFinish102932,
        ["102913"] = self.OnSubFinish102913,
        ["102914"] = self.OnSubFinish102914,
        ["102915"] = self.OnSubFinish102915,
        ["102919"] = self.OnSubFinish102919,
        ["102920"] = self.OnSubFinish102920,
        ["102921"] = self.OnSubFinish102921,
        ["102922"] = self.OnSubFinish102922,
        ["102923"] = self.OnSubFinish102923
    }
end

function Quest1029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["102905"] = self.OnSubFailed102905,
        ["102908"] = self.OnSubFailed102908,
        ["102913"] = self.OnSubFailed102913
    }
end

function Quest1029:Start()
    print("Start")
end

function Quest1029:OnDestroy()
    print("OnDestroy")
end

function Quest1029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1029:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest1029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest1029:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 102907 then
        actorUtils.FinishQuestID(false, 102907)
    elseif arg1 == 102929 then
        actorUtils.FinishQuestID(false, 102929)
    elseif arg1 == 102928 then
        actorUtils.FinishQuestID(false, 102928)
    elseif arg1 == 102927 then
        actorUtils.FinishQuestID(false, 102927)
    elseif arg1 == 102926 then
        actorUtils.FinishQuestID(false, 102926)
    elseif arg1 == 102925 then
        actorUtils.FinishQuestID(false, 102925)
    elseif arg1 == 102924 then
        actorUtils.FinishQuestID(false, 102924)
    elseif arg1 == 102930 then
        actorUtils.FinishQuestID(false, 102930)
    elseif arg1 == 102931 then
        actorUtils.FinishQuestID(false, 102931)
    elseif arg1 == 102933 then
        actorUtils.FinishQuestID(false, 102933)
    elseif arg1 == 102932 then
        actorUtils.FinishQuestID(false, 102932)
    end
end

function Quest1029:OnSubStart102901(arg1)
    print("OnSubStart102901")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:LevelLoadFinishSafeCall(function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
        end)
    end)
end

function Quest1029:OnSubFinish102901(arg1)
    print("OnSubFinish102901")
end

function Quest1029:OnSubStart102936(arg1)
    print("OnSubStart102936")
end

function Quest1029:OnSubFinish102936(arg1)
    print("OnSubFinish102936")
end

function Quest1029:OnSubStart102935(arg1)
    print("OnSubStart102935")
    self:AfterMainPageActiveSafeCall(function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
        end, nil, nil, "", false, true)
    end)
end

function Quest1029:OnSubFinish102935(arg1)
    print("OnSubFinish102935")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20130)
    end)
end

function Quest1029:OnSubStart102933(arg1)
    print("OnSubStart102933")
end

function Quest1029:OnSubFinish102933(arg1)
    print("OnSubFinish102933")
end

function Quest1029:OnSubStart102902(arg1)
    print("OnSubStart102902")
    self:EnablePlayerInput(true)
end

function Quest1029:OnSubFinish102902(arg1)
    print("OnSubFinish102902")
end

function Quest1029:OnSubStart102903(arg1)
    print("OnSubStart102903")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.DungeonKaiche, nil, 1029)
    end)
end

function Quest1029:OnSubFinish102903(arg1)
    print("OnSubFinish102903")
end

function Quest1029:OnSubStart102904(arg1)
    print("OnSubStart102904")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1030Data.id, 0, npcs.Npc1030Data.alias)
end

function Quest1029:OnSubFinish102904(arg1)
    print("OnSubFinish102904")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20128)
        arg1:EnablePlayerInput(false)
    end)
end

function Quest1029:OnSubStart102905(arg1)
    print("OnSubStart102905")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    end)

    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:TransmitPlayerByQuestId(102905, 1)
    end)

    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20128, "Q102905_look").pos, 0, 5, false, false)
    actorMgr:CreateActorWithPos("Q1029Trigger6", "Actor/Gadget/Q1029Trigger6", 70900002, 0, {x = 1.446, y = -228.897, z = -4.95}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20128)
    actorMgr:CreateActorWithPos("Q1029Trigger10", "Actor/Gadget/Q1029Trigger10", 70900002, 0, sceneData:GetDummyPoint(20128, "Q102906_N1044").pos, sceneData:GetDummyPoint(20128, "Q102906_N1044").rot, true, false, 20128)
end

function Quest1029:OnSubFinish102905(arg1)
    print("OnSubFinish102905")
    self:EnablePlayerInput(true)
end

function Quest1029:OnSubFailed102905(arg1)
    print("OnSubFailed102905")
    self:EnablePlayerInput(true)
end

function Quest1029:OnSubStart102906(arg1)
    print("OnSubStart102906")
end

function Quest1029:OnSubFinish102906(arg1)
    print("OnSubFinish102906")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 20128)
    end)
end

function Quest1029:OnSubStart102907(arg1)
    print("OnSubStart102907")
end

function Quest1029:OnSubFinish102907(arg1)
    print("OnSubFinish102907")
end

function Quest1029:OnSubStart102929(arg1)
    print("OnSubStart102929")
end

function Quest1029:OnSubFinish102929(arg1)
    print("OnSubFinish102929")
end

function Quest1029:OnSubStart102928(arg1)
    print("OnSubStart102928")
end

function Quest1029:OnSubFinish102928(arg1)
    print("OnSubFinish102928")
end

function Quest1029:OnSubStart102927(arg1)
    print("OnSubStart102927")
end

function Quest1029:OnSubFinish102927(arg1)
    print("OnSubFinish102927")
end

function Quest1029:OnSubStart102926(arg1)
    print("OnSubStart102926")
end

function Quest1029:OnSubFinish102926(arg1)
    print("OnSubFinish102926")
end

function Quest1029:OnSubStart102925(arg1)
    print("OnSubStart102925")
end

function Quest1029:OnSubFinish102925(arg1)
    print("OnSubFinish102925")
end

function Quest1029:OnSubStart102924(arg1)
    print("OnSubStart102924")
end

function Quest1029:OnSubFinish102924(arg1)
    print("OnSubFinish102924")
end

function Quest1029:OnSubStart102930(arg1)
    print("OnSubStart102930")
end

function Quest1029:OnSubFinish102930(arg1)
    print("OnSubFinish102930")
end

function Quest1029:OnSubStart102931(arg1)
    print("OnSubStart102931")
end

function Quest1029:OnSubFinish102931(arg1)
    print("OnSubFinish102931")
end

function Quest1029:OnSubStart102908(arg1)
    print("OnSubStart102908")
    self:ActionSafeCall(function(arg1)
        globalActor:AvatarMoveToRoute({
            sceneData:GetDummyPoint(20128, "Q102908_Walk").pos,
            sceneData:GetDummyPoint(20128, "Q102908_Walk").pos
        }, true, function()
            actorUtils.FinishQuestID(false, 102908)
        end)

        arg1:EnablePlayerInput(false)
        arg1:CallDelay(3, function(arg1)
            arg1:NarratorOnlyTask(datas.PlayerKaicheVoid, nil, "")
        end)

        arg1:DisableMainPageUI(true)
    end)
end

function Quest1029:OnSubFinish102908(arg1)
    print("OnSubFinish102908")
    globalActor:StopAvatarMove()
    self:EnablePlayerInput(true)
    self:NarratorOnlyTask(datas.PlayerKaiche, nil, "")
    self:EnterSceneLookCamera({x = 34.389, y = -213.702, z = -26.799}, 0, 2, false, false)
    self:DisableMainPageUI(false)
end

function Quest1029:OnSubFailed102908(arg1)
    print("OnSubFailed102908")
    self:DisableMainPageUI(false)
end

function Quest1029:OnSubStart102909(arg1)
    print("OnSubStart102909")
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
    actorMgr:CreateActorWithPos("Q1029Trigger5", "Actor/Gadget/Q1029Trigger5", 70900002, 0, {x = 104.085, y = -291.019, z = -65.718}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20128)
    actorMgr:CreateActorWithPos("Q1029Trigger7", "Actor/Gadget/Q1029Trigger7", 70900002, 0, {x = 81.378, y = -218.674, z = -44.684}, {x = 0.0, y = 38.109, z = 0.0}, true, false, 20128)
    actorMgr:CreateActorWithPos("Q1029Trigger8", "Actor/Gadget/Q1029Trigger8", 70900002, 0, {x = 80.658, y = -293.673, z = -42.589}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20128)
    self:EnablePlayerInput(true)
end

function Quest1029:OnSubFinish102909(arg1)
    print("OnSubFinish102909")
end

function Quest1029:OnSubStart102934(arg1)
    print("OnSubStart102934")
end

function Quest1029:OnSubFinish102934(arg1)
    print("OnSubFinish102934")
end

function Quest1029:OnSubStart102910(arg1)
    print("OnSubStart102910")
    self:RequestInteraction(npcs.Npc1030Data.alias)
end

function Quest1029:OnSubFinish102910(arg1)
    print("OnSubFinish102910")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, nil, 1)
    end)
end

function Quest1029:OnSubStart102911(arg1)
    print("OnSubStart102911")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1050, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
        globalActor:DisablePaimonInProfilePage({20130})
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
        actorMgr:CreateActorWithPos("Q1029Trigger11", "Actor/Gadget/Q1029Trigger11", 70900002, 0, sceneData:GetDummyPoint(20130, "Q102923_Q103201_N1005").pos, sceneData:GetDummyPoint(20130, "Q102923_Q103201_N1005").rot, true, false, 20130)
    end)
end

function Quest1029:OnSubFinish102911(arg1)
    print("OnSubFinish102911")
end

function Quest1029:OnSubStart102916(arg1)
    print("OnSubStart102916")
end

function Quest1029:OnSubFinish102916(arg1)
    print("OnSubFinish102916")
end

function Quest1029:OnSubStart102917(arg1)
    print("OnSubStart102917")
end

function Quest1029:OnSubFinish102917(arg1)
    print("OnSubFinish102917")
end

function Quest1029:OnSubStart102912(arg1)
    print("OnSubStart102912")
    actorMgr:CreateActorWithPos("Q1029Trigger3", "Actor/Gadget/Q1029Trigger3", 70900002, 0, sceneData:GetDummyPoint(20130, "T102912_N10000005").pos, sceneData:GetDummyPoint(20130, "T102912_N10000005").rot, true, false, 20130)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    questNpcActor:SpawnAttach("Paimon_BubbleWorry")
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    globalActor:DisablePaimonInProfilePage({20130})
    self:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_None", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01", 0, false, true)
        arg1:NarratorOnlyTaskByData(datas.YanfeiKaiche, nil, 1029)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
end

function Quest1029:OnSubFinish102912(arg1)
    print("OnSubFinish102912")
end

function Quest1029:OnSubStart102918(arg1)
    print("OnSubStart102918")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1030Data.id, 0, npcs.Npc1030Data.alias)
end

function Quest1029:OnSubFinish102918(arg1)
    print("OnSubFinish102918")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20130)
    end)
end

function Quest1029:OnSubStart102932(arg1)
    print("OnSubStart102932")
end

function Quest1029:OnSubFinish102932(arg1)
    print("OnSubFinish102932")
end

function Quest1029:OnSubStart102913(arg1)
    print("OnSubStart102913")
    actorMgr:CreateActorWithPos("Q1029Trigger", "Actor/Gadget/Q1029Trigger", 70900002, 0, {x = -16.601, y = 15.887, z = 19.882}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20130)
    actorMgr:CreateActorWithPos("Q1029Trigger1", "Actor/Gadget/Q1029Trigger1", 70900002, 0, {x = 0.531, y = 16.856, z = 20.626}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20130)
    actorMgr:CreateActorWithPos("Q1029Trigger2", "Actor/Gadget/Q1029Trigger2", 70900002, 0, {x = 26.12, y = 13.116, z = 8.113}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20130)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1030Data.alias):NpcFollowTaskWithParams(1, nil, nil, function(arg1)
            arg1:DoFreeStyle(1190, true, nil, true, true, false)
        end, "", false, 0.5, 5, 2, 25, 30, 50, 3, 5)

        actorMgr:CreateActorWithPos("Q1029Trigger4", "Actor/Gadget/Q1029Trigger4", 70900002, 0, sceneData:GetDummyPoint(20130, "Q102914_N10204").pos, sceneData:GetDummyPoint(20130, "Q102914_N10204").rot, true, false, 20130)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    questNpcActor:SpawnAttach("Paimon_BubbleWorry")
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    globalActor:DisablePaimonInProfilePage({20130})
    self:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_None", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01", 0, false, true)
    end)

    questNpcActor:SpawnAttach("Paimon_BubbleWorry")
end

function Quest1029:OnSubFinish102913(arg1)
    print("OnSubFinish102913")
end

function Quest1029:OnSubFailed102913(arg1)
    print("OnSubFailed102913")
    self:ActorDestroy("Q1029Trigger")
    self:ActorDestroy("Q1029Trigger1")
    self:ActorDestroy("Q1029Trigger2")
    self:ActorDestroy("Q1029Trigger4")
    self:GetQuestNpcActor(npcs.Npc1030Data.alias):ClearNpcFollowTask()
end

function Quest1029:OnSubStart102914(arg1)
    print("OnSubStart102914")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:GetQuestNpcActor(npcs.Npc1030Data.alias):ClearNpcFollowTask()
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
        end, nil, nil, "", false, true)
    end)
end

function Quest1029:OnSubFinish102914(arg1)
    print("OnSubFinish102914")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1030Data.alias, 20130)
    end)
end

function Quest1029:OnSubStart102915(arg1)
    print("OnSubStart102915")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.XiaoData.alias)
        questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
        globalActor:DisablePaimonInProfilePage({20130})
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
        local v = arg1_2:GetQuestNpcActor(npcs.PaimonData.alias)
        v:SpawnAttach("Paimon_BubbleWorry")
        arg1_2:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor(npcs.XiaoData.alias):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true)
            arg1:GetQuestNpcActor(npcs.PaimonData.alias):PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_None", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01", 0, false, true)
        end)

        questNpcActor:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1050, true, nil, true, true, false)
    end)

    actorMgr:CreateActorWithPos("Q1029Trigger9", "Actor/Gadget/Q1029Trigger9", 70900002, 0, sceneData:GetDummyPoint(20130, "Q102923_Q103201_N1030").pos, sceneData:GetDummyPoint(20130, "Q102923_Q103201_N1030").rot, true, false, 20130)
end

function Quest1029:OnSubFinish102915(arg1)
    print("OnSubFinish102915")
end

function Quest1029:OnSubStart102919(arg1)
    print("OnSubStart102919")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1049Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.XiaoData.alias)
        questNpcActor:DoFreeStyle(4100, true, nil, true, true, false)
        globalActor:DisablePaimonInProfilePage({20130})
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12544Data.id, 0)
        local v = arg1_2:GetQuestNpcActor(npcs.PaimonData.alias)
        v:SpawnAttach("Paimon_BubbleWorry")
        arg1_2:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor(npcs.XiaoData.alias):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true)
            arg1:GetQuestNpcActor(npcs.PaimonData.alias):PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_None", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01", 0, false, true)
        end)

        questNpcActor:DisableInteeHeadCtrl(true)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1050, true, nil, true, true, false)
    end)
end

function Quest1029:OnSubFinish102919(arg1)
    print("OnSubFinish102919")
end

function Quest1029:OnSubStart102920(arg1)
    print("OnSubStart102920")
end

function Quest1029:OnSubFinish102920(arg1)
    print("OnSubFinish102920")
end

function Quest1029:OnSubStart102921(arg1)
    print("OnSubStart102921")
end

function Quest1029:OnSubFinish102921(arg1)
    print("OnSubFinish102921")
end

function Quest1029:OnSubStart102922(arg1)
    print("OnSubStart102922")
end

function Quest1029:OnSubFinish102922(arg1)
    print("OnSubFinish102922")
end

function Quest1029:OnSubStart102923(arg1)
    print("OnSubStart102923")
end

function Quest1029:OnSubFinish102923(arg1)
    print("OnSubFinish102923")
end

return Quest1029
