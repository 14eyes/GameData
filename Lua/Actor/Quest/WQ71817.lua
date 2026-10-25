require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71817 = class("Quest71817", QuestActorProxy)
Quest71817.defaultAlias = "Quest71817"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71817:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71817:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181720"] = self.OnSubStart7181720,
        ["7181701"] = self.OnSubStart7181701,
        ["7181702"] = self.OnSubStart7181702,
        ["7181703"] = self.OnSubStart7181703,
        ["7181709"] = self.OnSubStart7181709,
        ["7181710"] = self.OnSubStart7181710,
        ["7181704"] = self.OnSubStart7181704,
        ["7181705"] = self.OnSubStart7181705,
        ["7181706"] = self.OnSubStart7181706,
        ["7181707"] = self.OnSubStart7181707,
        ["7181708"] = self.OnSubStart7181708,
        ["7181711"] = self.OnSubStart7181711,
        ["7181712"] = self.OnSubStart7181712,
        ["7181713"] = self.OnSubStart7181713,
        ["7181714"] = self.OnSubStart7181714,
        ["7181715"] = self.OnSubStart7181715,
        ["7181716"] = self.OnSubStart7181716,
        ["7181717"] = self.OnSubStart7181717,
        ["7181718"] = self.OnSubStart7181718,
        ["7181719"] = self.OnSubStart7181719,
        ["7181721"] = self.OnSubStart7181721,
        ["7181722"] = self.OnSubStart7181722
    }
end

function Quest71817:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181720"] = self.OnSubFinish7181720,
        ["7181701"] = self.OnSubFinish7181701,
        ["7181702"] = self.OnSubFinish7181702,
        ["7181703"] = self.OnSubFinish7181703,
        ["7181709"] = self.OnSubFinish7181709,
        ["7181710"] = self.OnSubFinish7181710,
        ["7181704"] = self.OnSubFinish7181704,
        ["7181705"] = self.OnSubFinish7181705,
        ["7181706"] = self.OnSubFinish7181706,
        ["7181707"] = self.OnSubFinish7181707,
        ["7181708"] = self.OnSubFinish7181708,
        ["7181711"] = self.OnSubFinish7181711,
        ["7181712"] = self.OnSubFinish7181712,
        ["7181713"] = self.OnSubFinish7181713,
        ["7181714"] = self.OnSubFinish7181714,
        ["7181715"] = self.OnSubFinish7181715,
        ["7181716"] = self.OnSubFinish7181716,
        ["7181717"] = self.OnSubFinish7181717,
        ["7181718"] = self.OnSubFinish7181718,
        ["7181719"] = self.OnSubFinish7181719,
        ["7181721"] = self.OnSubFinish7181721,
        ["7181722"] = self.OnSubFinish7181722
    }
end

function Quest71817:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181720"] = self.OnSubFailed7181720,
        ["7181701"] = self.OnSubFailed7181701,
        ["7181702"] = self.OnSubFailed7181702,
        ["7181703"] = self.OnSubFailed7181703,
        ["7181709"] = self.OnSubFailed7181709,
        ["7181710"] = self.OnSubFailed7181710,
        ["7181704"] = self.OnSubFailed7181704,
        ["7181705"] = self.OnSubFailed7181705,
        ["7181706"] = self.OnSubFailed7181706,
        ["7181707"] = self.OnSubFailed7181707,
        ["7181708"] = self.OnSubFailed7181708,
        ["7181711"] = self.OnSubFailed7181711,
        ["7181712"] = self.OnSubFailed7181712,
        ["7181713"] = self.OnSubFailed7181713,
        ["7181714"] = self.OnSubFailed7181714,
        ["7181715"] = self.OnSubFailed7181715,
        ["7181716"] = self.OnSubFailed7181716,
        ["7181717"] = self.OnSubFailed7181717,
        ["7181718"] = self.OnSubFailed7181718,
        ["7181719"] = self.OnSubFailed7181719,
        ["7181721"] = self.OnSubFailed7181721,
        ["7181722"] = self.OnSubFailed7181722
    }
end

function Quest71817:Start()
    print("Start")
end

function Quest71817:OnDestroy()
    print("OnDestroy")
end

function Quest71817:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71817:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71817:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc220401Data1.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc212901Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc213301Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc211101Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc211501Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc211401Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc220101Data.alias, 3)
    self:NotifyTo("Npc2204", 0, true)
    self:NotifyTo("Npc2129", 0, true)
    self:NotifyTo("Npc2133", 0, true)
    self:NotifyTo("Npc2111", 0, true)
    self:NotifyTo("Npc2115", 0, true)
    self:NotifyTo("Npc2114", 0, true)
    self:NotifyTo("Npc2201", 0, true)
end

function Quest71817:FailChallenge()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 7181703)
    end
end

