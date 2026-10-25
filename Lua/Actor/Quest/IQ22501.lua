require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22501 = class("Quest22501", QuestActorProxy)
Quest22501.defaultAlias = "Quest22501"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22501:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22501:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2250101"] = self.OnSubStart2250101,
        ["2250102"] = self.OnSubStart2250102,
        ["2250103"] = self.OnSubStart2250103,
        ["2250104"] = self.OnSubStart2250104,
        ["2250105"] = self.OnSubStart2250105,
        ["2250106"] = self.OnSubStart2250106,
        ["2250107"] = self.OnSubStart2250107,
        ["2250108"] = self.OnSubStart2250108,
        ["2250109"] = self.OnSubStart2250109,
        ["2250110"] = self.OnSubStart2250110,
        ["2250111"] = self.OnSubStart2250111,
        ["2250124"] = self.OnSubStart2250124,
        ["2250112"] = self.OnSubStart2250112,
        ["2250113"] = self.OnSubStart2250113,
        ["2250114"] = self.OnSubStart2250114,
        ["2250115"] = self.OnSubStart2250115,
        ["2250116"] = self.OnSubStart2250116,
        ["2250117"] = self.OnSubStart2250117,
        ["2250118"] = self.OnSubStart2250118,
        ["2250119"] = self.OnSubStart2250119,
        ["2250120"] = self.OnSubStart2250120,
        ["2250121"] = self.OnSubStart2250121,
        ["2250122"] = self.OnSubStart2250122,
        ["2250123"] = self.OnSubStart2250123,
        ["2250125"] = self.OnSubStart2250125,
        ["2250126"] = self.OnSubStart2250126
    }
end

function Quest22501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2250101"] = self.OnSubFinish2250101,
        ["2250102"] = self.OnSubFinish2250102,
        ["2250103"] = self.OnSubFinish2250103,
        ["2250104"] = self.OnSubFinish2250104,
        ["2250105"] = self.OnSubFinish2250105,
        ["2250106"] = self.OnSubFinish2250106,
        ["2250107"] = self.OnSubFinish2250107,
        ["2250108"] = self.OnSubFinish2250108,
        ["2250109"] = self.OnSubFinish2250109,
        ["2250110"] = self.OnSubFinish2250110,
        ["2250111"] = self.OnSubFinish2250111,
        ["2250124"] = self.OnSubFinish2250124,
        ["2250112"] = self.OnSubFinish2250112,
        ["2250113"] = self.OnSubFinish2250113,
        ["2250114"] = self.OnSubFinish2250114,
        ["2250115"] = self.OnSubFinish2250115,
        ["2250116"] = self.OnSubFinish2250116,
        ["2250117"] = self.OnSubFinish2250117,
        ["2250118"] = self.OnSubFinish2250118,
        ["2250119"] = self.OnSubFinish2250119,
        ["2250120"] = self.OnSubFinish2250120,
        ["2250121"] = self.OnSubFinish2250121,
        ["2250122"] = self.OnSubFinish2250122,
        ["2250123"] = self.OnSubFinish2250123,
        ["2250125"] = self.OnSubFinish2250125,
        ["2250126"] = self.OnSubFinish2250126
    }
end

function Quest22501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2250101"] = self.OnSubFailed2250101,
        ["2250102"] = self.OnSubFailed2250102,
        ["2250103"] = self.OnSubFailed2250103,
        ["2250104"] = self.OnSubFailed2250104,
        ["2250105"] = self.OnSubFailed2250105,
        ["2250106"] = self.OnSubFailed2250106,
        ["2250107"] = self.OnSubFailed2250107,
        ["2250108"] = self.OnSubFailed2250108,
        ["2250109"] = self.OnSubFailed2250109,
        ["2250110"] = self.OnSubFailed2250110,
        ["2250111"] = self.OnSubFailed2250111,
        ["2250124"] = self.OnSubFailed2250124,
        ["2250112"] = self.OnSubFailed2250112,
        ["2250113"] = self.OnSubFailed2250113,
        ["2250114"] = self.OnSubFailed2250114,
        ["2250115"] = self.OnSubFailed2250115,
        ["2250116"] = self.OnSubFailed2250116,
        ["2250117"] = self.OnSubFailed2250117,
        ["2250118"] = self.OnSubFailed2250118,
        ["2250119"] = self.OnSubFailed2250119,
        ["2250120"] = self.OnSubFailed2250120,
        ["2250121"] = self.OnSubFailed2250121,
        ["2250122"] = self.OnSubFailed2250122,
        ["2250123"] = self.OnSubFailed2250123,
        ["2250125"] = self.OnSubFailed2250125,
        ["2250126"] = self.OnSubFailed2250126
    }
end

function Quest22501:Start()
    print("Start")
end

function Quest22501:OnDestroy()
    print("OnDestroy")
end

