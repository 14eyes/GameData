require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19069 = class("Quest19069", QuestActorProxy)
Quest19069.defaultAlias = "Quest19069"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19069:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906901"] = self.OnSubStart1906901,
        ["1906902"] = self.OnSubStart1906902,
        ["1906903"] = self.OnSubStart1906903,
        ["1906904"] = self.OnSubStart1906904,
        ["1906905"] = self.OnSubStart1906905,
        ["1906906"] = self.OnSubStart1906906,
        ["1906907"] = self.OnSubStart1906907,
        ["1906912"] = self.OnSubStart1906912,
        ["1906908"] = self.OnSubStart1906908,
        ["1906910"] = self.OnSubStart1906910,
        ["1906911"] = self.OnSubStart1906911,
        ["1906909"] = self.OnSubStart1906909
    }
end

function Quest19069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906901"] = self.OnSubFinish1906901,
        ["1906902"] = self.OnSubFinish1906902,
        ["1906903"] = self.OnSubFinish1906903,
        ["1906904"] = self.OnSubFinish1906904,
        ["1906905"] = self.OnSubFinish1906905,
        ["1906906"] = self.OnSubFinish1906906,
        ["1906907"] = self.OnSubFinish1906907,
        ["1906912"] = self.OnSubFinish1906912,
        ["1906908"] = self.OnSubFinish1906908,
        ["1906910"] = self.OnSubFinish1906910,
        ["1906911"] = self.OnSubFinish1906911,
        ["1906909"] = self.OnSubFinish1906909
    }
end

function Quest19069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906901"] = self.OnSubFailed1906901,
        ["1906902"] = self.OnSubFailed1906902,
        ["1906903"] = self.OnSubFailed1906903,
        ["1906904"] = self.OnSubFailed1906904,
        ["1906905"] = self.OnSubFailed1906905,
        ["1906906"] = self.OnSubFailed1906906,
        ["1906907"] = self.OnSubFailed1906907,
        ["1906912"] = self.OnSubFailed1906912,
        ["1906908"] = self.OnSubFailed1906908,
        ["1906910"] = self.OnSubFailed1906910,
        ["1906911"] = self.OnSubFailed1906911,
        ["1906909"] = self.OnSubFailed1906909
    }
end

function Quest19069:Start()
    print("Start")
end

function Quest19069:OnDestroy()
    print("OnDestroy")
end

function Quest19069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19069:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.ClearAllNew)
end

function Quest19069:ClearSouvenir()
    print("ClearSouvenir")
    self:DestroyQuestNpcActor(npcs.Npc143501Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027DataSouvenir.alias, 3)
    self:NotifyTo("Npc1435", 0, true)
end

function Quest19069:ClearNoel()
    print("ClearNoel")
    self:DestroyQuestNpcActor(npcs.Npc1027DataSouvenir.alias, 3)
end

function Quest19069:ClearBeiyaNoel()
    print("ClearBeiyaNoel")
    self:DestroyQuestNpcActor(npcs.Npc140101DataStart.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027DataSouvenir.alias, 3)
end

function Quest19069:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1027DataDate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc140101DataDate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc140301DataDate.alias, 3)
    self:NotifyTo("Npc1401", 0, true)
    self:NotifyTo("Npc1403", 0, true)
end

function Quest19069:NarratorDateIntro()
    print("NarratorDateIntro")
    self:NarratorOnlyTaskByData(datas.NarratorDateIntro)
end

function Quest19069:NarratorDateGift()
    print("NarratorDateGift")
    self:NarratorOnlyTaskByData(datas.NarratorDateGift)
end

function Quest19069:NarratorPlace1()
    print("NarratorPlace1")
    self:NarratorOnlyTaskByData(datas.NarratorDataPlace1)
end

function Quest19069:NarratorPlace2()
    print("NarratorPlace2")
    self:NarratorOnlyTaskByData(datas.NarratorDataPlace2)
end

function Quest19069:NarratorPlace3()
    print("NarratorPlace3")
    self:NarratorOnlyTaskByData(datas.NarratorDataPlace3)
end

function Quest19069:ClearAllNew()
    print("ClearAllNew")
    self:DestroyQuestNpcActor(npcs.Npc1027DataDate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc140101DataDate.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc140301DataDate.alias, 3)
    self:NotifyTo("Npc1401", 0, true)
    self:NotifyTo("Npc1403", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc143501Data.alias, 3)
    self:NotifyTo("Npc1435", 0, true)
end

function Quest19069:OnSubStart1906901(arg1)
    print("OnSubStart1906901")
    self.SetNavigationByMainId(self, 19069, true)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
        self:NotifyTo("Npc1435", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc143501Data.id, 1)
        self:CreateQuestNpc(arg1, npcs.Npc140101DataStart.id, 3)
    end)

    self.RequestCoopInteractionFromSubStartPoint(self, 103401, 1906901)
end

function Quest19069:OnSubFinish1906901(arg1)
    print("OnSubFinish1906901")
    self:ActionSafeCall(self.ClearSouvenir)
    self:CallDelay(1.5, self.NarratorDateGift)
