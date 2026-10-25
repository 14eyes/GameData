require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11001 = class("Quest11001", QuestActorProxy)
Quest11001.defaultAlias = "Quest11001"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 11001
local paimonData
local xianglingData
local draffData
local brookData

function Quest11001:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 11001
    paimonData = clientData.PaimonData
    xianglingData = clientData.XianglingData
    draffData = clientData.DraffData
    brookData = clientData.BrookData
end

function Quest11001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100101"] = self.OnSubStart1100101
    self.subStartHandlers["1100102"] = self.OnSubStart1100102
    self.subStartHandlers["1100103"] = self.OnSubStart1100103
    self.subStartHandlers["1100104"] = self.OnSubStart1100104
end

function Quest11001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100101"] = self.OnSubFinish1100101
    self.subFinishHandlers["1100102"] = self.OnSubFinish1100102
    self.subFinishHandlers["1100103"] = self.OnSubFinish1100103
    self.subFinishHandlers["1100104"] = self.OnSubFinish1100104
end

function Quest11001:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11001:PaimonDelay()
    self:PaimonDis()
end

function Quest11001:Finish03()
    print("hanshu  Fiiiiiiiiiiiiiiiiiniiiiiiiiiish 03")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("Fiiiiiiiiiiiiiiiiiniiiiiiiiiish 03")
        actor:FinishQuestID(false, 1100103)
    end

    self:ClearNpcSpeechBubble(1012)
end

function Quest11001:OnSubStart1100101(arg1)
    print("1100101 start:...")
    actorMgr:CreateActorWithPos("Q1100101Trigger", "Actor/Gadget/Q1100101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100101Draff").pos, sceneData:GetDummyPoint(3, "Q1100101Draff").rot, true, false)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1090)
        arg1_2:CreateQuestNpc(arg1, draffData.ID)
        arg1_2:GetQuestNpcActor(draffData.Alias):DoFreeStyle(1180)
    end)
end

function Quest11001:OnSubStart1100102(arg1)
    print("1100102 start:...")
    self:CreateQuestNpc(arg1, brookData.ID)
    self:GetQuestNpcActor(brookData.Alias):DoFreeStyle(1120)
end

function Quest11001:OnSubStart1100103(arg1)
    print("1100103 start:...")
    actorMgr:CreateActorWithPos("Q1100103Trigger", "Actor/Gadget/Q1100103Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100103XLL1").pos, sceneData:GetDummyPoint(3, "Q1100103XLL1").rot, true, false)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(xianglingData.Alias)
    if questNpcActor ~= nil then
        questNpcActor.DoFreeStateTrigger(questNpcActor)
        questNpcActor.WalkToTask(questNpcActor, clientData.XianglingData.LeavePos, function(arg1)
            questNpcActor:WalkToTask(clientData.XianglingData.LeavePos03, function(arg1)
                if actor ~= nil then
                    print("Bubble01")
                    actor:CreateSpeechBubbleTask(1012, 110010303, 2, false, 0, 0)
                end

                arg1:SayDialogAudio(110010303)
                arg1:CallDelay(3, function(arg1)
                    print("second stage_______________")
                    if actor ~= nil then
                        print("Bubble02")
                        actor:ClearSpeechBubbleTask()
                        actor:CreateSpeechBubbleTask(1012, 110010304, 2, false, 0, 0)
                    end

                    arg1:SayDialogAudio(110010304)
                    questNpcActor:WalkToTask(clientData.XianglingData.BornPos03, function(arg1)
                        print("Fiiiiiiiiiiiiiiiiiniiiiiiiiiish 03")
                        if actor ~= nil then
                            print("clear Bubble")
                            actor:FinishQuestID(false, 1100103)
                            actor:ClearSpeechBubbleTask()
                        end
                    end)
                end)
            end)
        end)
    end

    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow1)
end

function Quest11001:OnSubStart1100104(arg1)
    print("1100104 start:...")
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, xianglingData.ID)
    self:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
    self:CreateQuestNpc(arg1, brookData.ID)
    local questNpcActor = self:GetQuestNpcActor(brookData.Alias)
end

function Quest11001:OnSubFinish1100101(arg1) end

function Quest11001:OnSubFinish1100102(arg1)
    print("OnFinished 1100102")
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11001:OnSubFinish1100103(arg1)
    print("OnFinished 1100103")
end

function Quest11001:OnSubFinish1100104(arg1)
    print("OnFinished 1100104")
    self:NotifyTo("Npc1537", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1541", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.PaimonDelay)
    if self:GetQuestNpcActor(draffData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(draffData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(brookData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(brookData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end
end

function Quest11001:Start() end
function Quest11001:OnDestroy() end
return Quest11001
