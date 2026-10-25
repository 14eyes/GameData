require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest380 = class("Quest380", QuestActorProxy)
Quest380.defaultAlias = "Quest380"
local clientData
local subIDs
local qinData
local dilucData
local paimonData
local treasureData

function Quest380:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    qinData = clientData.QinData
    dilucData = clientData.DilucData
    paimonData = clientData.PaimonData
    treasureData = clientData.TreasureData
end

function Quest380:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38001"] = self.OnSubStart38001
    self.subStartHandlers["38002"] = self.OnSubStart38002
    self.subStartHandlers["38003"] = self.OnSubStart38003
    self.subStartHandlers["38004"] = self.OnSubStart38004
end

function Quest380:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38001"] = self.OnSubFinish38001
    self.subFinishHandlers["38002"] = self.OnSubFinish38002
    self.subFinishHandlers["38003"] = self.OnSubFinish38003
    self.subFinishHandlers["38004"] = self.OnSubFinish38004
end

function Quest380:OnSubStart38001(arg1)
    print("38001 start:...")
    actorMgr:CreateActorWithPos("Q380Trigger", "Actor/Gadget/Q380TriggerArea", 70900002, 0, sceneData:GetDummyPoint(3, "DUMMY_POS 3003390").pos, sceneData:GetDummyPoint(3, "DUMMY_POS 3003390").rot, true, false)
end

function Quest380:OnSubStart38002(arg1)
    print("38002 start:...")
end

function Quest380:OnSubStart38003(arg1)
    print("38003 start:...")
    self:SpawnChestWithPos(arg1, 70211021, 1, treasureData.bornPos, treasureData.bornDir, "Chest380")
end

function Quest380:OnSubStart38004(arg1)
    print("38004 start:...")
    self:CallDelay(1.5, self.EnterDialog)
end

function Quest380:CreateNPC()
    self:CreateQuestNpcById(38004, paimonData.PaimonID)
    self:CreateQuestNpcById(38004, dilucData.DilucID)
    self:CreateQuestNpcById(38004, qinData.QinID)
    self:RequestInteraction(qinData.Qin)
end

function Quest380:StartDialog()
    self:RequestInteraction(qinData.Qin)
end

function Quest380:EnterDialog()
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.CreateNPC, nil, questNpcCreateTask)
end

function Quest380:OnSubFinish38001(arg1)
    print("OnFinished 38001")
end

function Quest380:OnSubFinish38002(arg1)
    print("OnFinished 38002")
end

function Quest380:OnSubFinish38003(arg1)
    print("OnFinished 38002")
end

function Quest380:OnSubFinish38004(arg1)
    print("OnFinished 38004")
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
end

function Quest380:DestroyNPC()
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

function Quest380:TellStory(arg1)
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:CallDelay(1.5, self.StartStory)
end

function Quest380:StartStory(arg1)
    self:NarratorOnlyTaskLegacy(clientData.StoryNarrator, nil, "Story")
end

function Quest380:ExitDialog() end
function Quest380:Start() end
function Quest380:OnDestroy() end
return Quest380
