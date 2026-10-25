require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41111 = class("Quest41111", QuestActorProxy)
Quest41111.defaultAlias = "Quest41111"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points
local datas

function Quest41111:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
    datas = clientData.Datas
end

function Quest41111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4111101"] = self.OnSubStart4111101,
        ["4111104"] = self.OnSubStart4111104,
        ["4111105"] = self.OnSubStart4111105,
        ["4111106"] = self.OnSubStart4111106,
        ["4111115"] = self.OnSubStart4111115,
        ["4111116"] = self.OnSubStart4111116,
        ["4111107"] = self.OnSubStart4111107,
        ["4111102"] = self.OnSubStart4111102,
        ["4111117"] = self.OnSubStart4111117,
        ["4111109"] = self.OnSubStart4111109,
        ["4111110"] = self.OnSubStart4111110,
        ["4111118"] = self.OnSubStart4111118,
        ["4111114"] = self.OnSubStart4111114,
        ["4111112"] = self.OnSubStart4111112,
        ["4111113"] = self.OnSubStart4111113,
        ["4111103"] = self.OnSubStart4111103,
        ["4111108"] = self.OnSubStart4111108,
        ["4111111"] = self.OnSubStart4111111
    }
end

function Quest41111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4111101"] = self.OnSubFinish4111101,
        ["4111104"] = self.OnSubFinish4111104,
        ["4111105"] = self.OnSubFinish4111105,
        ["4111106"] = self.OnSubFinish4111106,
        ["4111115"] = self.OnSubFinish4111115,
        ["4111116"] = self.OnSubFinish4111116,
        ["4111107"] = self.OnSubFinish4111107,
        ["4111102"] = self.OnSubFinish4111102,
        ["4111117"] = self.OnSubFinish4111117,
        ["4111109"] = self.OnSubFinish4111109,
        ["4111110"] = self.OnSubFinish4111110,
        ["4111118"] = self.OnSubFinish4111118,
        ["4111114"] = self.OnSubFinish4111114,
        ["4111112"] = self.OnSubFinish4111112,
        ["4111113"] = self.OnSubFinish4111113,
        ["4111103"] = self.OnSubFinish4111103,
        ["4111108"] = self.OnSubFinish4111108,
        ["4111111"] = self.OnSubFinish4111111
    }
end

function Quest41111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4111101"] = self.OnSubFailed4111101,
        ["4111104"] = self.OnSubFailed4111104,
        ["4111105"] = self.OnSubFailed4111105,
        ["4111106"] = self.OnSubFailed4111106,
        ["4111115"] = self.OnSubFailed4111115,
        ["4111116"] = self.OnSubFailed4111116,
        ["4111107"] = self.OnSubFailed4111107,
        ["4111102"] = self.OnSubFailed4111102,
        ["4111117"] = self.OnSubFailed4111117,
        ["4111109"] = self.OnSubFailed4111109,
        ["4111110"] = self.OnSubFailed4111110,
        ["4111118"] = self.OnSubFailed4111118,
        ["4111114"] = self.OnSubFailed4111114,
        ["4111112"] = self.OnSubFailed4111112,
        ["4111113"] = self.OnSubFailed4111113,
        ["4111103"] = self.OnSubFailed4111103,
        ["4111108"] = self.OnSubFailed4111108,
        ["4111111"] = self.OnSubFailed4111111
    }
end

function Quest41111:Start()
    print("Start")
end

function Quest41111:OnDestroy()
    print("OnDestroy")
end

function Quest41111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41111:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.Npc10011Data1.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.Npc153701Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc153901Data.alias):Destroy(false)
        self:NotifyTo(npcs.Npc1537Data.alias, 0, true)
        self:NotifyTo(npcs.Npc1539Data.alias, 0, true)
        self:UnSpawn(datas.Q41111Trigger_.alias)
        self:UnSpawn(datas.Q41111Trigger2_.alias)
        self:UnSpawn(gadgets.Q4111109Target.alias)
        self:UnSpawn(gadgets.Q4111110Target.alias)
    end)
end

function Quest41111:DestoryFischl()
    print("DestoryFischl")
    self:DestroyQuestNpcActor(npcs.Npc10011Data2.alias, 3)
