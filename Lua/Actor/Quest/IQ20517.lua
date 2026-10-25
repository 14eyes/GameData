require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20517 = class("Quest20517", QuestActorProxy)
Quest20517.defaultAlias = "Quest20517"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas
local npc160001Data
local npc160001_1Data
local paimonData

function Quest20517:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
    npc160001Data = clientData.Npcs.Npc160001Data
    npc160001_1Data = clientData.Npcs.Npc160001_1Data
    paimonData = clientData.Npcs.PaimonData
end

function Quest20517:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051701"] = self.OnSubStart2051701,
        ["2051702"] = self.OnSubStart2051702,
        ["2051703"] = self.OnSubStart2051703,
        ["2051704"] = self.OnSubStart2051704,
        ["2051705"] = self.OnSubStart2051705,
        ["2051706"] = self.OnSubStart2051706,
        ["2051707"] = self.OnSubStart2051707,
        ["2051708"] = self.OnSubStart2051708,
        ["2051709"] = self.OnSubStart2051709,
        ["2051710"] = self.OnSubStart2051710,
        ["2051711"] = self.OnSubStart2051711,
        ["2051712"] = self.OnSubStart2051712,
        ["2051739"] = self.OnSubStart2051739,
        ["2051713"] = self.OnSubStart2051713,
        ["2051714"] = self.OnSubStart2051714,
        ["2051715"] = self.OnSubStart2051715,
        ["2051716"] = self.OnSubStart2051716,
        ["2051717"] = self.OnSubStart2051717,
        ["2051718"] = self.OnSubStart2051718,
        ["2051719"] = self.OnSubStart2051719,
        ["2051720"] = self.OnSubStart2051720,
        ["2051721"] = self.OnSubStart2051721,
        ["2051722"] = self.OnSubStart2051722,
        ["2051723"] = self.OnSubStart2051723,
        ["2051730"] = self.OnSubStart2051730,
        ["2051731"] = self.OnSubStart2051731,
        ["2051732"] = self.OnSubStart2051732,
        ["2051740"] = self.OnSubStart2051740,
        ["2051733"] = self.OnSubStart2051733,
        ["2051741"] = self.OnSubStart2051741,
        ["2051734"] = self.OnSubStart2051734,
        ["2051735"] = self.OnSubStart2051735,
        ["2051736"] = self.OnSubStart2051736,
        ["2051737"] = self.OnSubStart2051737,
        ["2051742"] = self.OnSubStart2051742,
        ["2051738"] = self.OnSubStart2051738,
        ["2051743"] = self.OnSubStart2051743
    }
end

function Quest20517:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051701"] = self.OnSubFinish2051701,
        ["2051702"] = self.OnSubFinish2051702,
        ["2051703"] = self.OnSubFinish2051703,
        ["2051704"] = self.OnSubFinish2051704,
        ["2051705"] = self.OnSubFinish2051705,
        ["2051706"] = self.OnSubFinish2051706,
        ["2051707"] = self.OnSubFinish2051707,
        ["2051708"] = self.OnSubFinish2051708,
        ["2051709"] = self.OnSubFinish2051709,
        ["2051710"] = self.OnSubFinish2051710,
        ["2051711"] = self.OnSubFinish2051711,
        ["2051712"] = self.OnSubFinish2051712,
        ["2051739"] = self.OnSubFinish2051739,
        ["2051713"] = self.OnSubFinish2051713,
        ["2051714"] = self.OnSubFinish2051714,
        ["2051715"] = self.OnSubFinish2051715,
        ["2051716"] = self.OnSubFinish2051716,
        ["2051717"] = self.OnSubFinish2051717,
        ["2051718"] = self.OnSubFinish2051718,
        ["2051719"] = self.OnSubFinish2051719,
        ["2051720"] = self.OnSubFinish2051720,
        ["2051721"] = self.OnSubFinish2051721,
        ["2051722"] = self.OnSubFinish2051722,
        ["2051723"] = self.OnSubFinish2051723,
        ["2051730"] = self.OnSubFinish2051730,
        ["2051731"] = self.OnSubFinish2051731,
        ["2051732"] = self.OnSubFinish2051732,
        ["2051740"] = self.OnSubFinish2051740,
        ["2051733"] = self.OnSubFinish2051733,
        ["2051741"] = self.OnSubFinish2051741,
        ["2051734"] = self.OnSubFinish2051734,
        ["2051735"] = self.OnSubFinish2051735,
        ["2051736"] = self.OnSubFinish2051736,
        ["2051737"] = self.OnSubFinish2051737,
        ["2051742"] = self.OnSubFinish2051742,
        ["2051738"] = self.OnSubFinish2051738,
        ["2051743"] = self.OnSubFinish2051743
    }
