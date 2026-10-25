require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest377 = class("Quest377", QuestActorProxy)
Quest377.defaultAlias = "Quest377"
local clientData
local NPCUtil = require("Actor/Npc/NPCUtil")

local subIDs
local wendyData
local dilucData
local qinData

function Quest377:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    qinData = clientData.QinData
end

function Quest377:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37701"] = self.OnSubStart37701
    self.subStartHandlers["37702"] = self.OnSubStart37702
    self.subStartHandlers["37703"] = self.OnSubStart37703
    self.subStartHandlers["37704"] = self.OnSubStart37704
    self.subStartHandlers["37705"] = self.OnSubStart37705
    self.subStartHandlers["37706"] = self.OnSubStart37706
end

function Quest377:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37701"] = self.OnSubFinish37701
    self.subFinishHandlers["37702"] = self.OnSubFinish37702
    self.subFinishHandlers["37703"] = self.OnSubFinish37703
    self.subFinishHandlers["37704"] = self.OnSubFinish37704
    self.subFinishHandlers["37705"] = self.OnSubFinish37705
    self.subFinishHandlers["37706"] = self.OnSubFinish37706
end

function Quest377:OnSubStart37701(arg1)
    print("37701 start:...")
end

function Quest377:OnSubStart37702(arg1)
    print("37702 start ")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, dilucData.DilucID)
end

function Quest377:OnSubStart37703(arg1)
    print("37703 start:...")
end

function Quest377:OnSubStart37704(arg1)
    print("37704 start:...")
    local actorWithPos = actorMgr:CreateActorWithPos("Q377Trigger", "Actor/Gadget/Q377Trigger", 70900002, 0, dilucData.bornPos, dilucData.bornDir, true, false, 1009)
end

function Quest377:OnSubStart37705(arg1)
    print("37705 start: hide NPC")
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest377:OnSubStart37706(arg1)
    print("37706 start: hide NPC")
    local mengdeNpcListPublic = NPCUtil.GetMengdeNpcListPublic()
    for i = 1, #mengdeNpcListPublic do
        self:NotifyTo(mengdeNpcListPublic[i], NPCUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest377:OnSubFinish37701(arg1)
    print("OnFinished 37701")
end

function Quest377:OnSubFinish37702(arg1)
    print("OnFinished 37702")
end

function Quest377:OnSubFinish37703(arg1)
    print("OnFinished 37703")
end

function Quest377:OnSubFinish37704(arg1)
    print("OnFinished 37704")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({qinData.Qin})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        arg1:CreateQuestNpcById(37705, qinData.QinID)
        arg1:RequestInteraction(dilucData.Diluc)
    end, nil, questNpcCreateTask)

    local actor = actorMgr:GetActor("Q377Trigger")
    if actor ~= nil then
        actor:Destroy(false)
    end
end

function Quest377:OnSubFinish37705(arg1)
    print("OnFinished 37705")
    self:CallDelay(0.3, function(arg1)
        arg1:RequestInteraction(dilucData.Diluc)
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest377:OnSubFinish37706(arg1)
    print("OnFinished 37706")
    self:ActionSafeCall(self.DestroyDiluc)
end

function Quest377:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Now Qin Leave")
        local questNpcActor = self:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(qinData.desPos, Quest377.QinVanish)
        end
    elseif arg1 == 101 then
        print("Now Stop Talking")
    elseif arg1 == 102 then
        print("Now Start Talking")
    end
end

function Quest377:Interaction()
    self:RequestInteraction(dilucData.Diluc)
end

function Quest377:DestroyDiluc()
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(dilucData.Diluc)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end
    end, self.TellStory)
end

function Quest377:TellStory(arg1)
    self:CallDelay(1.5, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow, nil, "Story")
    end)
end

function Quest377:QinVanish()
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:SetVisible(false)
        end
    end)
end

function Quest377:Start() end
function Quest377:OnDestroy() end
return Quest377
