require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19068 = class("Quest19068", QuestActorProxy)
Quest19068.defaultAlias = "Quest19068"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19068:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906801"] = self.OnSubStart1906801,
        ["1906802"] = self.OnSubStart1906802,
        ["1906803"] = self.OnSubStart1906803,
        ["1906804"] = self.OnSubStart1906804,
        ["1906806"] = self.OnSubStart1906806,
        ["1906808"] = self.OnSubStart1906808,
        ["1906809"] = self.OnSubStart1906809,
        ["1906811"] = self.OnSubStart1906811,
        ["1906805"] = self.OnSubStart1906805,
        ["1906810"] = self.OnSubStart1906810,
        ["1906807"] = self.OnSubStart1906807
    }
end

function Quest19068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906801"] = self.OnSubFinish1906801,
        ["1906802"] = self.OnSubFinish1906802,
        ["1906803"] = self.OnSubFinish1906803,
        ["1906804"] = self.OnSubFinish1906804,
        ["1906806"] = self.OnSubFinish1906806,
        ["1906808"] = self.OnSubFinish1906808,
        ["1906809"] = self.OnSubFinish1906809,
        ["1906811"] = self.OnSubFinish1906811,
        ["1906805"] = self.OnSubFinish1906805,
        ["1906810"] = self.OnSubFinish1906810,
        ["1906807"] = self.OnSubFinish1906807
    }
end

function Quest19068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906801"] = self.OnSubFailed1906801,
        ["1906802"] = self.OnSubFailed1906802,
        ["1906803"] = self.OnSubFailed1906803,
        ["1906804"] = self.OnSubFailed1906804,
        ["1906806"] = self.OnSubFailed1906806,
        ["1906808"] = self.OnSubFailed1906808,
        ["1906809"] = self.OnSubFailed1906809,
        ["1906811"] = self.OnSubFailed1906811,
        ["1906805"] = self.OnSubFailed1906805,
        ["1906810"] = self.OnSubFailed1906810,
        ["1906807"] = self.OnSubFailed1906807
    }
end

function Quest19068:Start()
    print("Start")
end

function Quest19068:OnDestroy()
    print("OnDestroy")
end

function Quest19068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19068:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.Clearall)
end

function Quest19068:ClearBeiya()
    print("ClearBeiya")
    self:DestroyQuestNpcActor(npcs.Npc140101DataGive.alias, 3)
end

function Quest19068:FinishQuest()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1906806)
    print("Successl Quest1906806")
end

function Quest19068:ClearNoel()
    print("ClearNoel")
    self:DestroyQuestNpcActor(npcs.Npc1027DataBeiya.alias, 3)
end

function Quest19068:ClearTry()
    print("ClearTry")
    self:DestroyQuestNpcActor(npcs.Npc140101DataTry.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027DataTry.alias, 3)
    self:NotifyTo("Npc1401", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc140301Data.alias, 3)
    self:NotifyTo("Npc1403", 0, true)
end

function Quest19068:ClearBE()
    print("ClearBE")
    self:DestroyQuestNpcActor(npcs.Npc1027DataBE.alias, 3)
end

function Quest19068:NarratorAfterLunch()
    print("NarratorAfterLunch")
    self:NarratorOnlyTaskByData(datas.NarratorAfterLunch)
end

function Quest19068:NarratorLibrary()
    print("NarratorLibrary")
    self:NarratorOnlyTaskByData(datas.NarratorLibrary)
end

function Quest19068:Clearall()
    print("Clearall")
    self:DestroyQuestNpcActor(npcs.Npc140101DataTry.alias, 3)
    self:NotifyTo("Npc1401", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc140301Data.alias, 3)
    self:NotifyTo("Npc1403", 0, true)
end

function Quest19068:OnSubStart1906801(arg1)
    print("OnSubStart1906801")
    self.SetNavigationByMainId(self, 19068, true)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc140101DataGive.id, 2)
        self:DestroyQuestNpcActor(npcs.Npc20218Data.alias, 1004)
        self:DestroyQuestNpcActor(npcs.Npc1027DataBE.alias, 1004)
    end)
end

function Quest19068:OnSubFinish1906801(arg1)
    print("OnSubFinish1906801")
end

function Quest19068:OnSubFailed1906801(arg1)
    print("OnSubFailed1906801")
end

function Quest19068:OnSubStart1906802(arg1)
    print("OnSubStart1906802")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19068:OnSubFinish1906802(arg1)
    print("OnSubFinish1906802")