end

function Quest41111:DestoryAllNPC()
    print("DestoryAllNPC")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc10011Data1.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc153701Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc153901Data.alias):Destroy(false)
end

function Quest41111:DestroyNPCWithoutFischl()
    print("DestroyNPCWithoutFischl")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc153701Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc153901Data.alias):Destroy(false)
end

function Quest41111:OnSubStart4111101(arg1)
    print("OnSubStart4111101")
end

function Quest41111:OnSubFinish4111101(arg1)
    print("OnSubFinish4111101")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41111:OnSubFailed4111101(arg1)
    print("OnSubFailed4111101")
end

function Quest41111:OnSubStart4111104(arg1)
    print("OnSubStart4111104")
    actorMgr:CreateActorWithPos(datas.Q41111Trigger_.alias, datas.Q41111Trigger_.script, datas.Q41111Trigger_.id, 0, sceneData:GetDummyPoint(3, "Q4111102Fischl").pos, sceneData:GetDummyPoint(3, "Q4111102Fischl").rot, true, false, 3)
end

function Quest41111:OnSubFinish4111104(arg1)
    print("OnSubFinish4111104")
end

function Quest41111:OnSubFailed4111104(arg1)
    print("OnSubFailed4111104")
end

function Quest41111:OnSubStart4111105(arg1)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10011Data2.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc10011Data2.id)
        self:RequestInteraction(npcs.Npc10011Data2.alias)
    end, nil, questNpcCreateTask)
end

function Quest41111:OnSubFinish4111105(arg1)
    print("OnSubFinish4111105")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41111:OnSubFailed4111105(arg1)
    print("OnSubFailed4111105")
end

function Quest41111:OnSubStart4111106(arg1)
    print("OnSubStart4111106")
end

function Quest41111:OnSubFinish4111106(arg1)
    print("OnSubFinish4111106")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41111:OnSubFailed4111106(arg1)
    print("OnSubFailed4111106")
end

function Quest41111:OnSubStart4111115(arg1)
    print("OnSubStart4111115")
end

function Quest41111:OnSubFinish4111115(arg1)
    print("OnSubFinish4111115")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41111:OnSubFailed4111115(arg1)
    print("OnSubFailed4111115")
end

function Quest41111:OnSubStart4111116(arg1)
    print("OnSubStart4111116")
end

function Quest41111:OnSubFinish4111116(arg1)
    print("OnSubFinish4111116")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41111:OnSubFailed4111116(arg1)
    print("OnSubFailed4111116")
end

function Quest41111:OnSubStart4111107(arg1)
    print("OnSubStart4111107")
    actorMgr:CreateActorWithPos(datas.Q41111Trigger2_.alias, datas.Q41111Trigger2_.script, datas.Q41111Trigger2_.id, 0, datas.Q41111Trigger2_.point.pos, datas.Q41111Trigger2_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc153901Data.alias):DoFreeStyle(4190, true)
    self:CreateSpeechBubbleTask(npcs.Npc153901Data.id, 411110703, 3, true, 4, 5)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
end

function Quest41111:OnSubFinish4111107(arg1)
    print("OnSubFinish4111107")
    globalActor:NarratorOnlyTaskByData(datas.NarratorWithId1, function()
        globalActor:NarratorOnlyTaskByData(datas.NarratorWithId3, nil, 41111)
    end, 41111)
end

function Quest41111:OnSubFailed4111107(arg1)
    print("OnSubFailed4111107")
end

function Quest41111:OnSubStart4111102(arg1)
    print("OnSubStart4111102")
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc153901Data.alias):DoFreeStyle(4190, false)
    self:CreateSpeechBubbleTask(npcs.Npc153901Data.id, 411110703, 3, true, 4, 5)
end

function Quest41111:OnSubFinish4111102(arg1)
    print("OnSubFinish4111102")
end

function Quest41111:OnSubFailed4111102(arg1)
    print("OnSubFailed4111102")
end

