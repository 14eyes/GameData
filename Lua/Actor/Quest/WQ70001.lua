require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70001 = class("Quest70001", QuestActorProxy)
Quest70001.defaultAlias = "Quest70001"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000110"] = self.OnSubStart7000110,
        ["7000101"] = self.OnSubStart7000101,
        ["7000102"] = self.OnSubStart7000102,
        ["7000103"] = self.OnSubStart7000103,
        ["7000106"] = self.OnSubStart7000106,
        ["7000107"] = self.OnSubStart7000107,
        ["7000104"] = self.OnSubStart7000104,
        ["7000105"] = self.OnSubStart7000105,
        ["7000111"] = self.OnSubStart7000111
    }
end

function Quest70001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000110"] = self.OnSubFinish7000110,
        ["7000101"] = self.OnSubFinish7000101,
        ["7000102"] = self.OnSubFinish7000102,
        ["7000103"] = self.OnSubFinish7000103,
        ["7000106"] = self.OnSubFinish7000106,
        ["7000107"] = self.OnSubFinish7000107,
        ["7000104"] = self.OnSubFinish7000104,
        ["7000105"] = self.OnSubFinish7000105,
        ["7000111"] = self.OnSubFinish7000111
    }
end

function Quest70001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000110"] = self.OnSubFailed7000110,
        ["7000101"] = self.OnSubFailed7000101,
        ["7000102"] = self.OnSubFailed7000102,
        ["7000103"] = self.OnSubFailed7000103,
        ["7000106"] = self.OnSubFailed7000106,
        ["7000107"] = self.OnSubFailed7000107,
        ["7000104"] = self.OnSubFailed7000104,
        ["7000105"] = self.OnSubFailed7000105,
        ["7000111"] = self.OnSubFailed7000111
    }
end

function Quest70001:Start()
    print("Start")
end

function Quest70001:OnDestroy()
    print("OnDestroy")
end

function Quest70001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70001:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10396Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10397Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10398Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152501Data.alias, 3)
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest70001:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70001:OnSubStart7000110(arg1)
    print("OnSubStart7000110")
end

function Quest70001:OnSubFinish7000110(arg1)
    print("OnSubFinish7000110")
end

function Quest70001:OnSubFailed7000110(arg1)
    print("OnSubFailed7000110")
end

function Quest70001:OnSubStart7000101(arg1)
    print("OnSubStart7000101")
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcs.Npc152501Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q70001Trigger_.alias, datas.Q70001Trigger_.script, datas.Q70001Trigger_.id, 0, datas.Q70001Trigger_.point.pos, datas.Q70001Trigger_.point.rot, true, false, 3)
end

function Quest70001:OnSubFinish7000101(arg1)
    print("OnSubFinish7000101")
end

function Quest70001:OnSubFailed7000101(arg1)
    print("OnSubFailed7000101")
end

function Quest70001:OnSubStart7000102(arg1)
    print("OnSubStart7000102")
    self:CreateQuestNpc(arg1, npcs.Npc152501Data.id, 1)
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70001:OnSubFinish7000102(arg1)
    print("OnSubFinish7000102")
end

function Quest70001:OnSubFailed7000102(arg1)
    print("OnSubFailed7000102")
end

function Quest70001:OnSubStart7000103(arg1)
    print("OnSubStart7000103")
    self:CreateQuestNpc(arg1, npcs.Npc10396Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10397Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10398Data.id, 3)
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70001:OnSubFinish7000103(arg1)
    print("OnSubFinish7000103")
    self:ActionSafeCall(self.PaimonVanish)
    self:SafeDestroyQuestNpc(npcs.Npc10396Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152501Data.alias, 3)
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest70001:OnSubFailed7000103(arg1)
    print("OnSubFailed7000103")
end

function Quest70001:OnSubStart7000106(arg1)
    print("OnSubStart7000106")
end

function Quest70001:OnSubFinish7000106(arg1)
    print("OnSubFinish7000106")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest70001:OnSubFailed7000106(arg1)
    print("OnSubFailed7000106")
end

function Quest70001:OnSubStart7000107(arg1)
    print("OnSubStart7000107")
end

function Quest70001:OnSubFinish7000107(arg1)
    print("OnSubFinish7000107")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest70001:OnSubFailed7000107(arg1)
    print("OnSubFailed7000107")
end

function Quest70001:OnSubStart7000104(arg1)
    print("OnSubStart7000104")
    actorMgr:CreateActorWithPos(datas.Q7000104Trigger_.alias, datas.Q7000104Trigger_.script, datas.Q7000104Trigger_.id, 0, datas.Q7000104Trigger_.point.pos, datas.Q7000104Trigger_.point.rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true)
    end)
end

function Quest70001:OnSubFinish7000104(arg1)
    print("OnSubFinish7000104")
end

function Quest70001:OnSubFailed7000104(arg1)
    print("OnSubFailed7000104")
end

function Quest70001:OnSubStart7000105(arg1)
    print("OnSubStart7000105")
end

function Quest70001:OnSubFinish7000105(arg1)
    print("OnSubFinish7000105")
    self:NarratorOnlyTaskByData(datas.NarratorTable2, nil, "StoryCut")
    self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest70001:OnSubFailed7000105(arg1)
    print("OnSubFailed7000105")
end

function Quest70001:OnSubStart7000111(arg1)
    print("OnSubStart7000111")
    self:CreateQuestNpc(arg1, npcs.Npc152501Data.id, 1)
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest70001:OnSubFinish7000111(arg1)
    print("OnSubFinish7000111")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc152501Data.alias, 3)
        arg1:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.STARTDAILY, true)
    end)
end

function Quest70001:OnSubFailed7000111(arg1)
    print("OnSubFailed7000111")
end

return Quest70001
