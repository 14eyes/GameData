require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19062 = class("Quest19062", QuestActorProxy)
Quest19062.defaultAlias = "Quest19062"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19062:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906201"] = self.OnSubStart1906201,
        ["1906204"] = self.OnSubStart1906204,
        ["1906205"] = self.OnSubStart1906205,
        ["1906206"] = self.OnSubStart1906206,
        ["1906207"] = self.OnSubStart1906207,
        ["1906208"] = self.OnSubStart1906208,
        ["1906209"] = self.OnSubStart1906209,
        ["1906210"] = self.OnSubStart1906210,
        ["1906211"] = self.OnSubStart1906211,
        ["1906212"] = self.OnSubStart1906212,
        ["1906213"] = self.OnSubStart1906213,
        ["1906202"] = self.OnSubStart1906202,
        ["1906203"] = self.OnSubStart1906203
    }
end

function Quest19062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906201"] = self.OnSubFinish1906201,
        ["1906204"] = self.OnSubFinish1906204,
        ["1906205"] = self.OnSubFinish1906205,
        ["1906206"] = self.OnSubFinish1906206,
        ["1906207"] = self.OnSubFinish1906207,
        ["1906208"] = self.OnSubFinish1906208,
        ["1906209"] = self.OnSubFinish1906209,
        ["1906210"] = self.OnSubFinish1906210,
        ["1906211"] = self.OnSubFinish1906211,
        ["1906212"] = self.OnSubFinish1906212,
        ["1906213"] = self.OnSubFinish1906213,
        ["1906202"] = self.OnSubFinish1906202,
        ["1906203"] = self.OnSubFinish1906203
    }
end

function Quest19062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906201"] = self.OnSubFailed1906201,
        ["1906204"] = self.OnSubFailed1906204,
        ["1906205"] = self.OnSubFailed1906205,
        ["1906206"] = self.OnSubFailed1906206,
        ["1906207"] = self.OnSubFailed1906207,
        ["1906208"] = self.OnSubFailed1906208,
        ["1906209"] = self.OnSubFailed1906209,
        ["1906210"] = self.OnSubFailed1906210,
        ["1906211"] = self.OnSubFailed1906211,
        ["1906212"] = self.OnSubFailed1906212,
        ["1906213"] = self.OnSubFailed1906213,
        ["1906202"] = self.OnSubFailed1906202,
        ["1906203"] = self.OnSubFailed1906203
    }
end

function Quest19062:Start()
    print("Start")
end

function Quest19062:OnDestroy()
    print("OnDestroy")
end

function Quest19062:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19062:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19062:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19062:ClearGateTalk()
    print("ClearGateTalk")
    self:DestroyQuestNpcActor(npcs.Npc1027DataGate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc11001DataGate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc143701Data.alias, 3)
    self:NotifyTo("Npc1437", 0, true)
end

function Quest19062:ClearNoelLiar()
    print("ClearNoelLiar")
    self:DestroyQuestNpcActor(npcs.Npc1027DataIn.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc11001DataIn.alias, 3)
end

function Quest19062:ClearSouvenir()
    print("ClearSouvenir")
    self:DestroyQuestNpcActor(npcs.Npc143501Data.alias, 3)
    self:NotifyTo("Npc1435", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc11001DataFood.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027DataSouvenir.alias, 3)
end

function Quest19062:ClearOut()
    print("ClearOut")
    self:DestroyQuestNpcActor(npcs.Npc11001DataOut.alias, 3)
end

function Quest19062:ClearEnd()
    print("ClearEnd")
    self:DestroyQuestNpcActor(npcs.Npc1027DataFood.alias, 3)
end

function Quest19062:NarratorGateEntrance()
    print("NarratorGateEntrance")
    self:NarratorOnlyTaskByData(datas.NarratorGateEntrance)
end

function Quest19062:NarratorWineEnd()
    print("NarratorWineEnd")
    self:NarratorOnlyTaskByData(datas.NarratorWineEnd)
end

function Quest19062:NarratorFoodEnd()
    print("NarratorFoodEnd")
    self:NarratorOnlyTaskByData(datas.NarratorFoodEnd)
