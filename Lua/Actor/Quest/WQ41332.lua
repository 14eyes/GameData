require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41332 = class("Quest41332", QuestActorProxy)
Quest41332.defaultAlias = "Quest41332"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41332:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41332:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133217"] = self.OnSubStart4133217,
        ["4133201"] = self.OnSubStart4133201,
        ["4133202"] = self.OnSubStart4133202,
        ["4133203"] = self.OnSubStart4133203,
        ["4133204"] = self.OnSubStart4133204,
        ["4133208"] = self.OnSubStart4133208,
        ["4133209"] = self.OnSubStart4133209,
        ["4133210"] = self.OnSubStart4133210,
        ["4133211"] = self.OnSubStart4133211,
        ["4133212"] = self.OnSubStart4133212,
        ["4133213"] = self.OnSubStart4133213,
        ["4133205"] = self.OnSubStart4133205,
        ["4133206"] = self.OnSubStart4133206,
        ["4133207"] = self.OnSubStart4133207,
        ["4133214"] = self.OnSubStart4133214,
        ["4133215"] = self.OnSubStart4133215,
        ["4133216"] = self.OnSubStart4133216
    }
end

function Quest41332:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133217"] = self.OnSubFinish4133217,
        ["4133201"] = self.OnSubFinish4133201,
        ["4133202"] = self.OnSubFinish4133202,
        ["4133203"] = self.OnSubFinish4133203,
        ["4133204"] = self.OnSubFinish4133204,
        ["4133208"] = self.OnSubFinish4133208,
        ["4133209"] = self.OnSubFinish4133209,
        ["4133210"] = self.OnSubFinish4133210,
        ["4133211"] = self.OnSubFinish4133211,
        ["4133212"] = self.OnSubFinish4133212,
        ["4133213"] = self.OnSubFinish4133213,
        ["4133205"] = self.OnSubFinish4133205,
        ["4133206"] = self.OnSubFinish4133206,
        ["4133207"] = self.OnSubFinish4133207,
        ["4133214"] = self.OnSubFinish4133214,
        ["4133215"] = self.OnSubFinish4133215,
        ["4133216"] = self.OnSubFinish4133216
    }
end

function Quest41332:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133217"] = self.OnSubFailed4133217,
        ["4133201"] = self.OnSubFailed4133201,
        ["4133202"] = self.OnSubFailed4133202,
        ["4133203"] = self.OnSubFailed4133203,
        ["4133204"] = self.OnSubFailed4133204,
        ["4133208"] = self.OnSubFailed4133208,
        ["4133209"] = self.OnSubFailed4133209,
        ["4133210"] = self.OnSubFailed4133210,
        ["4133211"] = self.OnSubFailed4133211,
        ["4133212"] = self.OnSubFailed4133212,
        ["4133213"] = self.OnSubFailed4133213,
        ["4133205"] = self.OnSubFailed4133205,
        ["4133206"] = self.OnSubFailed4133206,
        ["4133207"] = self.OnSubFailed4133207,
        ["4133214"] = self.OnSubFailed4133214,
        ["4133215"] = self.OnSubFailed4133215,
        ["4133216"] = self.OnSubFailed4133216
    }
end

function Quest41332:Start()
    print("Start")
end

function Quest41332:OnDestroy()
    print("OnDestroy")
end