end

function Quest19069:OnSubFailed1906901(arg1)
    print("OnSubFailed1906901")
end

function Quest19069:OnSubStart1906902(arg1)
    print("OnSubStart1906902")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)

    self.RequestCoopInteractionFromSubStartPoint(self, 103401, 1906902)
end

function Quest19069:OnSubFinish1906902(arg1)
    print("OnSubFinish1906902")
    self:ActionSafeCall(self.ClearNoel)
    self:CallDelay(2, self.NarratorDateIntro)
end

function Quest19069:OnSubFailed1906902(arg1)
    print("OnSubFailed1906902")
end

function Quest19069:OnSubStart1906903(arg1)
    print("OnSubStart1906903")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19069:OnSubFinish1906903(arg1)
    print("OnSubFinish1906903")
end

function Quest19069:OnSubFailed1906903(arg1)
    print("OnSubFailed1906903")
end

function Quest19069:OnSubStart1906904(arg1)
    print("OnSubStart1906904")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19069:OnSubFinish1906904(arg1)
    print("OnSubFinish1906904")
    self:CallDelay(1.5, self.NarratorPlace1)
end

function Quest19069:OnSubFailed1906904(arg1)
    print("OnSubFailed1906904")
end

function Quest19069:OnSubStart1906905(arg1)
    print("OnSubStart1906905")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19069:OnSubFinish1906905(arg1)
    print("OnSubFinish1906905")
end

function Quest19069:OnSubFailed1906905(arg1)
    print("OnSubFailed1906905")
end

function Quest19069:OnSubStart1906906(arg1)
    print("OnSubStart1906906")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19069:OnSubFinish1906906(arg1)
    print("OnSubFinish1906906")
    self:CallDelay(1.5, self.NarratorPlace2)
end

function Quest19069:OnSubFailed1906906(arg1)
    print("OnSubFailed1906906")
end

function Quest19069:OnSubStart1906907(arg1)
    print("OnSubStart1906907")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19069:OnSubFinish1906907(arg1)
    print("OnSubFinish1906907")
end

function Quest19069:OnSubFailed1906907(arg1)
    print("OnSubFailed1906907")
end

function Quest19069:OnSubStart1906912(arg1)
    print("OnSubStart1906912")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19069:OnSubFinish1906912(arg1)
    print("OnSubFinish1906912")
    self:CallDelay(1.5, self.NarratorPlace3)
end

function Quest19069:OnSubFailed1906912(arg1)
    print("OnSubFailed1906912")
end

function Quest19069:OnSubStart1906908(arg1)
    print("OnSubStart1906908")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)

    self.RequestCoopInteractionFromSubStartPoint(self, 103401, 1906903)
end

function Quest19069:OnSubFinish1906908(arg1)
    print("OnSubFinish1906908")
    self:ActionSafeCall(self.ClearBeiyaNoel)
end

function Quest19069:OnSubFailed1906908(arg1)
    print("OnSubFailed1906908")
end

function Quest19069:OnSubStart1906910(arg1)
    print("OnSubStart1906910")
    self.SetNavigationByMainId(self, 19069, true)
    self.CreateQuestNpc(self, arg1, npcs.Npc140301DataDate.id, 5)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
        self:NotifyTo("Npc1403", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc140101DataDate.id, 4)
        self:GetQuestNpcActor(npcs.Npc140301DataDate.alias):DoFreeStyle(4110, true, nil, true, true)
        self:GetQuestNpcActor(npcs.Npc140101DataDate.alias):DoFreeStyle(4100, true, nil, true, true)
    end)
end

function Quest19069:OnSubFinish1906910(arg1)
    print("OnSubFinish1906910")
end

function Quest19069:OnSubFailed1906910(arg1)
    print("OnSubFailed1906910")
end

function Quest19069:OnSubStart1906911(arg1)
    print("OnSubStart1906911")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1027DataDate.alias})
    self.CallDelay(self, 0.5, function()
        self:TransmitPlayerByQuestId(1906911, 1, nil, function()
            self:CreateQuestNpc(arg1, npcs.Npc1027DataDate.id, 6)
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906904)
            self:NotifyTo("Npc1401", 1, true)
            self:NotifyTo("Npc1403", 1, true)
            self:RequestInteraction(npcs.Npc1027DataDate.alias)
        end, questNpcCreateTask)
    end)
end

function Quest19069:OnSubFinish1906911(arg1)
    print("OnSubFinish1906911")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19069:OnSubFailed1906911(arg1)
    print("OnSubFailed1906911")
end

function Quest19069:OnSubStart1906909(arg1)
    print("OnSubStart1906909")
    self:NotifyTo("Npc1401", 1, true)
end

function Quest19069:OnSubFinish1906909(arg1)
    print("OnSubFinish1906909")
end

function Quest19069:OnSubFailed1906909(arg1)
    print("OnSubFailed1906909")
end

return Quest19069