end

function Quest19068:OnSubFailed1906802(arg1)
    print("OnSubFailed1906802")
end

function Quest19068:OnSubStart1906803(arg1)
    print("OnSubStart1906803")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19068:OnSubFinish1906803(arg1)
    print("OnSubFinish1906803")
end

function Quest19068:OnSubFailed1906803(arg1)
    print("OnSubFailed1906803")
end

function Quest19068:OnSubStart1906804(arg1)
    print("OnSubStart1906804")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19068:OnSubFinish1906804(arg1)
    print("OnSubFinish1906804")
    self:ActionSafeCall(self.ClearBeiya)
end

function Quest19068:OnSubFailed1906804(arg1)
    print("OnSubFailed1906804")
end

function Quest19068:OnSubStart1906806(arg1)
    print("OnSubStart1906806")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1027DataLunch.alias})
    self.CallDelay(self, 0.5, function()
        self:TransmitPlayerByQuestId(1906806, 1, nil, function()
            self:CreateQuestNpc(arg1, npcs.Npc1027DataLunch.id, 3)
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906801)
            self:NotifyTo("Npc1401", 1, true)
            self:RequestInteraction(npcs.Npc1027DataLunch.alias)
        end, questNpcCreateTask)
    end)
end

function Quest19068:OnSubFinish1906806(arg1)
    print("OnSubFinish1906806")
    self:ActionSafeCall(self.ClearNoel)
    self:CallDelay(2, self.NarratorAfterLunch)
end

function Quest19068:OnSubFailed1906806(arg1)
    print("OnSubFailed1906806")
end

function Quest19068:OnSubStart1906808(arg1)
    print("OnSubStart1906808")
    self.RequestCoopInteractionFromSubStartPoint(self, 103401, 1906802)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1403", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc140101DataTry.id, 4)
        self:NotifyTo("Npc1401", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc140301Data.id, 7)
    end)
end

function Quest19068:OnSubFinish1906808(arg1)
    print("OnSubFinish1906808")
    self:ActionSafeCall(self.ClearTry)
    self:CallDelay(3, self.NarratorLibrary)
end

function Quest19068:OnSubFailed1906808(arg1)
    print("OnSubFailed1906808")
end

function Quest19068:OnSubStart1906809(arg1)
    print("OnSubStart1906809")
    self:SetNavigationByMainId(19068, true)
end

function Quest19068:OnSubFinish1906809(arg1)
    print("OnSubFinish1906809")
end

function Quest19068:OnSubFailed1906809(arg1)
    print("OnSubFailed1906809")
end

function Quest19068:OnSubStart1906811(arg1)
    print("OnSubStart1906811")
    self:SetNavigationByMainId(19068, true)
    self:CreateQuestNpc(arg1, npcs.Npc1027DataBE.id, 6)
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906803)
end

function Quest19068:OnSubFinish1906811(arg1)
    print("OnSubFinish1906811")
    self:CreateQuestNpc(arg1, npcs.Npc20218Data.id, 7)
end

function Quest19068:OnSubFailed1906811(arg1)
    print("OnSubFailed1906811")
end

function Quest19068:OnSubStart1906805(arg1)
    print("OnSubStart1906805")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1401", 1, true)
    end)
end

function Quest19068:OnSubFinish1906805(arg1)
    print("OnSubFinish1906805")
end

function Quest19068:OnSubFailed1906805(arg1)
    print("OnSubFailed1906805")
end

function Quest19068:OnSubStart1906810(arg1)
    print("OnSubStart1906810")
end

function Quest19068:OnSubFinish1906810(arg1)
    print("OnSubFinish1906810")
end

function Quest19068:OnSubFailed1906810(arg1)
    print("OnSubFailed1906810")
end

function Quest19068:OnSubStart1906807(arg1)
    print("OnSubStart1906807")
    self:CreateQuestNpc(arg1, npcs.Npc1027DataLunch.id, 3)
    self:GetQuestNpcActor(npcs.Npc1027DataBeiya.alias):SitOnChair(8010)
    self:NotifyTo("Npc1401", 1, true)
end

function Quest19068:OnSubFinish1906807(arg1)
    print("OnSubFinish1906807")
    self:ShowBlackScreen(0.3, 2, 0.5, self.ClearNoel, nil, nil, "QUEST_Message_Q1010006")
end

function Quest19068:OnSubFailed1906807(arg1)
    print("OnSubFailed1906807")
end

return Quest19068
