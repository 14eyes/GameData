require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest381 = class("Quest381", QuestActorProxy)
Quest381.defaultAlias = "Quest381"
local clientData
local subIDs
local qinData
local dilucData
local paimonData

function Quest381:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    qinData = clientData.QinData
    dilucData = clientData.DilucData
    paimonData = clientData.PaimonData
end

function Quest381:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38101"] = self.OnSubStart38101
    self.subStartHandlers["38102"] = self.OnSubStart38102
    self.subStartHandlers["38103"] = self.OnSubStart38103
    self.subStartHandlers["38104"] = self.OnSubStart38104
    self.subStartHandlers["38105"] = self.OnSubStart38105
end

function Quest381:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38101"] = self.OnSubFinish38101
    self.subFinishHandlers["38102"] = self.OnSubFinish38102
    self.subFinishHandlers["38103"] = self.OnSubFinish38103
    self.subFinishHandlers["38104"] = self.OnSubFinish38104
    self.subFinishHandlers["38105"] = self.OnSubFinish38105
end

function Quest381:OnSubStart38101(arg1)
    print("38101 start:...")
    actorMgr:CreateActorWithPos("Q381Trigger", "Actor/Gadget/Q381Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q381DragonTill").pos, sceneData:GetDummyPoint(3, "Q381DragonTill").rot, true, false)
end

function Quest381:OnSubStart38102(arg1)
    print("38102 start:...")
end

function Quest381:OnSubStart38103(arg1)
    print("38103 start:...")
end

function Quest381:OnSubStart38104(arg1)
    print("38104 start:...")
end

function Quest381:OnSubStart38105(arg1)
    print("38105 start:...")
    self:CallDelay(1.5, self.EnterDialog)
end

function Quest381:CreateNPC()
    self:CreateQuestNpcById(38105, paimonData.PaimonID)
    self:CreateQuestNpcById(38105, dilucData.DilucID)
    self:CreateQuestNpcById(38105, qinData.QinID)
    self:RequestInteraction(qinData.Qin)
end

function Quest381:StartDialog()
    self:RequestInteraction(qinData.Qin)
end

function Quest381:EnterDialog()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.CreateNPC, nil, questNpcCreateTask)
end

function Quest381:OnSubFinish38101(arg1)
    print("OnFinished 38101")
end

function Quest381:OnSubFinish38102(arg1)
    print("OnFinished 38102")
end

function Quest381:OnSubFinish38103(arg1)
    print("OnFinished 38103")
end

function Quest381:OnSubFinish38104(arg1)
    print("OnFinished 38104")
end

function Quest381:OnSubFinish38105(arg1)
    print("OnFinished 38105")
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
end

function Quest381:DestroyNPC()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(dilucData.Diluc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest381:TellStory(arg1)
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:CallDelay(1.3, self.StartStory)
end

function Quest381:StartStory(arg1)
    self:NarratorOnlyTaskLegacy(clientData.StoryNarrator, nil, "Story")
end

function Quest381:ExitDialog()
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.DestroyNPC, self.TellStory)
end

function Quest381:Start() end
function Quest381:OnDestroy() end
return Quest381