function Quest41332:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41332:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41332:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc204501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc207701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200501Data.alias, 3)
    self:NotifyTo("Npc2045", 0, true)
    self:NotifyTo("Npc2077", 0, true)
    self:NotifyTo("Npc2036", 0, true)
    self:NotifyTo("Npc2001", 0, true)
    self:NotifyTo("Npc2038", 0, true)
    self:NotifyTo("Npc2005", 0, true)
    self:NotifyTo("Npc2015", 0, true)
    local actor = actorMgr:GetActor(datas.Q41332Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest41332:HideNPC()
    print("HideNPC")
    self:NotifyTo("Npc2077", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2001", 1, true)
    self:NotifyTo("Npc2005", 1, true)
    self:NotifyTo("Npc2038", 1, true)
    self:NotifyTo("Npc2015", 1, true)
end

function Quest41332:ShowNPC()
    print("ShowNPC")
    self:NotifyTo("Npc2077", 0, true)
    self:NotifyTo("Npc2038", 0, true)
    self:NotifyTo("Npc2036", 0, true)
    self:NotifyTo("Npc2001", 0, true)
    self:NotifyTo("Npc2005", 0, true)
    self:NotifyTo("Npc2015", 0, true)
end

function Quest41332:StartCount()
    local n = 40
    self:CountDownUIStart(n, 10, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest41332:CountDown()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("FlyingTest fail")
        actor:FinishQuestID(false, 4133204)
    end

    if self:GetSubQuestState(4133203) == 2 then
        self:Narrator02()
    end
end

function Quest41332:Narrator01()
    print("Narrator01")
    self:NarratorOnlyTask(datas.NarratorNearCooled, nil, "Story")
end

function Quest41332:Narrator02()
    print("Narrator02")
    self:NarratorOnlyTask(datas.NarratorCooled, nil, "Story")
end

function Quest41332:Narrator03()
    print("Narrator03")
    self:NarratorOnlyTask(datas.NarratorAfterZhuzi, nil, "Story")
end

function Quest41332:Narrator04()
    print("Narrator04")
    self:NarratorOnlyTask(datas.NarratorAfterDiancai, nil, "Story")
end

function Quest41332:StopLocalNarrator()
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest41332:SafeNarrator03()
    print("SafeNarrator03")
    self:ActionSafeCall(self.Narrator03)
end

function Quest41332:UncallCountDown()
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
end

function Quest41332:ShowMao()
    print("ShowMao")
    self:NotifyTo("Npc2045", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc204501Data.alias, 3)
end

function Quest41332:OnSubStart4133217(arg1)
    print("OnSubStart4133217")
end

function Quest41332:OnSubFinish4133217(arg1)
    print("OnSubFinish4133217")
end

function Quest41332:OnSubFailed4133217(arg1)
    print("OnSubFailed4133217")
end

function Quest41332:OnSubStart4133201(arg1)
    print("OnSubStart4133201")
    self:NotifyTo("Npc2045", 1, true)
    actorMgr:CreateActorWithPos(datas.Q41332Trigger_.alias, datas.Q41332Trigger_.script, datas.Q41332Trigger_.id, 0, datas.Q41332Trigger_.point.pos, datas.Q41332Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc204501Data.id, 1)
end

function Quest41332:OnSubFinish4133201(arg1)
    print("OnSubFinish4133201")
end

function Quest41332:OnSubFailed4133201(arg1)
    print("OnSubFailed4133201")
end

function Quest41332:OnSubStart4133202(arg1)
    print("OnSubStart4133202")
    self:NotifyTo("Npc2045", 1, true)
end

function Quest41332:OnSubFinish4133202(arg1)
    print("OnSubFinish4133202")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowMao, nil, nil, "")
end

function Quest41332:OnSubFailed4133202(arg1)
    print("OnSubFailed4133202")
end

function Quest41332:OnSubStart4133203(arg1)
    print("OnSubStart4133203")
    self:HideNPC()
    self:CreateQuestNpc(arg1, npcs.Npc207701Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc203601Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:CreateQuestNpc(arg1, npcs.Npc200101Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:CreateQuestNpc(arg1, npcs.Npc203801Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:CreateQuestNpc(arg1, npcs.Npc200501Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133203(arg1)
    print("OnSubFinish4133203")
    self:ActionSafeCall(self.StopLocalNarrator)
    self:CallDelay(2, self.SafeNarrator03)
    self:UncallCountDown()
end

function Quest41332:OnSubFailed4133203(arg1)
    print("OnSubFailed4133203")
end

function Quest41332:OnSubStart4133204(arg1)
    print("OnSubStart4133204")
    self:StartCount()
    self:CallDelay(15, self.Narrator01)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133204(arg1)
    print("OnSubFinish4133204")
end

function Quest41332:OnSubFailed4133204(arg1)
    print("OnSubFailed4133204")
end

function Quest41332:OnSubStart4133208(arg1)
    print("OnSubStart4133208")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133208(arg1)
    print("OnSubFinish4133208")
end

function Quest41332:OnSubFailed4133208(arg1)
    print("OnSubFailed4133208")
end

function Quest41332:OnSubStart4133209(arg1)
    print("OnSubStart4133209")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133209(arg1)
    print("OnSubFinish4133209")
end

function Quest41332:OnSubFailed4133209(arg1)
    print("OnSubFailed4133209")
end

function Quest41332:OnSubStart4133210(arg1)
    print("OnSubStart4133210")
    self:HideNPC()
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133210(arg1)
    print("OnSubFinish4133210")
end

function Quest41332:OnSubFailed4133210(arg1)
    print("OnSubFailed4133210")
end

function Quest41332:OnSubStart4133211(arg1)
    print("OnSubStart4133211")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133211(arg1)
    print("OnSubFinish4133211")
end

function Quest41332:OnSubFailed4133211(arg1)
    print("OnSubFailed4133211")
end

function Quest41332:OnSubStart4133212(arg1)
    print("OnSubStart4133212")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133212(arg1)
    print("OnSubFinish4133212")
end

function Quest41332:OnSubFailed4133212(arg1)
    print("OnSubFailed4133212")
end

function Quest41332:OnSubStart4133213(arg1)
    print("OnSubStart4133213")
    self:HideNPC()
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133213(arg1)
    print("OnSubFinish4133213")
end

function Quest41332:OnSubFailed4133213(arg1)
    print("OnSubFailed4133213")
end

function Quest41332:OnSubStart4133205(arg1)
    print("OnSubStart4133205")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133205(arg1)
    print("OnSubFinish4133205")
end

function Quest41332:OnSubFailed4133205(arg1)
    print("OnSubFailed4133205")
end

function Quest41332:OnSubStart4133206(arg1)
    print("OnSubStart4133206")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133206(arg1)
    print("OnSubFinish4133206")
end

function Quest41332:OnSubFailed4133206(arg1)
    print("OnSubFailed4133206")
end

function Quest41332:OnSubStart4133207(arg1)
    print("OnSubStart4133207")
    self:HideNPC()
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133207(arg1)
    print("OnSubFinish4133207")
    self:ActionSafeCall(self.Narrator04)
end

function Quest41332:OnSubFailed4133207(arg1)
    print("OnSubFailed4133207")
end

function Quest41332:OnSubStart4133214(arg1)
    print("OnSubStart4133214")
    self:HideNPC()
    self:NotifyTo("Npc2045", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc204501Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1120)
    self:GetQuestNpcActor(npcs.Npc200101Data.alias):DoFreeStyle(1280)
    self:GetQuestNpcActor(npcs.Npc203801Data.alias):DoFreeStyle(1170)
    self:GetQuestNpcActor(npcs.Npc200501Data.alias):DoFreeStyle(1180)
end

function Quest41332:OnSubFinish4133214(arg1)
    print("OnSubFinish4133214")
    self:SafeDestroyQuestNpc(npcs.Npc207701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200501Data.alias, 3)
    self:ShowNPC()
end

function Quest41332:OnSubFailed4133214(arg1)
    print("OnSubFailed4133214")
end

function Quest41332:OnSubStart4133215(arg1)
    print("OnSubStart4133215")
    self:NotifyTo("Npc2045", 1, true)
end

function Quest41332:OnSubFinish4133215(arg1)
    print("OnSubFinish4133215")
end

function Quest41332:OnSubFailed4133215(arg1)
    print("OnSubFailed4133215")
end

function Quest41332:OnSubStart4133216(arg1)
    print("OnSubStart4133216")
    self:NotifyTo("Npc2045", 1, true)
end

function Quest41332:OnSubFinish4133216(arg1)
    print("OnSubFinish4133216")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowMao, nil, nil, "")
end

function Quest41332:OnSubFailed4133216(arg1)
    print("OnSubFailed4133216")
end

return Quest41332