function Quest71817:ClearTakeAway()
    print("ClearTakeAway")
    self:DestroyQuestNpcActor(npcs.Npc211101Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc211501Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc211401Data.alias, 3)
end

function Quest71817:BlackClearTakeAway()
    print("BlackClearTakeAway")
    self:ShowBlackScreen(0.2, 1.2, 0.5, self.ClearTakeAway, nil, nil, "")
end

function Quest71817:ClearYanxiao()
    print("ClearYanxiao")
    self:DestroyQuestNpcActor(npcs.Npc220401Data2.alias, 3)
end

function Quest71817:BlackClearYanxiao()
    print("BlackClearYanxiao")
    self:ShowBlackScreen(0.2, 1.2, 0.5, self.ClearYanxiao, nil, nil, "")
end

function Quest71817:ClearJiangxue()
    print("ClearJiangxue")
    self:DestroyQuestNpcActor(npcs.Npc220101Data.alias, 3)
end

function Quest71817:BlackClearJiangxue()
    print("BlackClearJiangxue")
    self:ShowBlackScreen(0.2, 1.2, 0.5, self.ClearJiangxue, nil, nil, "")
end

function Quest71817:OnSubStart7181720(arg1)
    print("OnSubStart7181720")
end

function Quest71817:OnSubFinish7181720(arg1)
    print("OnSubFinish7181720")
end

function Quest71817:OnSubFailed7181720(arg1)
    print("OnSubFailed7181720")
end

function Quest71817:OnSubStart7181701(arg1)
    print("OnSubStart7181701")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc220401Data1.id, 1)
    end)
end

function Quest71817:OnSubFinish7181701(arg1)
    print("OnSubFinish7181701")
end

function Quest71817:OnSubFailed7181701(arg1)
    print("OnSubFailed7181701")
end

function Quest71817:OnSubStart7181702(arg1)
    print("OnSubStart7181702")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:NotifyTo("Npc2129", 1, true)
        self:NotifyTo("Npc2133", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc212901Data.id, 2)
        self:CreateQuestNpc(arg1, npcs.Npc213301Data.id, 3)
        self:GetQuestNpcActor(npcs.Npc212901Data.alias):SitOnChair(8010)
        self:GetQuestNpcActor(npcs.Npc213301Data.alias):SitOnChair(8010)
    end)
end

function Quest71817:OnSubFinish7181702(arg1)
    print("OnSubFinish7181702")
end

function Quest71817:OnSubFailed7181702(arg1)
    print("OnSubFailed7181702")
end

function Quest71817:OnSubStart7181703(arg1)
    print("OnSubStart7181703")
    self:CountDownUIStart(300, 60, 3)
    self:CallDelay(303, self.FailChallenge)
end

function Quest71817:OnSubFinish7181703(arg1)
    print("OnSubFinish7181703")
    self:CountDownUITerminate()
end

function Quest71817:OnSubFailed7181703(arg1)
    print("OnSubFailed7181703")
    self:CountDownUITerminate()
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest71817:OnSubStart7181709(arg1)
    print("OnSubStart7181709")
end

function Quest71817:OnSubFinish7181709(arg1)
    print("OnSubFinish7181709")
end

function Quest71817:OnSubFailed7181709(arg1)
    print("OnSubFailed7181709")
end

function Quest71817:OnSubStart7181710(arg1)
    print("OnSubStart7181710")
end

function Quest71817:OnSubFinish7181710(arg1)
    print("OnSubFinish7181710")
end

function Quest71817:OnSubFailed7181710(arg1)
    print("OnSubFailed7181710")
end

function Quest71817:OnSubStart7181704(arg1)
    print("OnSubStart7181704")
end

function Quest71817:OnSubFinish7181704(arg1)
    print("OnSubFinish7181704")
end

function Quest71817:OnSubFailed7181704(arg1)
    print("OnSubFailed7181704")
end

function Quest71817:OnSubStart7181705(arg1)
    print("OnSubStart7181705")
end

function Quest71817:OnSubFinish7181705(arg1)
    print("OnSubFinish7181705")
end

function Quest71817:OnSubFailed7181705(arg1)
    print("OnSubFailed7181705")
end

function Quest71817:OnSubStart7181706(arg1)
    print("OnSubStart7181706")
end

function Quest71817:OnSubFinish7181706(arg1)
    print("OnSubFinish7181706")
end

function Quest71817:OnSubFailed7181706(arg1)
    print("OnSubFailed7181706")
end

function Quest71817:OnSubStart7181707(arg1)
    print("OnSubStart7181707")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2111", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc211101Data.id, 4)
    end)
end

function Quest71817:OnSubFinish7181707(arg1)
    print("OnSubFinish7181707")
end

function Quest71817:OnSubFailed7181707(arg1)
    print("OnSubFailed7181707")
end

function Quest71817:OnSubStart7181708(arg1)
    print("OnSubStart7181708")
end

