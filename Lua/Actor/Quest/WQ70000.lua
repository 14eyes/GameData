require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70000 = class("Quest70000", QuestActorProxy)
Quest70000.defaultAlias = "Quest70000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000010"] = self.OnSubStart7000010,
        ["7000001"] = self.OnSubStart7000001,
        ["7000002"] = self.OnSubStart7000002,
        ["7000004"] = self.OnSubStart7000004,
        ["7000005"] = self.OnSubStart7000005,
        ["7000003"] = self.OnSubStart7000003,
        ["7000006"] = self.OnSubStart7000006
    }
end

function Quest70000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000010"] = self.OnSubFinish7000010,
        ["7000001"] = self.OnSubFinish7000001,
        ["7000002"] = self.OnSubFinish7000002,
        ["7000004"] = self.OnSubFinish7000004,
        ["7000005"] = self.OnSubFinish7000005,
        ["7000003"] = self.OnSubFinish7000003,
        ["7000006"] = self.OnSubFinish7000006
    }
end

function Quest70000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000010"] = self.OnSubFailed7000010,
        ["7000001"] = self.OnSubFailed7000001,
        ["7000002"] = self.OnSubFailed7000002,
        ["7000004"] = self.OnSubFailed7000004,
        ["7000005"] = self.OnSubFailed7000005,
        ["7000003"] = self.OnSubFailed7000003,
        ["7000006"] = self.OnSubFailed7000006
    }
end

function Quest70000:Start()
    print("Start")
end

function Quest70000:OnDestroy()
    print("OnDestroy")
end

function Quest70000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc164201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc142501Data.alias, 3)
    self:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1425", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest70000:OnSubStart7000010(arg1)
    print("OnSubStart7000010")
end

function Quest70000:OnSubFinish7000010(arg1)
    print("OnSubFinish7000010")
end

function Quest70000:OnSubFailed7000010(arg1)
    print("OnSubFailed7000010")
end

function Quest70000:OnSubStart7000001(arg1)
    print("OnSubStart7000001")
    self:CreateQuestNpc(arg1, npcs.Npc164201Data.id, 1)
    self:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70000:OnSubFinish7000001(arg1)
    print("OnSubFinish7000001")
end

function Quest70000:OnSubFailed7000001(arg1)
    print("OnSubFailed7000001")
end

function Quest70000:OnSubStart7000002(arg1)
    print("OnSubStart7000002")
    self:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70000:OnSubFinish7000002(arg1)
    print("OnSubFinish7000002")
    self:SafeDestroyQuestNpc(npcs.Npc164201Data.alias, 3)
    self:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorTable1, nil, "StoryCut")
    end)
end

function Quest70000:OnSubFailed7000002(arg1)
    print("OnSubFailed7000002")
end

function Quest70000:OnSubStart7000003(arg1)
    print("OnSubStart7000003")
    self:NotifyTo("Npc1425", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70000:OnSubFinish7000003(arg1)
    print("OnSubFinish7000003")
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorTable4, nil, "StoryCut")
    end)
end

function Quest70000:OnSubFailed7000003(arg1)
    print("OnSubFailed7000003")
end

function Quest70000:OnSubStart7000004(arg1)
    print("OnSubStart7000004")
    actorMgr:CreateActorWithPos(datas.Q700002Trigger_.alias, datas.Q700002Trigger_.script, datas.Q700002Trigger_.id, 0, sceneData:GetDummyPoint(3, "Q1011002Flora").pos, sceneData:GetDummyPoint(3, "Q1011002Flora").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc142501Data.id, 1)
    self:NotifyTo("Npc1425", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70000:OnSubFinish7000004(arg1)
    print("OnSubFinish7000004")
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorTable3, nil, "StoryCut")
    end)
end

function Quest70000:OnSubFailed7000004(arg1)
    print("OnSubFailed7000004")
end

function Quest70000:OnSubStart7000005(arg1)
    print("OnSubStart7000005")
    self:NotifyTo("Npc1425", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70000:OnSubFinish7000005(arg1)
    print("OnSubFinish7000005")
end

function Quest70000:OnSubFailed7000005(arg1)
    print("OnSubFailed7000005")
end

function Quest70000:OnSubStart7000006(arg1)
    print("OnSubStart7000006")
    self:CreateQuestNpc(arg1, npcs.Npc164201Data.id, 1)
    self:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70000:OnSubFinish7000006(arg1)
    print("OnSubFinish7000006")
    self:NotifyTo("Npc1425", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:SafeDestroyQuestNpc(npcs.Npc142501Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc164201Data.alias, 3)
        arg1:NotifyTo("Npc1642", DailyNpcManager.NpcEventType.STARTDAILY, true)
    end)
end

function Quest70000:OnSubFailed7000006(arg1)
    print("OnSubFailed7000006")
end

return Quest70000
