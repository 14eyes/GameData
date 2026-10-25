require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40007 = class("Quest40007", QuestActorProxy)
Quest40007.defaultAlias = "Quest40007"
local Q40007ClientConfig = require("Quest/Client/Q40007ClientConfig")

local thiefData = Q40007ClientConfig.ThiefData

function Quest40007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000701"] = self.OnSubStart4000701
    self.subStartHandlers["4000702"] = self.OnSubStart4000702
    self.subStartHandlers["4000703"] = self.OnSubStart4000703
    self.subStartHandlers["4000704"] = self.OnSubStart4000704
end

function Quest40007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000701"] = self.OnSubFinish4000701
    self.subFinishHandlers["4000702"] = self.OnSubFinish4000702
    self.subFinishHandlers["4000703"] = self.OnSubFinish4000703
    self.subFinishHandlers["4000704"] = self.OnSubFinish4000704
end

function Quest40007:OnSubStart4000703(arg1)
    print("4000703 OnStart")
    self:CreateQuestNpc(arg1, thiefData.ID)
    local actor = actorMgr:GetActor(Q40007ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4000703)
    end
end

function Quest40007:OnSubStart4000701(arg1)
    print("4000701 OnStart")
    actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, thiefData.BornPos, thiefData.BornDir, true)
    local questNpcActor = self:GetQuestNpcActor(thiefData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1280)
    else
        self:CreateQuestNpc(arg1, thiefData.ID)
        self:GetQuestNpcActor(thiefData.Alias):DoFreeStyle(1280)
    end
end

function Quest40007:OnSubFinish4000701(arg1)
    print("4000701 OnFinish")
    local actor = actorMgr:GetActor("Q40007Trigger1")
    if actor ~= nil then
        actor:Destroy(false)
    end

    local questNpcActor = self.GetQuestNpcActor(self, thiefData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:EnableInteraction(false)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:WalkToTask(thiefData.BornPos2, function(arg1, arg2)
            actorMgr:CreateActorWithPos("Q40007Trigger2", "Actor/Gadget/Q40007Trigger2", 70900002, 0, thiefData.BornPos2, thiefData.BornDir2, true)
            self:CallDelay(1, function(arg1_2)
                arg1:DoFreeStyle(1280)
            end)

            arg1.EnableInteraction(arg1, true)
        end)
    end
end

function Quest40007:OnSubFinish4000702(arg1)
    print("4000702 OnFinish")
    local actor = actorMgr:GetActor("Q40007Trigger2")
    if actor ~= nil then
        actor:Destroy(false)
    end

    local questNpcActor = self.GetQuestNpcActor(self, thiefData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:EnableInteraction(false)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:WalkToTask(thiefData.BornPos, function(arg1, arg2)
            actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, thiefData.BornPos, thiefData.BornDir, true)
            self:CallDelay(1, function(arg1_2)
                arg1:DoFreeStyle(1280)
            end)

            arg1.EnableInteraction(arg1, true)
        end)
    end
end

function Quest40007:OnSubFinish4000704(arg1)
    print("4000704 OnFinish")
    local actor = actorMgr:GetActor("Q40007Trigger1")
    if actor ~= nil then
        actor:Destroy(false)
    end

    local v = actorMgr:GetActor("Q40007Trigger2")
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor = self:GetQuestNpcActor(thiefData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local actor2 = actorMgr:GetActor(Q40007ClientConfig.ActorAlias)
    if actor2 ~= nil then
        actor2:FinishQuestID(true, 4000701)
        actor2:FinishQuestID(true, 4000702)
    end
end

function Quest40007:InvokeOnInteraction(arg1)
    local actor = actorMgr:GetActor(Q40007ClientConfig.ActorAlias)
    if arg1 == 1 then
        print("Invoke quest finish")
        local v = actorMgr:GetActor(Q40007ClientConfig.ActorAlias)
        if v ~= nil then
            if self:GetSubQuestState(4000701) == 2 then
                v:FinishQuestID(false, 4000701)
            else
                if self:GetSubQuestState(4000702) == 2 then
                    v:FinishQuestID(false, 4000702)
                end
            end
        end

        self:ActionSafeCall(function(arg1)
            local questNpcActor = actor:GetQuestNpcActor("Paimon")
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end
end

function Quest40007:Start() end
function Quest40007:OnDestroy() end
return Quest40007