function Quest71817:OnSubFinish7181708(arg1)
    print("OnSubFinish7181708")
end

function Quest71817:OnSubFailed7181708(arg1)
    print("OnSubFailed7181708")
end

function Quest71817:OnSubStart7181711(arg1)
    print("OnSubStart7181711")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2115", 1, true)
        self:NotifyTo("Npc2114", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc211501Data.id, 5)
        self:CreateQuestNpc(arg1, npcs.Npc211401Data.id, 6)
        self:GetQuestNpcActor(npcs.Npc211501Data.alias):SitOnChair(8010)
    end)
end

function Quest71817:OnSubFinish7181711(arg1)
    print("OnSubFinish7181711")
end

function Quest71817:OnSubFailed7181711(arg1)
    print("OnSubFailed7181711")
end

function Quest71817:OnSubStart7181712(arg1)
    print("OnSubStart7181712")
end

function Quest71817:OnSubFinish7181712(arg1)
    print("OnSubFinish7181712")
    self:DestroyQuestNpcActor(npcs.Npc212901Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc213301Data.alias, 3)
    self:NotifyTo("Npc2129", 0, true)
    self:NotifyTo("Npc2133", 0, true)
end

function Quest71817:OnSubFailed7181712(arg1)
    print("OnSubFailed7181712")
end

function Quest71817:OnSubStart7181713(arg1)
    print("OnSubStart7181713")
end

function Quest71817:OnSubFinish7181713(arg1)
    print("OnSubFinish7181713")
end

function Quest71817:OnSubFailed7181713(arg1)
    print("OnSubFailed7181713")
end

function Quest71817:OnSubStart7181714(arg1)
    print("OnSubStart7181714")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc220401Data2.id, 7)
        self:NotifyTo("Npc2111", 1, true)
        self:NotifyTo("Npc2115", 1, true)
        self:NotifyTo("Npc2114", 1, true)
        self:GetQuestNpcActor(npcs.Npc211501Data.alias):SitOnChair(8010)
    end)
end

function Quest71817:OnSubFinish7181714(arg1)
    print("OnSubFinish7181714")
    self:NotifyTo("Npc2111", 0, true)
    self:NotifyTo("Npc2115", 0, true)
    self:NotifyTo("Npc2114", 0, true)
    self:ActionSafeCall(self.ClearTakeAway)
end

function Quest71817:OnSubFailed7181714(arg1)
    print("OnSubFailed7181714")
end

function Quest71817:OnSubStart7181715(arg1)
    print("OnSubStart7181715")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
    end)
end

function Quest71817:OnSubFinish7181715(arg1)
    print("OnSubFinish7181715")
end

function Quest71817:OnSubFailed7181715(arg1)
    print("OnSubFailed7181715")
end

function Quest71817:OnSubStart7181716(arg1)
    print("OnSubStart7181716")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
    end)
end

function Quest71817:OnSubFinish7181716(arg1)
    print("OnSubFinish7181716")
end

function Quest71817:OnSubFailed7181716(arg1)
    print("OnSubFailed7181716")
end

function Quest71817:OnSubStart7181717(arg1)
    print("OnSubStart7181717")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
    end)
end

function Quest71817:OnSubFinish7181717(arg1)
    print("OnSubFinish7181717")
    self:NotifyTo("Npc2204", 0, true)
    self:ActionSafeCall(self.BlackClearYanxiao)
end

function Quest71817:OnSubFailed7181717(arg1)
    print("OnSubFailed7181717")
end

function Quest71817:OnSubStart7181718(arg1)
    print("OnSubStart7181718")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2201", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc220101Data.id, 8)
    end)
end

function Quest71817:OnSubFinish7181718(arg1)
    print("OnSubFinish7181718")
end

function Quest71817:OnSubFailed7181718(arg1)
    print("OnSubFailed7181718")
end

function Quest71817:OnSubStart7181719(arg1)
    print("OnSubStart7181719")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2201", 1, true)
    end)
end

function Quest71817:OnSubFinish7181719(arg1)
    print("OnSubFinish7181719")
    self:NotifyTo("Npc2201", 0, true)
    self:ActionSafeCall(self.BlackClearJiangxue)
end

function Quest71817:OnSubFailed7181719(arg1)
    print("OnSubFailed7181719")
end

function Quest71817:OnSubStart7181721(arg1)
    print("OnSubStart7181721")
end

function Quest71817:OnSubFinish7181721(arg1)
    print("OnSubFinish7181721")
end

function Quest71817:OnSubFailed7181721(arg1)
    print("OnSubFailed7181721")
end

function Quest71817:OnSubStart7181722(arg1)
    print("OnSubStart7181722")
end

function Quest71817:OnSubFinish7181722(arg1)
    print("OnSubFinish7181722")
end

function Quest71817:OnSubFailed7181722(arg1)
    print("OnSubFailed7181722")
end

return Quest71817