end

function Quest20517:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051701"] = self.OnSubFailed2051701,
        ["2051702"] = self.OnSubFailed2051702,
        ["2051703"] = self.OnSubFailed2051703,
        ["2051704"] = self.OnSubFailed2051704,
        ["2051705"] = self.OnSubFailed2051705,
        ["2051706"] = self.OnSubFailed2051706,
        ["2051707"] = self.OnSubFailed2051707,
        ["2051708"] = self.OnSubFailed2051708,
        ["2051709"] = self.OnSubFailed2051709,
        ["2051710"] = self.OnSubFailed2051710,
        ["2051711"] = self.OnSubFailed2051711,
        ["2051712"] = self.OnSubFailed2051712,
        ["2051739"] = self.OnSubFailed2051739,
        ["2051713"] = self.OnSubFailed2051713,
        ["2051714"] = self.OnSubFailed2051714,
        ["2051715"] = self.OnSubFailed2051715,
        ["2051716"] = self.OnSubFailed2051716,
        ["2051717"] = self.OnSubFailed2051717,
        ["2051718"] = self.OnSubFailed2051718,
        ["2051719"] = self.OnSubFailed2051719,
        ["2051720"] = self.OnSubFailed2051720,
        ["2051721"] = self.OnSubFailed2051721,
        ["2051722"] = self.OnSubFailed2051722,
        ["2051723"] = self.OnSubFailed2051723,
        ["2051730"] = self.OnSubFailed2051730,
        ["2051731"] = self.OnSubFailed2051731,
        ["2051732"] = self.OnSubFailed2051732,
        ["2051740"] = self.OnSubFailed2051740,
        ["2051733"] = self.OnSubFailed2051733,
        ["2051741"] = self.OnSubFailed2051741,
        ["2051734"] = self.OnSubFailed2051734,
        ["2051735"] = self.OnSubFailed2051735,
        ["2051736"] = self.OnSubFailed2051736,
        ["2051737"] = self.OnSubFailed2051737,
        ["2051742"] = self.OnSubFailed2051742,
        ["2051738"] = self.OnSubFailed2051738,
        ["2051743"] = self.OnSubFailed2051743
    }
end

function Quest20517:Start()
    print("Start")
end

function Quest20517:OnDestroy()
    print("OnDestroy")
end

function Quest20517:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.2, self.BlackScreen_Over)
    self:CallDelay(0.2, self.CountDownClear)
end

function Quest20517:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
    self:NotifyTo(npcs.Npc1599Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 0, true)
    self:CallDelay(0, self.CountDownClear)
end

function Quest20517:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
    self:NotifyTo(npcs.Npc1599Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 0, true)
    self:CallDelay(0, self.CountDownClear)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest20517:CountDown()
    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("deliver fail")
        actor:FinishQuestID(true, 2051712)
    end
end

function Quest20517:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:CountDownUITerminate()
        self:CountNumUITerminate()
        self:UnCallFunc(self.CountDown)
    end
end

function Quest20517:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.2, 0.4, 0.4, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20517:BlackScreen_UnClear()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.2, 0.4, 0.4)
    globalActor:EnablePlayerInput(true)
end

function Quest20517:BlackScreen_Over()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.2, 1.2, 0.4, function(arg1)
        arg1:ClearData()
        arg1:NotifyTo(npcs.Npc1599Data.alias, 0, true)
        arg1:NotifyTo(npcs.Npc1600Data.alias, 0, true)
    end)

    globalActor:EnablePlayerInput(true)
end

function Quest20517:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc160001Data.alias, 1008)
    self:DestroyQuestNpcActor(npcs.Npc1455Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1403Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1473Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1525Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20141Data.alias, 3)
    local actor = actorMgr:GetActor("Q2051735Trigger")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest20517:CountDownClear()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20517:HideNPC_Ludaofu(arg1)
    print("HideNPC_Ludaofu")
    self:ShowBlackScreen(0.2, 0.4, 0.4)
    self:CallDelay(0.2, self.HideSelf_Ludaofu)
    self:CallDelay(0.2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 9)
        arg1_2:CallDelay(2.2, function(arg1)
            globalActor:EnablePlayerInput(true)
        end)
    end)
