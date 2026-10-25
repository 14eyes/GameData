require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72177 = class("Quest72177", QuestActorProxy)
Quest72177.defaultAlias = "Quest72177"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72177:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72177:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217702"] = self.OnSubStart7217702,
        ["7217703"] = self.OnSubStart7217703,
        ["7217710"] = self.OnSubStart7217710,
        ["7217711"] = self.OnSubStart7217711,
        ["7217756"] = self.OnSubStart7217756,
        ["7217704"] = self.OnSubStart7217704,
        ["7217743"] = self.OnSubStart7217743,
        ["7217705"] = self.OnSubStart7217705,
        ["7217706"] = self.OnSubStart7217706,
        ["7217738"] = self.OnSubStart7217738,
        ["7217739"] = self.OnSubStart7217739,
        ["7217707"] = self.OnSubStart7217707,
        ["7217721"] = self.OnSubStart7217721,
        ["7217755"] = self.OnSubStart7217755,
        ["7217751"] = self.OnSubStart7217751,
        ["7217752"] = self.OnSubStart7217752,
        ["7217753"] = self.OnSubStart7217753,
        ["7217754"] = self.OnSubStart7217754,
        ["7217709"] = self.OnSubStart7217709,
        ["7217712"] = self.OnSubStart7217712,
        ["7217714"] = self.OnSubStart7217714,
        ["7217713"] = self.OnSubStart7217713,
        ["7217715"] = self.OnSubStart7217715,
        ["7217746"] = self.OnSubStart7217746,
        ["7217716"] = self.OnSubStart7217716,
        ["7217717"] = self.OnSubStart7217717,
        ["7217718"] = self.OnSubStart7217718,
        ["7217719"] = self.OnSubStart7217719,
        ["7217728"] = self.OnSubStart7217728,
        ["7217722"] = self.OnSubStart7217722,
        ["7217740"] = self.OnSubStart7217740,
        ["7217741"] = self.OnSubStart7217741,
        ["7217747"] = self.OnSubStart7217747,
        ["7217732"] = self.OnSubStart7217732,
        ["7217733"] = self.OnSubStart7217733,
        ["7217734"] = self.OnSubStart7217734,
        ["7217748"] = self.OnSubStart7217748,
        ["7217735"] = self.OnSubStart7217735,
        ["7217736"] = self.OnSubStart7217736,
        ["7217737"] = self.OnSubStart7217737,
        ["7217744"] = self.OnSubStart7217744,
        ["7217749"] = self.OnSubStart7217749
    }
end

function Quest72177:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217702"] = self.OnSubFinish7217702,
        ["7217703"] = self.OnSubFinish7217703,
        ["7217710"] = self.OnSubFinish7217710,
        ["7217711"] = self.OnSubFinish7217711,
        ["7217756"] = self.OnSubFinish7217756,
        ["7217704"] = self.OnSubFinish7217704,
        ["7217743"] = self.OnSubFinish7217743,
        ["7217705"] = self.OnSubFinish7217705,
        ["7217706"] = self.OnSubFinish7217706,
        ["7217738"] = self.OnSubFinish7217738,
        ["7217739"] = self.OnSubFinish7217739,
        ["7217707"] = self.OnSubFinish7217707,
        ["7217721"] = self.OnSubFinish7217721,
        ["7217755"] = self.OnSubFinish7217755,
        ["7217751"] = self.OnSubFinish7217751,
        ["7217752"] = self.OnSubFinish7217752,
        ["7217753"] = self.OnSubFinish7217753,
        ["7217754"] = self.OnSubFinish7217754,
        ["7217709"] = self.OnSubFinish7217709,
        ["7217712"] = self.OnSubFinish7217712,
        ["7217714"] = self.OnSubFinish7217714,
        ["7217713"] = self.OnSubFinish7217713,
        ["7217715"] = self.OnSubFinish7217715,
        ["7217746"] = self.OnSubFinish7217746,
        ["7217716"] = self.OnSubFinish7217716,
        ["7217717"] = self.OnSubFinish7217717,
        ["7217718"] = self.OnSubFinish7217718,
        ["7217719"] = self.OnSubFinish7217719,
        ["7217728"] = self.OnSubFinish7217728,
        ["7217722"] = self.OnSubFinish7217722,
        ["7217740"] = self.OnSubFinish7217740,
        ["7217741"] = self.OnSubFinish7217741,
        ["7217747"] = self.OnSubFinish7217747,
        ["7217732"] = self.OnSubFinish7217732,
        ["7217733"] = self.OnSubFinish7217733,
        ["7217734"] = self.OnSubFinish7217734,
        ["7217748"] = self.OnSubFinish7217748,
        ["7217735"] = self.OnSubFinish7217735,
        ["7217736"] = self.OnSubFinish7217736,
        ["7217737"] = self.OnSubFinish7217737,
        ["7217744"] = self.OnSubFinish7217744,
        ["7217749"] = self.OnSubFinish7217749
    }