end

function Quest19062:NarratorBE()
    print("NarratorBE")
    self:NarratorOnlyTaskByData(datas.NarratorBE)
end

function Quest19062:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc143701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027DataGate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc11001DataGate.alias, 3)
    self:NotifyTo("Npc1437", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc143501Data.alias, 3)
    self:NotifyTo("Npc1435", 0, true)
    actorMgr:DestroyEntityActor(datas.Q19062Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19062TriggerInLiar_.alias, 3, false)
end

function Quest19062:OnSubStart1906201(arg1)
    print("OnSubStart1906201")
    self.SetNavigationByMainId(self, 19062, true)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1437", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc143701Data.id, 13)
        self:RequestCoopInteractionFromSubStartPoint(103401, 1906201)
        actorMgr:CreateActorWithPos(datas.Q19062Trigger_.alias, datas.Q19062Trigger_.script, datas.Q19062Trigger_.id, 0, datas.Q19062Trigger_.point.pos, datas.Q19062Trigger_.point.rot, true, false, 3)
    end)
end

function Quest19062:OnSubFinish1906201(arg1)
    print("OnSubFinish1906201")
    self:ActionSafeCall(self.ClearGateTalk)
    self:CallDelay(2, self.NarratorGateEntrance)
end

function Quest19062:OnSubFailed1906201(arg1)
    print("OnSubFailed1906201")
end

function Quest19062:OnSubStart1906204(arg1)
    print("OnSubStart1906204")
end

function Quest19062:OnSubFinish1906204(arg1)
    print("OnSubFinish1906204")
end

function Quest19062:OnSubFailed1906204(arg1)
    print("OnSubFailed1906204")
end

function Quest19062:OnSubStart1906205(arg1)
    print("OnSubStart1906205")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906203)
    local actor = actorMgr:GetActor(actorAlias)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc1027DataWine.alias, npcs.Npc11001DataWine.alias})
    actor.ShowBlackScreen(actor, 0.2, 2, 0.5, function()
        actor:CreateQuestNpcById(1906205, npcs.Npc1027DataWine.id, 8)
        actor:CreateQuestNpcById(1906205, npcs.Npc11001DataWine.id, 9)
        actor:RequestInteraction(npcs.Npc1027DataWine.alias)
    end, nil, questNpcCreateTask)
end

function Quest19062:OnSubFinish1906205(arg1)
    print("OnSubFinish1906205")
    self:ActionSafeCall(self.ClearNoelLiar)
end

function Quest19062:OnSubFailed1906205(arg1)
    print("OnSubFailed1906205")
end

function Quest19062:OnSubStart1906206(arg1)
    print("OnSubStart1906206")
end

function Quest19062:OnSubFinish1906206(arg1)
    print("OnSubFinish1906206")
end

function Quest19062:OnSubFailed1906206(arg1)
    print("OnSubFailed1906206")
end

function Quest19062:OnSubStart1906207(arg1)
    print("OnSubStart1906207")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906204)
    local actor = actorMgr:GetActor(actorAlias)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc1027DataFood.alias, npcs.Npc11001DataFood.alias})
    actor.ShowBlackScreen(actor, 0.2, 2, 0.5, function()
        actor:CreateQuestNpcById(1906205, npcs.Npc1027DataFood.id, 10)
        actor:CreateQuestNpcById(1906205, npcs.Npc11001DataFood.id, 11)
        actor:RequestInteraction(npcs.Npc1027DataFood.alias)
    end, nil, questNpcCreateTask)
end

function Quest19062:OnSubFinish1906207(arg1)
    print("OnSubFinish1906207")
    self:ActionSafeCall(self.ClearNoelLiar)
end

function Quest19062:OnSubFailed1906207(arg1)
    print("OnSubFailed1906207")
end

function Quest19062:OnSubStart1906208(arg1)
    print("OnSubStart1906208")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1435", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc143501Data.id, 4)
    end)
end

function Quest19062:OnSubFinish1906208(arg1)
    print("OnSubFinish1906208")