end

function Quest20517:HideSelf_Ludaofu()
    print("HideSelf_Ludaofu")
    self:GetQuestNpcActor(npcs.Npc160001Data.alias):HideSelf()
    self:GetQuestNpcActor(npcs.Npc1473Data.alias):HideSelf()
end

function Quest20517:HideNPC_20141()
    print("HideNPC_20141")
    self:CallDelay(0.2, self.DestroyuestNpc_20141)
    self:BlackScreen_UnClear()
end

function Quest20517:DestroyuestNpc_20141()
    print("DestroyuestNpc_20141")
    self:DestroyQuestNpcActor(npcs.Npc20141Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1473_1Data.alias, 3)
end

function Quest20517:Hint(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q20517_Jiliana3_InitPos").pos
    local dist = M.Dist(pos, avatarPos)
    print("currLen01:  ", dist)
    if 50 < dist then
        if self:GetQuestNpcActor(npcs.Npc1473_2Data.alias) ~= nil then
            self:DestroyQuestNpcActor(npcs.Npc1473_2Data.alias, 3)
            self:SetQuestVar(subIDs.q2051742, 4, 1)
        end
    else
        self:CallDelay(0.5, function(arg1_2)
            arg1_2:Hint(arg1)
        end)

        self:SetQuestVar(subIDs.q2051742, 4, 0)
    end
end

function Quest20517:OnSubStart2051701(arg1)
    print("OnSubStart2051701")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc160001Data.id, 1)
end

function Quest20517:OnSubFinish2051701(arg1)
    print("OnSubFinish2051701")
end

function Quest20517:OnSubFailed2051701(arg1)
    print("OnSubFailed2051701")
end