end

function Quest72177:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217702"] = self.OnSubFailed7217702,
        ["7217703"] = self.OnSubFailed7217703,
        ["7217710"] = self.OnSubFailed7217710,
        ["7217711"] = self.OnSubFailed7217711,
        ["7217756"] = self.OnSubFailed7217756,
        ["7217704"] = self.OnSubFailed7217704,
        ["7217743"] = self.OnSubFailed7217743,
        ["7217705"] = self.OnSubFailed7217705,
        ["7217706"] = self.OnSubFailed7217706,
        ["7217738"] = self.OnSubFailed7217738,
        ["7217739"] = self.OnSubFailed7217739,
        ["7217707"] = self.OnSubFailed7217707,
        ["7217721"] = self.OnSubFailed7217721,
        ["7217755"] = self.OnSubFailed7217755,
        ["7217751"] = self.OnSubFailed7217751,
        ["7217752"] = self.OnSubFailed7217752,
        ["7217753"] = self.OnSubFailed7217753,
        ["7217754"] = self.OnSubFailed7217754,
        ["7217709"] = self.OnSubFailed7217709,
        ["7217712"] = self.OnSubFailed7217712,
        ["7217714"] = self.OnSubFailed7217714,
        ["7217713"] = self.OnSubFailed7217713,
        ["7217715"] = self.OnSubFailed7217715,
        ["7217746"] = self.OnSubFailed7217746,
        ["7217716"] = self.OnSubFailed7217716,
        ["7217717"] = self.OnSubFailed7217717,
        ["7217718"] = self.OnSubFailed7217718,
        ["7217719"] = self.OnSubFailed7217719,
        ["7217728"] = self.OnSubFailed7217728,
        ["7217722"] = self.OnSubFailed7217722,
        ["7217740"] = self.OnSubFailed7217740,
        ["7217741"] = self.OnSubFailed7217741,
        ["7217747"] = self.OnSubFailed7217747,
        ["7217732"] = self.OnSubFailed7217732,
        ["7217733"] = self.OnSubFailed7217733,
        ["7217734"] = self.OnSubFailed7217734,
        ["7217748"] = self.OnSubFailed7217748,
        ["7217735"] = self.OnSubFailed7217735,
        ["7217736"] = self.OnSubFailed7217736,
        ["7217737"] = self.OnSubFailed7217737,
        ["7217744"] = self.OnSubFailed7217744,
        ["7217749"] = self.OnSubFailed7217749
    }
end

function Quest72177:Start()
    print("Start")
end

function Quest72177:OnDestroy()
    print("OnDestroy")
end

function Quest72177:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72177:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72177:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72177:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Message_WQ72177_01")
    elseif arg1 == 2 then
        self:FinishQuestID(false, 7217741)
    end
end

function Quest72177:SummonPaimon()
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7217708, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72177:VanishPaimon()
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 5)
end

function Quest72177:FinishQuest7217723()
    print("FinishQuest7217723")
    self:FinishQuestID(false, 7217723)
end

function Quest72177:FinishQuest7217733()
    print("FinishQuest7217733")
    self:SafeDestroyQuestNpc(npcs.NPC20340Data.alias, 5)
    self:FinishQuestID(false, 7217733)
end

function Quest72177:FinishQuest7217712()
    print("FinishQuest7217712")
    self:FinishQuestID(false, 7217712)
end

