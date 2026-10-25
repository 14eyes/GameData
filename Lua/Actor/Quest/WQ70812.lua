require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70812 = class("Quest70812", QuestActorProxy)
Quest70812.defaultAlias = "Quest70812"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70812:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70812:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7081201"] = self.OnSubStart7081201,
        ["7081202"] = self.OnSubStart7081202,
        ["7081203"] = self.OnSubStart7081203,
        ["7081204"] = self.OnSubStart7081204,
        ["7081205"] = self.OnSubStart7081205,
        ["7081206"] = self.OnSubStart7081206,
        ["7081207"] = self.OnSubStart7081207,
        ["7081208"] = self.OnSubStart7081208
    }
end

function Quest70812:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7081201"] = self.OnSubFinish7081201,
        ["7081202"] = self.OnSubFinish7081202,
        ["7081203"] = self.OnSubFinish7081203,
        ["7081204"] = self.OnSubFinish7081204,
        ["7081205"] = self.OnSubFinish7081205,
        ["7081206"] = self.OnSubFinish7081206,
        ["7081207"] = self.OnSubFinish7081207,
        ["7081208"] = self.OnSubFinish7081208
    }
end

function Quest70812:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7081201"] = self.OnSubFailed7081201,
        ["7081202"] = self.OnSubFailed7081202,
        ["7081203"] = self.OnSubFailed7081203,
        ["7081204"] = self.OnSubFailed7081204,
        ["7081205"] = self.OnSubFailed7081205,
        ["7081206"] = self.OnSubFailed7081206,
        ["7081207"] = self.OnSubFailed7081207,
        ["7081208"] = self.OnSubFailed7081208
    }
end

function Quest70812:Start()
    print("Start")
end

function Quest70812:OnDestroy()
    print("OnDestroy")
end

function Quest70812:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 2, 0.5, self.ClearAll, nil, nil, "")
end

function Quest70812:OnMainFailed(arg1)
    print("OnMainFailed")
    self:DestroyQuestNpcActor(npcs.Npc1445Data.alias, 3)
end

function Quest70812:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1445Data.alias, 3)
end

function Quest70812:ReminderBoard()
    print("ReminderBoard")
    self:NarratorOnlyTaskLegacy(datas.BoradReminder, nil, "")
end

function Quest70812:ReminderPoster1()
    print("ReminderPoster1")
    self:NarratorOnlyTaskLegacy(datas.PosterReminder1, nil, "")
end

function Quest70812:TransmitBoard()
    self:TransmitPlayerByQuestId(7081205, 1, self.DelayReminderBoard)
end

function Quest70812:DelayReminderBoard()
    print("DelayReminderBoard")
    self:CallDelay(1, self.ReminderBoard)
end

function Quest70812:BlackReminderPoster1()
    print("BlackReminderPoster1")
    self:ShowBlackScreen(0.2, 1, 0.5, nil, self.ReminderPoster1)
end

function Quest70812:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1445Data.alias, 3)
end

function Quest70812:ReminderPoster2()
    print("ReminderPoster2")
    self:NarratorOnlyTaskLegacy(datas.PosterReminder2, nil, "")
end

function Quest70812:ReminderPoster3()
    print("ReminderPoster3")
    self:NarratorOnlyTaskLegacy(datas.PosterReminder3, nil, "")
end

function Quest70812:BlackReminderPoster2()
    print("BlackReminderPoster2")
    self:ShowBlackScreen(0.2, 1, 0.5, nil, self.ReminderPoster2)
end

function Quest70812:BlackReminderPoster3()
    print("BlackReminderPoster3")
    self:ShowBlackScreen(0.2, 1, 0.5, nil, self.ReminderPoster3)
end

function Quest70812:BlackClearAll()
    print("BlackClearAll")
    self:ShowBlackScreen(0.3, 1.5, 0.5, self.ClearAll, nil, nil, "")
end

function Quest70812:OnSubStart7081201(arg1)
    print("OnSubStart7081201")
end

function Quest70812:OnSubFinish7081201(arg1)
    print("OnSubFinish7081201")
end

function Quest70812:OnSubFailed7081201(arg1)
    print("OnSubFailed7081201")
end

function Quest70812:OnSubStart7081202(arg1)
    print("OnSubStart7081202")
end

function Quest70812:OnSubFinish7081202(arg1)
    print("OnSubFinish7081202")
    self:BlackReminderPoster1()
end

function Quest70812:OnSubFailed7081202(arg1)
    print("OnSubFailed7081202")
end

function Quest70812:OnSubStart7081203(arg1)
    print("OnSubStart7081203")
end

function Quest70812:OnSubFinish7081203(arg1)
    print("OnSubFinish7081203")
    self:BlackReminderPoster2()
end

function Quest70812:OnSubFailed7081203(arg1)
    print("OnSubFailed7081203")
end

function Quest70812:OnSubStart7081204(arg1)
    print("OnSubStart7081204")
end

function Quest70812:OnSubFinish7081204(arg1)
    print("OnSubFinish7081204")
    self:BlackReminderPoster3()
end

function Quest70812:OnSubFailed7081204(arg1)
    print("OnSubFailed7081204")
end

function Quest70812:OnSubStart7081205(arg1)
    print("OnSubStart7081205")
end

function Quest70812:OnSubFinish7081205(arg1)
    print("OnSubFinish7081205")
    self:TransmitBoard()
end

function Quest70812:OnSubFailed7081205(arg1)
    print("OnSubFailed7081205")
end

function Quest70812:OnSubStart7081206(arg1)
    print("OnSubStart7081206")
end

function Quest70812:OnSubFinish7081206(arg1)
    print("OnSubFinish7081206")
end

function Quest70812:OnSubFailed7081206(arg1)
    print("OnSubFailed7081206")
end

function Quest70812:OnSubStart7081207(arg1)
    print("OnSubStart7081207")
end

function Quest70812:OnSubFinish7081207(arg1)
    print("OnSubFinish7081207")
end

function Quest70812:OnSubFailed7081207(arg1)
    print("OnSubFailed7081207")
end

function Quest70812:OnSubStart7081208(arg1)
    print("OnSubStart7081208")
    self:CreateQuestNpc(arg1, npcs.Npc1445Data.id, 1)
end

function Quest70812:OnSubFinish7081208(arg1)
    print("OnSubFinish7081208")
    self:ActionSafeCall(self.BlackClearAll)
end

function Quest70812:OnSubFailed7081208(arg1)
    print("OnSubFailed7081208")
end

return Quest70812