function Quest20517:OnSubStart2051702(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051702")
end

function Quest20517:OnSubFinish2051702(arg1)
    print("OnSubFinish2051702")
end

function Quest20517:OnSubFailed2051702(arg1)
    print("OnSubFailed2051702")
end

function Quest20517:OnSubStart2051703(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051703")
end

function Quest20517:OnSubFinish2051703(arg1)
    print("OnSubFinish2051703")
end

function Quest20517:OnSubFailed2051703(arg1)
    print("OnSubFailed2051703")
end

function Quest20517:OnSubStart2051704(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051704")
end

function Quest20517:OnSubFinish2051704(arg1)
    print("OnSubFinish2051704")
end

function Quest20517:OnSubFailed2051704(arg1)
    print("OnSubFailed2051704")
end

function Quest20517:OnSubStart2051705(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051705")
end

function Quest20517:OnSubFinish2051705(arg1)
    print("OnSubFinish2051705")
end

function Quest20517:OnSubFailed2051705(arg1)
    print("OnSubFailed2051705")
end

function Quest20517:OnSubStart2051706(arg1)
    print("OnSubStart2051706")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051706(arg1)
    print("OnSubFinish2051706")
end

function Quest20517:OnSubFailed2051706(arg1)
    print("OnSubFailed2051706")
end

function Quest20517:OnSubStart2051743(arg1)
    print("OnSubStart2051743")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:RequestInteractionForceAlias("Npc1435")
end

function Quest20517:OnSubFinish2051743(arg1)
    print("OnSubFinish2051743")
end

function Quest20517:OnSubFailed2051743(arg1)
    print("OnSubFailed2051743")
end

function Quest20517:OnSubStart2051707(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051707")
end

function Quest20517:OnSubFinish2051707(arg1)
    print("OnSubFinish2051707")
end

function Quest20517:OnSubFailed2051707(arg1)
    print("OnSubFailed2051707")
end

function Quest20517:OnSubStart2051708(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051708")
end

function Quest20517:OnSubFinish2051708(arg1)
    print("OnSubFinish2051708")
end

function Quest20517:OnSubFailed2051708(arg1)
    print("OnSubFailed2051708")
end

function Quest20517:OnSubStart2051709(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051709")
end

function Quest20517:OnSubFinish2051709(arg1)
    print("OnSubFinish2051709")
end

function Quest20517:OnSubFailed2051709(arg1)
    print("OnSubFailed2051709")
end

function Quest20517:OnSubStart2051710(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051710")
end

function Quest20517:OnSubFinish2051710(arg1)
    print("OnSubFinish2051710")
end

function Quest20517:OnSubFailed2051710(arg1)
    print("OnSubFailed2051710")
end

function Quest20517:OnSubStart2051711(arg1)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    print("OnSubStart2051711")
end

function Quest20517:OnSubFinish2051711(arg1)
    print("OnSubFinish2051711")
end

function Quest20517:OnSubFailed2051711(arg1)
    print("OnSubFailed2051711")
end

function Quest20517:OnSubStart2051712(arg1)
    print("OnSubStart2051712")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1455Data.id, 2)
    globalActor:CountDownUIStart(50, 5, 3)
    self:CallDelay(54, self.CountDown)
end

function Quest20517:OnSubFinish2051712(arg1)
    print("OnSubFinish2051712")
end

function Quest20517:OnSubFailed2051712(arg1)
    print("OnSubFailed2051712")
    self:NarratorOnlyTask(datas.NarratorTable_1)
end

function Quest20517:OnSubStart2051739(arg1)
    print("OnSubStart2051739")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051739(arg1)
    print("OnSubFinish2051739")
end

function Quest20517:OnSubFailed2051739(arg1)
    print("OnSubFailed2051739")
end

function Quest20517:OnSubStart2051713(arg1)
    print("OnSubStart2051713")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051713(arg1)
    print("OnSubFinish2051713")
end

function Quest20517:OnSubFailed2051713(arg1)
    print("OnSubFailed2051713")
end

function Quest20517:OnSubStart2051714(arg1)
    print("OnSubStart2051714")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051714(arg1)
    print("OnSubFinish2051714")
end

function Quest20517:OnSubFailed2051714(arg1)
    print("OnSubFailed2051714")
end

function Quest20517:OnSubStart2051715(arg1)
    print("OnSubStart2051715")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1403Data.id, 3)
end

function Quest20517:OnSubFinish2051715(arg1)
    print("OnSubFinish2051715")
end

function Quest20517:OnSubFailed2051715(arg1)
    print("OnSubFailed2051715")
end

function Quest20517:OnSubStart2051716(arg1)
    print("OnSubStart2051716")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051716(arg1)
    print("OnSubFinish2051716")
end

function Quest20517:OnSubFailed2051716(arg1)
    print("OnSubFailed2051716")
end

function Quest20517:OnSubStart2051717(arg1)
    print("OnSubStart2051717")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051717(arg1)
    print("OnSubFinish2051717")
end

function Quest20517:OnSubFailed2051717(arg1)
    print("OnSubFailed2051717")
end

function Quest20517:OnSubStart2051718(arg1)
    print("OnSubStart2051718")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:NarratorOnlyTask(datas.NarratorTable)
end

function Quest20517:OnSubFinish2051718(arg1)
    print("OnSubFinish2051718")
end

function Quest20517:OnSubFailed2051718(arg1)
    print("OnSubFailed2051718")
end

function Quest20517:OnSubStart2051719(arg1)
    print("OnSubStart2051719")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051719(arg1)
    print("OnSubFinish2051719")
end

function Quest20517:OnSubFailed2051719(arg1)
    print("OnSubFailed2051719")
end

function Quest20517:OnSubStart2051720(arg1)
    print("OnSubStart2051720")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051720(arg1)
    print("OnSubFinish2051720")
end

function Quest20517:OnSubFailed2051720(arg1)
    print("OnSubFailed2051720")
end

function Quest20517:OnSubStart2051721(arg1)
    print("OnSubStart2051721")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051721(arg1)
    print("OnSubFinish2051721")
end

function Quest20517:OnSubFailed2051721(arg1)
    print("OnSubFailed2051721")
end

function Quest20517:OnSubStart2051722(arg1)
    print("OnSubStart2051722")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051722(arg1)
    print("OnSubFinish2051722")
end

function Quest20517:OnSubFailed2051722(arg1)
    print("OnSubFailed2051722")
end

function Quest20517:OnSubStart2051723(arg1)
    print("OnSubStart2051723")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051723(arg1)
    print("OnSubFinish2051723")
end

function Quest20517:OnSubFailed2051723(arg1)
    print("OnSubFailed2051723")
end

function Quest20517:OnSubStart2051730(arg1)
    print("OnSubStart2051730")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051730(arg1)
    print("OnSubFinish2051730")
end

function Quest20517:OnSubFailed2051730(arg1)
    print("OnSubFailed2051730")
end

function Quest20517:OnSubStart2051731(arg1)
    print("OnSubStart2051731")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc160001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1473Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc1525Data.id, 5)
end

function Quest20517:OnSubFinish2051731(arg1)
    print("OnSubFinish2051731")
end

function Quest20517:OnSubFailed2051731(arg1)
    print("OnSubFailed2051731")
end

function Quest20517:OnSubStart2051732(arg1)
    print("OnSubStart2051732")
    self:CreateQuestNpc(arg1, npcs.Npc160001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1473Data.id, 4)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051732(arg1)
    print("OnSubFinish2051732")
    globalActor:EnablePlayerInput(false)
end

function Quest20517:OnSubFailed2051732(arg1)
    print("OnSubFailed2051732")
end

function Quest20517:OnSubStart2051740(arg1)
    print("OnSubStart2051740")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:HideNPC_Ludaofu(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc1473Data.id, 4)
end

function Quest20517:OnSubFinish2051740(arg1)
    print("OnSubFinish2051740")
    self:GetQuestNpcActor(paimonData.alias):DestroyWithDisappear()
end

function Quest20517:OnSubFailed2051740(arg1)
    print("OnSubFailed2051740")
end

function Quest20517:OnSubStart2051733(arg1)
    print("OnSubStart2051733")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc160001_1Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc1473_1Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc1473_1Data.alias):HideSelf()
end

function Quest20517:OnSubFinish2051733(arg1)
    print("OnSubFinish2051733")
    self:GetQuestNpcActor(paimonData.alias):DestroyWithDisappear()
end

function Quest20517:OnSubFailed2051733(arg1)
    print("OnSubFailed2051733")
end

function Quest20517:OnSubStart2051741(arg1)
    print("OnSubStart2051741")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1473_1Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc1473_1Data.alias):HideSelf()
end

function Quest20517:OnSubFinish2051741(arg1)
    print("OnSubFinish2051741")
end

function Quest20517:OnSubFailed2051741(arg1)
    print("OnSubFailed2051741")
end

function Quest20517:OnSubStart2051734(arg1)
    print("OnSubStart2051734")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1473_1Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc1473_1Data.alias):HideSelf()
end

function Quest20517:OnSubFinish2051734(arg1)
    print("OnSubFinish2051734")
end

function Quest20517:OnSubFailed2051734(arg1)
    print("OnSubFailed2051734")
end

function Quest20517:OnSubStart2051735(arg1)
    actorMgr:CreateActorWithPos("Q2051735Trigger", "Actor/Gadget/Q2051735Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q20517_Jiliana2_InitPos").pos, sceneData:GetDummyPoint(3, "Q20517_Jiliana2_InitPos").rot, true, false, 3)
    print("OnSubStart2051735")
    self:CreateQuestNpc(arg1, npcs.Npc1473_1Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20141Data.id, 8)
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051735(arg1)
    print("OnSubFinish2051735")
end

function Quest20517:OnSubFailed2051735(arg1)
    print("OnSubFailed2051735")
end

function Quest20517:OnSubStart2051736(arg1)
    print("OnSubStart2051736")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2)
    self:HideNPC_20141()
    self:GetQuestNpcActor(paimonData.alias):DestroyWithDisappear()