function Quest72177:FinishQuest7217735()
    print("FinishQuest7217735")
    self:FinishQuestID(false, 7217735)
end

function Quest72177:FinishQuest7217741()
    print("FinishQuest7217741")
    self:FinishQuestID(false, 7217741)
end

function Quest72177:RequestInteraction7217714()
    print("RequestInteraction7217714")
end

function Quest72177:FinishQuest7217746()
    print("FinishQuest7217746")
    self:FinishQuestID(false, 7217746)
end

function Quest72177:OnSubStart7217702(arg1)
    print("OnSubStart7217702")
    actorMgr:CreateActorWithPos(datas.Q7217702Trigger_04_.alias, datas.Q7217702Trigger_04_.script, datas.Q7217702Trigger_04_.id, 0, datas.Q7217702Trigger_04_.point.pos, datas.Q7217702Trigger_04_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217702(arg1)
    print("OnSubFinish7217702")
end

function Quest72177:OnSubFailed7217702(arg1)
    print("OnSubFailed7217702")
end

function Quest72177:OnSubStart7217703(arg1)
    print("OnSubStart7217703")
    self:CreateQuestNpc(arg1, npcs.NPC20339Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q7217703Trigger_05_.alias, datas.Q7217703Trigger_05_.script, datas.Q7217703Trigger_05_.id, 0, datas.Q7217703Trigger_05_.point.pos, datas.Q7217703Trigger_05_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217703(arg1)
    print("OnSubFinish7217703")
    self:NarratorOnlyTask(datas.NarratorTable_7217710_ActiveGurdian, nil, "")
end

function Quest72177:OnSubFailed7217703(arg1)
    print("OnSubFailed7217703")
end

function Quest72177:OnSubStart7217710(arg1)
    print("OnSubStart7217710")
end

function Quest72177:OnSubFinish7217710(arg1)
    print("OnSubFinish7217710")
end

function Quest72177:OnSubFailed7217710(arg1)
    print("OnSubFailed7217710")
end

function Quest72177:OnSubStart7217711(arg1)
    print("OnSubStart7217711")
end

function Quest72177:OnSubFinish7217711(arg1)
    print("OnSubFinish7217711")
end

function Quest72177:OnSubFailed7217711(arg1)
    print("OnSubFailed7217711")
end

function Quest72177:OnSubStart7217756(arg1)
    print("OnSubStart7217756")
    actorMgr:CreateActorWithPos(datas.Q7217756Trigger_08_.alias, datas.Q7217756Trigger_08_.script, datas.Q7217756Trigger_08_.id, 0, datas.Q7217756Trigger_08_.point.pos, datas.Q7217756Trigger_08_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217756(arg1)
    print("OnSubFinish7217756")
    self:NarratorOnlyTask(datas.NarratorTable_7217756, nil, "")
end

function Quest72177:OnSubFailed7217756(arg1)
    print("OnSubFailed7217756")
end

function Quest72177:OnSubStart7217704(arg1)
    print("OnSubStart7217704")
end

function Quest72177:OnSubFinish7217704(arg1)
    print("OnSubFinish7217704")
end

function Quest72177:OnSubFailed7217704(arg1)
    print("OnSubFailed7217704")
end

function Quest72177:OnSubStart7217743(arg1)
    print("OnSubStart7217743")
end

function Quest72177:OnSubFinish7217743(arg1)
    print("OnSubFinish7217743")
end

function Quest72177:OnSubFailed7217743(arg1)
    print("OnSubFailed7217743")
end

function Quest72177:OnSubStart7217705(arg1)
    print("OnSubStart7217705")
end

function Quest72177:OnSubFinish7217705(arg1)
    print("OnSubFinish7217705")
end

function Quest72177:OnSubFailed7217705(arg1)
    print("OnSubFailed7217705")
end

function Quest72177:OnSubStart7217706(arg1)
    print("OnSubStart7217706")
    actorMgr:CreateActorWithPos(datas.Q7217706Trigger_11_.alias, datas.Q7217706Trigger_11_.script, datas.Q7217706Trigger_11_.id, 0, datas.Q7217706Trigger_11_.point.pos, datas.Q7217706Trigger_11_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217706(arg1)
    print("OnSubFinish7217706")
    self:NarratorOnlyTask(datas.NarratorTable_7217738_PuzzleHint_01, nil, "")
end

function Quest72177:OnSubFailed7217706(arg1)
    print("OnSubFailed7217706")
end

function Quest72177:OnSubStart7217738(arg1)
    print("OnSubStart7217738")
end

function Quest72177:OnSubFinish7217738(arg1)
    print("OnSubFinish7217738")
end

function Quest72177:OnSubFailed7217738(arg1)
    print("OnSubFailed7217738")
end

function Quest72177:OnSubStart7217739(arg1)
    print("OnSubStart7217739")
end

function Quest72177:OnSubFinish7217739(arg1)
    print("OnSubFinish7217739")
    self:NarratorOnlyTask(datas.NarratorTable_7217707_GetOrb, nil, "")
end

function Quest72177:OnSubFailed7217739(arg1)
    print("OnSubFailed7217739")
end

function Quest72177:OnSubStart7217707(arg1)
    print("OnSubStart7217707")
end

function Quest72177:OnSubFinish7217707(arg1)
    print("OnSubFinish7217707")
end

function Quest72177:OnSubFailed7217707(arg1)
    print("OnSubFailed7217707")
end

function Quest72177:OnSubStart7217721(arg1)
    print("OnSubStart7217721")
end

function Quest72177:OnSubFinish7217721(arg1)
    print("OnSubFinish7217721")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable_7217707_Paimon, nil, npcs.PaimonData.alias)
    end, nil, "", false, true)
end

function Quest72177:OnSubFailed7217721(arg1)
    print("OnSubFailed7217721")
end

function Quest72177:OnSubStart7217755(arg1)
    print("OnSubStart7217755")
    self.CallDelay(self, 1, function()
        self:CreateQuestNpcById(7217755, npcs.NPC20339Data.id, 1)
    end)

    actorMgr:CreateActorWithPos(datas.Q7217755Trigger_17_.alias, datas.Q7217755Trigger_17_.script, datas.Q7217755Trigger_17_.id, 0, datas.Q7217755Trigger_17_.point.pos, datas.Q7217755Trigger_17_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217755(arg1)
    print("OnSubFinish7217755")
end

function Quest72177:OnSubFailed7217755(arg1)
    print("OnSubFailed7217755")
end

function Quest72177:OnSubStart7217751(arg1)
    print("OnSubStart7217751")
    actorMgr:CreateActorWithPos(datas.Q7217755Trigger_17_.alias, datas.Q7217755Trigger_17_.script, datas.Q7217755Trigger_17_.id, 0, datas.Q7217755Trigger_17_.point.pos, datas.Q7217755Trigger_17_.point.rot, true, false, 5)
    actorMgr:CreateActorWithPos(datas.Q7217751Trigger_18_.alias, datas.Q7217751Trigger_18_.script, datas.Q7217751Trigger_18_.id, 0, datas.Q7217751Trigger_18_.point.pos, datas.Q7217751Trigger_18_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217751(arg1)
    print("OnSubFinish7217751")
    actorMgr:DestroyEntityActor(datas.Q7217755Trigger_17_.alias, 5, false)
end

function Quest72177:OnSubFailed7217751(arg1)
    print("OnSubFailed7217751")
    actorMgr:DestroyEntityActor(datas.Q7217751Trigger_18_.alias, 5, false)
end

function Quest72177:OnSubStart7217752(arg1)
    print("OnSubStart7217752")
    actorMgr:CreateActorWithPos(datas.Q7217755Trigger_17_.alias, datas.Q7217755Trigger_17_.script, datas.Q7217755Trigger_17_.id, 0, datas.Q7217755Trigger_17_.point.pos, datas.Q7217755Trigger_17_.point.rot, true, false, 5)
    actorMgr:CreateActorWithPos(datas.Q7217752Trigger_19_.alias, datas.Q7217752Trigger_19_.script, datas.Q7217752Trigger_19_.id, 0, datas.Q7217752Trigger_19_.point.pos, datas.Q7217752Trigger_19_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217752(arg1)
    print("OnSubFinish7217752")
    actorMgr:DestroyEntityActor(datas.Q7217755Trigger_17_.alias, 5, false)
end

function Quest72177:OnSubFailed7217752(arg1)
    print("OnSubFailed7217752")
    actorMgr:DestroyEntityActor(datas.Q7217752Trigger_19_.alias, 5, false)
end

function Quest72177:OnSubStart7217753(arg1)
    print("OnSubStart7217753")
    actorMgr:CreateActorWithPos(datas.Q7217755Trigger_17_.alias, datas.Q7217755Trigger_17_.script, datas.Q7217755Trigger_17_.id, 0, datas.Q7217755Trigger_17_.point.pos, datas.Q7217755Trigger_17_.point.rot, true, false, 5)
    actorMgr:CreateActorWithPos(datas.Q7217753Trigger_20_.alias, datas.Q7217753Trigger_20_.script, datas.Q7217753Trigger_20_.id, 0, datas.Q7217753Trigger_20_.point.pos, datas.Q7217753Trigger_20_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217753(arg1)
    print("OnSubFinish7217753")
    actorMgr:DestroyEntityActor(datas.Q7217755Trigger_17_.alias, 5, false)
end

function Quest72177:OnSubFailed7217753(arg1)
    print("OnSubFailed7217753")
    actorMgr:DestroyEntityActor(datas.Q7217753Trigger_20_.alias, 5, false)
end

function Quest72177:OnSubStart7217754(arg1)
    print("OnSubStart7217754")
    actorMgr:CreateActorWithPos(datas.Q7217754Trigger_21_.alias, datas.Q7217754Trigger_21_.script, datas.Q7217754Trigger_21_.id, 0, datas.Q7217754Trigger_21_.point.pos, datas.Q7217754Trigger_21_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217754(arg1)
    print("OnSubFinish7217754")
end

function Quest72177:OnSubFailed7217754(arg1)
    print("OnSubFailed7217754")
end

function Quest72177:OnSubStart7217709(arg1)
    print("OnSubStart7217709")
end

function Quest72177:OnSubFinish7217709(arg1)
    print("OnSubFinish7217709")
end

function Quest72177:OnSubFailed7217709(arg1)
    print("OnSubFailed7217709")
end

function Quest72177:OnSubStart7217712(arg1)
    print("OnSubStart7217712")
end

function Quest72177:OnSubFinish7217712(arg1)
    print("OnSubFinish7217712")
end

function Quest72177:OnSubFailed7217712(arg1)
    print("OnSubFailed7217712")
end

function Quest72177:OnSubStart7217714(arg1)
    print("OnSubStart7217714")
    self:GetQuestNpcActor(npcs.NPC20339Data.alias):TurnToAvatar()
    actorMgr:CreateActorWithPos(datas.Q7217714Trigger_17_.alias, datas.Q7217714Trigger_17_.script, datas.Q7217714Trigger_17_.id, 0, datas.Q7217714Trigger_17_.point.pos, datas.Q7217714Trigger_17_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217714(arg1)
    print("OnSubFinish7217714")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72177:OnSubFailed7217714(arg1)
    print("OnSubFailed7217714")
end

function Quest72177:OnSubStart7217713(arg1)
    print("OnSubStart7217713")
    self.CallDelay(self, 1, function()
        self:CreateQuestNpcById(7217713, npcs.NPC20339Data.id, 1)
    end)

    actorMgr:CreateActorWithPos(datas.Q7217713Trigger_19_.alias, datas.Q7217713Trigger_19_.script, datas.Q7217713Trigger_19_.id, 0, datas.Q7217713Trigger_19_.point.pos, datas.Q7217713Trigger_19_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217713(arg1)
    print("OnSubFinish7217713")
    self:NarratorOnlyTask(datas.NarratorTable_7217713_ReachTowerCenter, nil, "")
end

function Quest72177:OnSubFailed7217713(arg1)
    print("OnSubFailed7217713")
end

function Quest72177:OnSubStart7217715(arg1)
    print("OnSubStart7217715")
end

function Quest72177:OnSubFinish7217715(arg1)
    print("OnSubFinish7217715")
end

function Quest72177:OnSubFailed7217715(arg1)
    print("OnSubFailed7217715")
end

function Quest72177:OnSubStart7217746(arg1)
    print("OnSubStart7217746")
    self:CallDelay(12, self.FinishQuest7217746)
    self:PlayCutsceneIndex("7217702", nil, nil, nil, false)
end

function Quest72177:OnSubFinish7217746(arg1)
    print("OnSubFinish7217746")
end

function Quest72177:OnSubFailed7217746(arg1)
    print("OnSubFailed7217746")
end

function Quest72177:OnSubStart7217716(arg1)
    self.CallDelay(self, 0, function()
        self:CreateQuestNpcById(7217716, npcs.NPC20340Data.id, 1)
        actorMgr:CreateActorWithPos(datas.Q7217716Trigger_20_.alias, datas.Q7217716Trigger_20_.script, datas.Q7217716Trigger_20_.id, 0, datas.Q7217716Trigger_20_.point.pos, datas.Q7217716Trigger_20_.point.rot, true, false, 5)
    end)
end

function Quest72177:OnSubFinish7217716(arg1)
    print("OnSubFinish7217716")
end

function Quest72177:OnSubFailed7217716(arg1)
    print("OnSubFailed7217716")
end

function Quest72177:OnSubStart7217717(arg1)
    print("OnSubStart7217717")
end

function Quest72177:OnSubFinish7217717(arg1)
    print("OnSubFinish7217717")
end

function Quest72177:OnSubFailed7217717(arg1)
    print("OnSubFailed7217717")
end

function Quest72177:OnSubStart7217718(arg1)
    print("OnSubStart7217718")
end

function Quest72177:OnSubFinish7217718(arg1)
    print("OnSubFinish7217718")
end

function Quest72177:OnSubFailed7217718(arg1)
    print("OnSubFailed7217718")
end

function Quest72177:OnSubStart7217719(arg1)
    print("OnSubStart7217719")
end

function Quest72177:OnSubFinish7217719(arg1)
    print("OnSubFinish7217719")
end

function Quest72177:OnSubFailed7217719(arg1)
    print("OnSubFailed7217719")
end

function Quest72177:OnSubStart7217728(arg1)
    print("OnSubStart7217728")
end

function Quest72177:OnSubFinish7217728(arg1)
    print("OnSubFinish7217728")
    self:SafeDestroyQuestNpc(npcs.NPC20339Data.alias, 5)
end

function Quest72177:OnSubFailed7217728(arg1)
    print("OnSubFailed7217728")
end

function Quest72177:OnSubStart7217722(arg1)
    print("OnSubStart7217722")
    self:CreateQuestNpc(arg1, npcs.NPC20340Data.id, 1)
end

function Quest72177:OnSubFinish7217722(arg1)
    print("OnSubFinish7217722")
end

function Quest72177:OnSubFailed7217722(arg1)
    print("OnSubFailed7217722")
end

function Quest72177:OnSubStart7217740(arg1)
    print("OnSubStart7217740")
    actorMgr:CreateActorWithPos(datas.Q7217740Trigger_43_.alias, datas.Q7217740Trigger_43_.script, datas.Q7217740Trigger_43_.id, 0, datas.Q7217740Trigger_43_.point.pos, datas.Q7217740Trigger_43_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217740(arg1)
    print("OnSubFinish7217740")
    self:GetQuestNpcActor(npcs.NPC20340Data.alias):DestroyWithDither(false, 1)
end

function Quest72177:OnSubFailed7217740(arg1)
    print("OnSubFailed7217740")
end

function Quest72177:OnSubStart7217741(arg1)
    print("OnSubStart7217741")
end

function Quest72177:OnSubFinish7217741(arg1)
    print("OnSubFinish7217741")
end

function Quest72177:OnSubFailed7217741(arg1)
    print("OnSubFailed7217741")
end

function Quest72177:OnSubStart7217747(arg1)
    print("OnSubStart7217747")
    actorMgr:CreateActorWithPos(datas.Q7217747Trigger_40_.alias, datas.Q7217747Trigger_40_.script, datas.Q7217747Trigger_40_.id, 0, datas.Q7217747Trigger_40_.point.pos, datas.Q7217747Trigger_40_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217747(arg1)
    print("OnSubFinish7217747")
end

function Quest72177:OnSubFailed7217747(arg1)
    print("OnSubFailed7217747")
end

function Quest72177:OnSubStart7217732(arg1)
    print("OnSubStart7217732")
end

function Quest72177:OnSubFinish7217732(arg1)
    print("OnSubFinish7217732")
end

function Quest72177:OnSubFailed7217732(arg1)
    print("OnSubFailed7217732")
end

function Quest72177:OnSubStart7217733(arg1)
    print("OnSubStart7217733")
    self:PlayCutsceneIndex("7217708", self.FinishQuest7217733, nil, nil, false)
end

function Quest72177:OnSubFinish7217733(arg1)
    print("OnSubFinish7217733")
end

function Quest72177:OnSubFailed7217733(arg1)
    print("OnSubFailed7217733")
end

function Quest72177:OnSubStart7217734(arg1)
    print("OnSubStart7217734")
end

function Quest72177:OnSubFinish7217734(arg1)
    print("OnSubFinish7217734")
end

function Quest72177:OnSubFailed7217734(arg1)
    print("OnSubFailed7217734")
end

function Quest72177:OnSubStart7217748(arg1)
    print("OnSubStart7217748")
    actorMgr:CreateActorWithPos(datas.Q7217748Trigger_44_.alias, datas.Q7217748Trigger_44_.script, datas.Q7217748Trigger_44_.id, 0, datas.Q7217748Trigger_44_.point.pos, datas.Q7217748Trigger_44_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217748(arg1)
    print("OnSubFinish7217748")
end

function Quest72177:OnSubFailed7217748(arg1)
    print("OnSubFailed7217748")
end

function Quest72177:OnSubStart7217735(arg1)
    print("OnSubStart7217735")
    self:CreateQuestNpc(arg1, npcs.NPC20339Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q7217735Trigger_46_.alias, datas.Q7217735Trigger_46_.script, datas.Q7217735Trigger_46_.id, 0, datas.Q7217735Trigger_46_.point.pos, datas.Q7217735Trigger_46_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217735(arg1)
    print("OnSubFinish7217735")
    self:SafeDestroyQuestNpc(npcs.NPC20339Data.alias, 5)
end

function Quest72177:OnSubFailed7217735(arg1)
    print("OnSubFailed7217735")
end

function Quest72177:OnSubStart7217736(arg1)
    print("OnSubStart7217736")
end

function Quest72177:OnSubFinish7217736(arg1)
    print("OnSubFinish7217736")
end

function Quest72177:OnSubFailed7217736(arg1)
    print("OnSubFailed7217736")
end

function Quest72177:OnSubStart7217737(arg1)
    print("OnSubStart7217737")
    self:CreateQuestNpc(arg1, npcs.NPC20518Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q7217737Trigger_49_.alias, datas.Q7217737Trigger_49_.script, datas.Q7217737Trigger_49_.id, 0, datas.Q7217737Trigger_49_.point.pos, datas.Q7217737Trigger_49_.point.rot, true, false, 5)
end

function Quest72177:OnSubFinish7217737(arg1)
    print("OnSubFinish7217737")
    self:SafeDestroyQuestNpc(npcs.NPC20518Data.alias, 5)
    self:NarratorOnlyTask(datas.NarratorTable_7217744_GetCoral, nil, "")
end

function Quest72177:OnSubFailed7217737(arg1)
    print("OnSubFailed7217737")
end

function Quest72177:OnSubStart7217744(arg1)
    print("OnSubStart7217744")
end

function Quest72177:OnSubFinish7217744(arg1)
    print("OnSubFinish7217744")
    self:NarratorOnlyTask(datas.NarratorTable_7217749_Return, nil, "")
end

function Quest72177:OnSubFailed7217744(arg1)
    print("OnSubFailed7217744")
end

function Quest72177:OnSubStart7217749(arg1)
    print("OnSubStart7217749")
    self:CreateQuestNpc(arg1, npcs.Npc3193Data.id, 2)
end

function Quest72177:OnSubFinish7217749(arg1)
    print("OnSubFinish7217749")
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
end

function Quest72177:OnSubFailed7217749(arg1)
    print("OnSubFailed7217749")
end

return Quest72177
