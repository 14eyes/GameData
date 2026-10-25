require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40001 = class("Quest40001", QuestActorProxy)
Quest40001.defaultAlias = "Quest40001"
local clientData
local playerData
local paimonData
local boLaiData
local narratorData

function Quest40001:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    boLaiData = clientData.BoLaiData
    narratorData = clientData.NarratorData
end

function Quest40001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000100"] = self.OnSubStart4000100
    self.subStartHandlers["4000101"] = self.OnSubStart4000101
    self.subStartHandlers["4000102"] = self.OnSubStart4000102
    self.subStartHandlers["4000103"] = self.OnSubStart4000103
    self.subStartHandlers["4000104"] = self.OnSubStart4000104
    self.subStartHandlers["4000105"] = self.OnSubStart4000105
    self.subStartHandlers["4000106"] = self.OnSubStart4000106
    self.subStartHandlers["4000107"] = self.OnSubStart4000107
    self.subStartHandlers["4000108"] = self.OnSubStart4000108
    self.subStartHandlers["4000109"] = self.OnSubStart4000109
    self.subStartHandlers["4000110"] = self.OnSubStart4000110
    self.subStartHandlers["4000111"] = self.OnSubStart4000111
end

function Quest40001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000100"] = self.OnSubFinish4000100
    self.subFinishHandlers["4000101"] = self.OnSubFinish4000101
    self.subFinishHandlers["4000102"] = self.OnSubFinish4000102
    self.subFinishHandlers["4000103"] = self.OnSubFinish4000103
    self.subFinishHandlers["4000104"] = self.OnSubFinish4000104
    self.subFinishHandlers["4000105"] = self.OnSubFinish4000105
    self.subFinishHandlers["4000106"] = self.OnSubFinish4000106
    self.subFinishHandlers["4000107"] = self.OnSubFinish4000107
    self.subFinishHandlers["4000108"] = self.OnSubFinish4000108
    self.subFinishHandlers["4000109"] = self.OnSubFinish4000109
    self.subFinishHandlers["4000110"] = self.OnSubFinish4000110
    self.subFinishHandlers["4000111"] = self.OnSubFinish4000111
end

function Quest40001:NarratorStory1()
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskLegacy(narratorData.Story1, arg1.NarratorStory2, "Story")
    end)
end

function Quest40001:NarratorStory2()
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskLegacy(narratorData.Story2, arg1.NarratorStory3, "Story")
    end)
end

function Quest40001:NarratorStory3()
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskLegacy(narratorData.Story3, arg1.NarratorStory4, "Story")
    end)
end

function Quest40001:NarratorStory4()
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskLegacy(narratorData.Story4, nil, "Story")
    end)
end

function Quest40001:OnSubStart4000100(arg1)
    print("4000100 OnStart")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest40001:OnSubStart4000111(arg1)
    print("4000111 OnStart")
    globalActor:StartGuide("GuideSeaLamp")
end

function Quest40001:OnSubFinish4000100(arg1)
    print("4000101 OnFinished")
    self:NarratorStory1()
end

function Quest40001:OnSubFinish4000101(arg1)
    print("4000101 OnFinished")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({paimonData.Alias})
    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
    end, questNpcCreateTask)

    self:ClearNarratorTask()
    self:UnCallFunc(self.NarratorStory1)
    self:UnCallFunc(self.NarratorStory2)
    self:UnCallFunc(self.NarratorStory3)
    self:UnCallFunc(self.NarratorStory4)
end

function Quest40001:OnSubFinish4000102(arg1)
    print("4000102 OnFinished")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        local v = arg1:GetQuestNpcActor(boLaiData.Alias)
        if v ~= nil then
            v:Destroy(false)
        end
    end)
end

function Quest40001:OnSubFinish4000110(arg1)
    print("4000110 OnFinished")
end

function Quest40001:OnSubFinish4000103(arg1)
    print("4000103 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest40001:OnSubFinish4000104(arg1)
    print("4000104 OnFinished")
end

function Quest40001:OnSubFinish4000105(arg1)
    print("4000105 OnFinished")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(252)
    end)
end

function Quest40001:OnSubFinish4000107(arg1)
    print("4000101 OnFinished")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(narratorData.Story5, nil, "Story")
    end)
end

function Quest40001:Start() end
function Quest40001:OnDestroy() end
return Quest40001
