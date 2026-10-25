require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10500 = class("Quest10500", QuestActorProxy)
Quest10500.defaultAlias = "Quest10500"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest10500:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest10500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1050007"] = self.OnSubStart1050007,
        ["1050001"] = self.OnSubStart1050001,
        ["1050002"] = self.OnSubStart1050002,
        ["1050003"] = self.OnSubStart1050003,
        ["1050004"] = self.OnSubStart1050004,
        ["1050005"] = self.OnSubStart1050005,
        ["1050008"] = self.OnSubStart1050008,
        ["1050006"] = self.OnSubStart1050006
    }
end

function Quest10500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1050007"] = self.OnSubFinish1050007,
        ["1050001"] = self.OnSubFinish1050001,
        ["1050002"] = self.OnSubFinish1050002,
        ["1050003"] = self.OnSubFinish1050003,
        ["1050004"] = self.OnSubFinish1050004,
        ["1050005"] = self.OnSubFinish1050005,
        ["1050008"] = self.OnSubFinish1050008,
        ["1050006"] = self.OnSubFinish1050006
    }
end

function Quest10500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1050007"] = self.OnSubFailed1050007,
        ["1050001"] = self.OnSubFailed1050001,
        ["1050002"] = self.OnSubFailed1050002,
        ["1050003"] = self.OnSubFailed1050003,
        ["1050004"] = self.OnSubFailed1050004,
        ["1050005"] = self.OnSubFailed1050005,
        ["1050008"] = self.OnSubFailed1050008,
        ["1050006"] = self.OnSubFailed1050006
    }
end

function Quest10500:Start()
    print("Start")
end

function Quest10500:OnDestroy()
    print("OnDestroy")
end

function Quest10500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10500:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10500:FinishQuest1050001()
    print("FinishQuest1050001")
    self:FinishQuestID(false, 1050001)
    self:ShowBlackScreen(0, 0.5, 0, nil, nil, nil, "")
end

function Quest10500:Narrator1050003()
    print("Narrator1050003")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1)
end

function Quest10500:OnSubStart1050007(arg1)
    print("OnSubStart1050007")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10095Data.alias):DoFreeStyle(1190, false)
end

function Quest10500:OnSubFinish1050007(arg1)
    print("OnSubFinish1050007")
end

function Quest10500:OnSubFailed1050007(arg1)
    print("OnSubFailed1050007")
end

function Quest10500:OnSubStart1050001(arg1)
    print("OnSubStart1050001")
    self:PlayCutsceneIndex("1050001", self.FinishQuest1050001)
end

function Quest10500:OnSubFinish1050001(arg1)
    print("OnSubFinish1050001")
end

function Quest10500:OnSubFailed1050001(arg1)
    print("OnSubFailed1050001")
end

function Quest10500:OnSubStart1050002(arg1)
    print("OnSubStart1050002")
    self:RequestInteraction(npcs.Npc10095Data.alias)
end

function Quest10500:OnSubFinish1050002(arg1)
    print("OnSubFinish1050002")
    self:DestroyQuestNpcActor(npcs.Npc10095Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(2, self.Narrator1050003)
end

function Quest10500:OnSubFailed1050002(arg1)
    print("OnSubFailed1050002")
end

function Quest10500:OnSubStart1050003(arg1)
    print("OnSubStart1050003")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo("Npc2430", 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc243001Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc243001Data.alias):DoFreeStyle(1050)
    end)
end

function Quest10500:OnSubFinish1050003(arg1)
    print("OnSubFinish1050003")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Quest10500:OnSubFailed1050003(arg1)
    print("OnSubFailed1050003")
end

function Quest10500:OnSubStart1050004(arg1)
    print("OnSubStart1050004")
    self:NotifyTo("Npc2430", 1, true)
end

function Quest10500:OnSubFinish1050004(arg1)
    print("OnSubFinish1050004")
end

function Quest10500:OnSubFailed1050004(arg1)
    print("OnSubFailed1050004")
end

function Quest10500:OnSubStart1050005(arg1)
    print("OnSubStart1050005")
    self:NotifyTo("Npc2430", 1, true)
end

function Quest10500:OnSubFinish1050005(arg1)
    print("OnSubFinish1050005")
end

function Quest10500:OnSubFailed1050005(arg1)
    print("OnSubFailed1050005")
end

function Quest10500:OnSubStart1050008(arg1)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.PaimonData.alias})
        self:ShowBlackScreen(0.5, 1.0, 0, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
            arg1_2:RequestInteraction(npcs.PaimonData.alias)
            globalActor:EnablePlayerInput(true)
        end, nil, questNpcCreateTask)
    end)

    self.NotifyTo(self, "Npc2430", 1, true)
end

function Quest10500:OnSubFinish1050008(arg1)
    print("OnSubFinish1050008")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10500:OnSubFailed1050008(arg1)
    print("OnSubFailed1050008")
end

function Quest10500:OnSubStart1050006(arg1)
    print("OnSubStart1050006")
    self:NotifyTo("Npc2430", 1, true)
end

function Quest10500:OnSubFinish1050006(arg1)
    print("OnSubFinish1050006")
    self:DestroyQuestNpcActor(npcs.Npc10095Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc243001Data.alias, 3)
    self:NotifyTo("Npc2430", 0, true)
end

function Quest10500:OnSubFailed1050006(arg1)
    print("OnSubFailed1050006")
end

return Quest10500