end

function Quest20517:OnSubFinish2051736(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc1473_2Data.id, 10)
    print("OnSubFinish2051736")
end

function Quest20517:OnSubFailed2051736(arg1)
    print("OnSubFailed2051736")
end

function Quest20517:OnSubStart2051737(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc1473_2Data.id, 10)
    self:DestroyQuestNpcActor(npcs.Npc20141Data.alias, 3)
    print("OnSubStart2051737")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051737(arg1)
    print("OnSubFinish2051737")
    self:DestroyQuestNpcActor(npcs.Npc160001_1Data.alias, 3)
end

function Quest20517:OnSubFailed2051737(arg1)
    print("OnSubFailed2051737")
end

function Quest20517:OnSubStart2051742(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc160001Data.id, 1)
    print("OnSubStart2051742")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
    self:Hint(arg1)
end

function Quest20517:OnSubFinish2051742(arg1)
    print("OnSubFinish2051742")
end

function Quest20517:OnSubFailed2051742(arg1)
    print("OnSubFailed2051742")
end

function Quest20517:OnSubStart2051738(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc160001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1473Data.id, 4)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 4)
    print("q2051742:----------------------", questVar)
    print("OnSubStart2051738")
    self:NotifyTo(npcs.Npc1599Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1600Data.alias, 1, true)
end

function Quest20517:OnSubFinish2051738(arg1)
    print("OnSubFinish2051738")
end

function Quest20517:OnSubFailed2051738(arg1)
    print("OnSubFailed2051738")
end

return Quest20517