function Quest41111:OnSubStart4111117(arg1)
    globalActor:StopNarrator()
    globalActor:ClearNarratorTask()
    self.CallDelay(self, 2, function()
        self:RequestInteraction(npcs.Npc153901Data.alias)
    end)

    self.GetQuestNpcActor(self, npcs.Npc153901Data.alias):DoFreeStyle(1240, true)
end

function Quest41111:OnSubFinish4111117(arg1)
    print("OnSubFinish4111117")
    self.ActionSafeCall(self, function()
        self:DestoryAllNPC()
        self:ShowTutorialDialog(900, function()
            self:NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 41111)
        end)
    end)
end

function Quest41111:OnSubFailed4111117(arg1)
    print("OnSubFailed4111117")
end

function Quest41111:OnSubStart4111109(arg1)
    print("OnSubStart4111109")
    self:NotifyTo(npcs.Npc1537Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1539Data.alias, 0, true)
    self:SpawnGadget(arg1, gadgets.Q4111109Target.id, 1)
end

function Quest41111:OnSubFinish4111109(arg1)
    print("OnSubFinish4111109")
    self:UnSpawn(gadgets.Q4111109Target.alias)
end

function Quest41111:OnSubFailed4111109(arg1)
    print("OnSubFailed4111109")
end

function Quest41111:OnSubStart4111110(arg1)
    print("OnSubStart4111110")
    self:SpawnGadget(arg1, gadgets.Q4111110Target.id, 1)
end

function Quest41111:OnSubFinish4111110(arg1)
    print("OnSubFinish4111110")
    self:UnSpawn(gadgets.Q4111110Target.alias)
end

function Quest41111:OnSubFailed4111110(arg1)
    print("OnSubFailed4111110")
end

function Quest41111:OnSubStart4111118(arg1)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10011Data3.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc10011Data3.id, 0)
        self:RequestInteraction(npcs.Npc10011Data3.alias)
    end, nil, questNpcCreateTask)
end

function Quest41111:OnSubFinish4111118(arg1)
    print("OnSubFinish4111118")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41111:OnSubFailed4111118(arg1)
    print("OnSubFailed4111118")
end

function Quest41111:OnSubStart4111114(arg1)
    print("OnSubStart4111114")
end

function Quest41111:OnSubFinish4111114(arg1)
    print("OnSubFinish4111114")
    self.ActionSafeCall(self, function()
        self:DestoryAllNPC()
        self:ShowActivityAsterPage()
    end)
end

function Quest41111:OnSubFailed4111114(arg1)
    print("OnSubFailed4111114")
end

function Quest41111:OnSubStart4111112(arg1)
    print("OnSubStart4111112")
end

function Quest41111:OnSubFinish4111112(arg1)
    print("OnSubFinish4111112")
end

function Quest41111:OnSubFailed4111112(arg1)
    print("OnSubFailed4111112")
end

function Quest41111:OnSubStart4111113(arg1)
    print("OnSubStart4111113")
end

function Quest41111:OnSubFinish4111113(arg1)
    print("OnSubFinish4111113")
end

function Quest41111:OnSubFailed4111113(arg1)
    print("OnSubFailed4111113")
end

function Quest41111:OnSubStart4111103(arg1)
    print("OnSubStart4111103")
    self:FinishQuestID(false, 4111103)
end

function Quest41111:OnSubFinish4111103(arg1)
    print("OnSubFinish4111103")
end

function Quest41111:OnSubFailed4111103(arg1)
    print("OnSubFailed4111103")
end

function Quest41111:OnSubStart4111108(arg1)
    print("OnSubStart4111108")
    self:CreateQuestNpc(arg1, npcs.Npc10011Data1.id, 0)
end

function Quest41111:OnSubFinish4111108(arg1)
    print("OnSubFinish4111108")
    self:DestroyQuestNpcActor(npcs.Npc10011Data1.alias, 0)
end

function Quest41111:OnSubFailed4111108(arg1)
    print("OnSubFailed4111108")
end

function Quest41111:OnSubStart4111111(arg1)
    print("OnSubStart4111111")
end

function Quest41111:OnSubFinish4111111(arg1)
    print("OnSubFinish4111111")
end

function Quest41111:OnSubFailed4111111(arg1)
    print("OnSubFailed4111111")
end

return Quest41111