function Quest22501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2205", 0, true)
    self:DestroyQuestNpcActorByAlias(npcs.Npc220501Data1.alias, false)
    self:DestroyQuestNpcActorByAlias(npcs.Npc220501Data2.alias, false)
end

function Quest22501:qingzhou()
    print("qingzhou")
    self:CreateQuestNpcById(2250123, npcs.Npc220501Data2.id, 0)
end

function Quest22501:destroyqingzhou()
    self:DestroyQuestNpcActorByAlias(npcs.Npc220501Data1.alias, false)
    self:DestroyQuestNpcActorByAlias(npcs.Npc220501Data2.alias, false)
    self:NotifyTo("Npc2205", 0, true)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest22501:qingzhouwalk()
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc220501Data2.alias)
    questNpcActor.WalkToTask(questNpcActor, sceneData:GetDummyPoint(3, "Q22501shuaguaizhiyin").pos, function()
        questNpcActor:Standby()
    end, function()
        questNpcActor:Standby()
    end)
end

function Quest22501:interaction()
    print("interaction")
    self:RequestInteraction(npcs.Npc220501Data1.alias)
end

function Quest22501:OnSubStart2250101(arg1)
    print("OnSubStart2250101")
    self:CreateQuestNpc(arg1, npcs.Npc220501Data1.id, 0)
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250101(arg1)
    print("OnSubFinish2250101")
end

function Quest22501:OnSubFailed2250101(arg1)
    print("OnSubFailed2250101")
end

function Quest22501:OnSubStart2250102(arg1)
    print("OnSubStart2250102")
    self:HideQuestLikingBar()
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250102(arg1)
    self:SetQuestVar(2250101, 1, 60)
    local questVar = self:GetQuestVar(2250101, 1)
    self:ShowQuestLikingBar(22501, 220501, questVar, false, "FETTER_EXP_NAME")
end

function Quest22501:OnSubFailed2250102(arg1)
    print("OnSubFailed2250102")
end

function Quest22501:OnSubStart2250103(arg1)
    print("OnSubStart2250103")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250103(arg1)
    local n = self:GetQuestVar(2250101, 1) + 20
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(2250101, 1, n)
end

function Quest22501:OnSubFailed2250103(arg1)
    print("OnSubFailed2250103")
end

function Quest22501:OnSubStart2250104(arg1)
    print("OnSubStart2250104")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250104(arg1)
    self:GetQuestVar(2250101, 1)
    local n = self:GetQuestVar(2250101, 1) - 20
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(2250101, 1, n)
end

function Quest22501:OnSubFailed2250104(arg1)
    print("OnSubFailed2250104")
end

function Quest22501:OnSubStart2250105(arg1)
    print("OnSubStart2250105")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250105(arg1)
    local questVar = self:GetQuestVar(2250101, 1)
    self:UpdateQuestLikingBar(questVar, false)
    self:SetQuestVar(2250101, 1, questVar)
end

function Quest22501:OnSubFailed2250105(arg1)
    print("OnSubFailed2250105")
end

function Quest22501:OnSubStart2250106(arg1)
    print("OnSubStart2250106")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250106(arg1)
    local n = self:GetQuestVar(2250101, 1) + 20
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(2250101, 1, n)
end

function Quest22501:OnSubFailed2250106(arg1)
    print("OnSubFailed2250106")
end

function Quest22501:OnSubStart2250107(arg1)
    print("OnSubStart2250107")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250107(arg1)
    self:GetQuestVar(2250101, 1)
    local n = self:GetQuestVar(2250101, 1) - 20
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(2250101, 1, n)
end

function Quest22501:OnSubFailed2250107(arg1)
    print("OnSubFailed2250107")
end

function Quest22501:OnSubStart2250108(arg1)
    print("OnSubStart2250108")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250108(arg1)
    local questVar = self:GetQuestVar(2250101, 1)
    self:UpdateQuestLikingBar(questVar, false)
    self:SetQuestVar(2250101, 1, questVar)
end

function Quest22501:OnSubFailed2250108(arg1)
    print("OnSubFailed2250108")
end

function Quest22501:OnSubStart2250109(arg1)
    print("OnSubStart2250109")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250109(arg1)
    local n = self:GetQuestVar(2250101, 1) + 20
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(2250101, 1, n)
end

function Quest22501:OnSubFailed2250109(arg1)
    print("OnSubFailed2250109")
end

function Quest22501:OnSubStart2250110(arg1)
    print("OnSubStart2250110")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250110(arg1)
    local n = self:GetQuestVar(2250101, 1) - 20
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(2250101, 1, n)
end

function Quest22501:OnSubFailed2250110(arg1)
    print("OnSubFailed2250110")
end

function Quest22501:OnSubStart2250111(arg1)
    print("OnSubStart2250111")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250111(arg1)
    local questVar = self:GetQuestVar(2250101, 1)
    self:UpdateQuestLikingBar(questVar, false)
    self:SetQuestVar(2250101, 1, questVar)