end

function Quest19062:OnSubFailed1906208(arg1)
    print("OnSubFailed1906208")
end

function Quest19062:OnSubStart1906209(arg1)
    print("OnSubStart1906209")
    self.ActionSafeCall(self, function()
        self:RequestCoopInteractionFromSubStartPoint(103401, 1906205)
        self:NotifyTo("Npc1435", 1, true)
    end)

    self.ShowBlackScreen(self, 0.2, 2, 0.5, function()
        self:RequestInteraction(npcs.Npc143501Data.alias)
    end, nil, nil, "")
end

function Quest19062:OnSubFinish1906209(arg1)
    print("OnSubFinish1906209")
    self:ActionSafeCall(self.ClearSouvenir)
end

function Quest19062:OnSubFailed1906209(arg1)
    print("OnSubFailed1906209")
end

function Quest19062:OnSubStart1906210(arg1)
    print("OnSubStart1906210")
end

function Quest19062:OnSubFinish1906210(arg1)
    print("OnSubFinish1906210")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19062:OnSubFailed1906210(arg1)
    print("OnSubFailed1906210")
end

function Quest19062:OnSubStart1906211(arg1)
    print("OnSubStart1906211")
    actorMgr:CreateActorWithPos(datas.Q19062TriggerInLiar_.alias, datas.Q19062TriggerInLiar_.script, datas.Q19062TriggerInLiar_.id, 0, datas.Q19062TriggerInLiar_.point.pos, datas.Q19062TriggerInLiar_.point.rot, true, false, 3)
end

function Quest19062:OnSubFinish1906211(arg1)
    print("OnSubFinish1906211")
end

function Quest19062:OnSubFailed1906211(arg1)
    print("OnSubFailed1906211")
end

function Quest19062:OnSubStart1906212(arg1)
    print("OnSubStart1906212")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc11001DataOut.alias})
    self.ShowBlackScreen(self, 0.2, 2, 0.5, function()
        self:TransmitPlayerByQuestId(1906212, 4, nil, function()
            self:CreateQuestNpc(arg1, npcs.Npc11001DataOut.id, 12)
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906206)
        end, questNpcCreateTask)
    end, nil, nil, "")
end

function Quest19062:OnSubFinish1906212(arg1)
    print("OnSubFinish1906212")
    self:ActionSafeCall(self.ClearOut)
    self:CallDelay(2, self.NarratorBE)
end

function Quest19062:OnSubFailed1906212(arg1)
    print("OnSubFailed1906212")
end

function Quest19062:OnSubStart1906213(arg1)
    print("OnSubStart1906213")
    self:CreateQuestNpc(arg1, npcs.Npc1027DataFin.id, 13)
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906207)
end

function Quest19062:OnSubFinish1906213(arg1)
    print("OnSubFinish1906213")
    self:ActionSafeCall(self.ClearEnd)
end

function Quest19062:OnSubFailed1906213(arg1)
    print("OnSubFailed1906213")
end

function Quest19062:OnSubStart1906202(arg1)
    print("OnSubStart1906202")
end

function Quest19062:OnSubFinish1906202(arg1)
    print("OnSubFinish1906202")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1027DataIn.alias, npcs.Npc11001DataIn.alias})
    self.CallDelay(self, 0.5, function()
        self:TransmitPlayerByQuestId(1906202, 1, nil, function()
            self:CreateQuestNpc(arg1, npcs.Npc1027DataIn.id, 5)
            self:CreateQuestNpc(arg1, npcs.Npc11001DataIn.id, 7)
        end, questNpcCreateTask)
    end)
end

function Quest19062:OnSubFailed1906202(arg1)
    print("OnSubFailed1906202")
end

function Quest19062:OnSubStart1906203(arg1)
    print("OnSubStart1906203")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906202)
end

function Quest19062:OnSubFinish1906203(arg1)
    print("OnSubFinish1906203")
    self:ActionSafeCall(self.ClearNoelLiar)
end

function Quest19062:OnSubFailed1906203(arg1)
    print("OnSubFailed1906203")
end

return Quest19062