end

function Quest22501:OnSubFailed2250111(arg1)
    print("OnSubFailed2250111")
end

function Quest22501:OnSubStart2250124(arg1)
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
    local questVar = self:GetQuestVar(2250101, 1)
    self:SetQuestVar(2250101, 2, questVar)
end

function Quest22501:OnSubFinish2250124(arg1)
    print("OnSubFinish2250124")
end

function Quest22501:OnSubFailed2250124(arg1)
    print("OnSubFailed2250124")
end

function Quest22501:OnSubStart2250112(arg1)
    print("OnSubStart2250112")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250112(arg1)
    print("OnSubFinish2250112")
    self:HideQuestLikingBar()
end

function Quest22501:OnSubFailed2250112(arg1)
    print("OnSubFailed2250112")
end

function Quest22501:OnSubStart2250113(arg1)
    print("OnSubStart2250113")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250113(arg1)
    print("OnSubFinish2250113")
    self:HideQuestLikingBar()
end

function Quest22501:OnSubFailed2250113(arg1)
    print("OnSubFailed2250113")
end

function Quest22501:OnSubStart2250114(arg1)
    print("OnSubStart2250114")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250114(arg1)
    print("OnSubFinish2250114")
end

function Quest22501:OnSubFailed2250114(arg1)
    print("OnSubFailed2250114")
end

function Quest22501:OnSubStart2250115(arg1)
    print("OnSubStart2250115")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250115(arg1)
    print("OnSubFinish2250115")
end

function Quest22501:OnSubFailed2250115(arg1)
    print("OnSubFailed2250115")
end

function Quest22501:OnSubStart2250116(arg1)
    print("OnSubStart2250116")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250116(arg1)
    print("OnSubFinish2250116")
end

function Quest22501:OnSubFailed2250116(arg1)
    print("OnSubFailed2250116")
end

function Quest22501:OnSubStart2250117(arg1)
    print("OnSubStart2250117")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250117(arg1)
    print("OnSubFinish2250117")
end

function Quest22501:OnSubFailed2250117(arg1)
    print("OnSubFailed2250117")
end

function Quest22501:OnSubStart2250118(arg1)
    print("OnSubStart2250118")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250118(arg1)
    print("OnSubFinish2250118")
end

function Quest22501:OnSubFailed2250118(arg1)
    print("OnSubFailed2250118")
end

function Quest22501:OnSubStart2250119(arg1)
    print("OnSubStart2250119")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250119(arg1)
    print("OnSubFinish2250119")
end

function Quest22501:OnSubFailed2250119(arg1)
    print("OnSubFailed2250119")
end

function Quest22501:OnSubStart2250120(arg1)
    print("OnSubStart2250120")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250120(arg1)
    print("OnSubFinish2250120")
end

function Quest22501:OnSubFailed2250120(arg1)
    print("OnSubFailed2250120")
end

function Quest22501:OnSubStart2250121(arg1)
    print("OnSubStart2250121")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250121(arg1)
    print("OnSubFinish2250121")
end

function Quest22501:OnSubFailed2250121(arg1)
    print("OnSubFailed2250121")
end

function Quest22501:OnSubStart2250122(arg1)
    print("OnSubStart2250122")
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250122(arg1)
    print("OnSubFinish2250122")
end

function Quest22501:OnSubFailed2250122(arg1)
    print("OnSubFailed2250122")
end

function Quest22501:OnSubStart2250123(arg1)
    self:ShowBlackScreen(0.5, 1, 0.5, self.qingzhou, self.qingzhouwalk, nil, "")
    self:CreateSpeechBubbleTask(npcs.Npc220501Data2.id, 225012501, 3, true, 4, 5)
    self:NotifyTo("Npc2205", 1, true)
end

function Quest22501:OnSubFinish2250123(arg1)
    print("OnSubFinish2250123")
    self:ShowBlackScreen(0.5, 2, 0.5, self.destroyqingzhou, nil, nil, "")
end

function Quest22501:OnSubFailed2250123(arg1)
    print("OnSubFailed2250123")
end

function Quest22501:OnSubStart2250125(arg1)
    print("OnSubStart2250125")
    self:ActionSafeCall(self.interaction)
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250125(arg1)
    print("OnSubFinish2250125")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroyqingzhou, nil, nil, "")
end

function Quest22501:OnSubFailed2250125(arg1)
    print("OnSubFailed2250125")
end

function Quest22501:OnSubStart2250126(arg1)
    print("OnSubStart2250126")
    self:ActionSafeCall(self.interaction)
    self:NotifyTo("Npc2205", 1, true)
    self:ClearSpeechBubbleTask()
end

function Quest22501:OnSubFinish2250126(arg1)
    print("OnSubFinish2250126")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroyqingzhou, nil, nil, "")
end

function Quest22501:OnSubFailed2250126(arg1)
    print("OnSubFailed2250126")
end

return Quest22501
