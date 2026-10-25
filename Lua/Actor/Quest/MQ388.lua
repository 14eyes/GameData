require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest388 = class("Quest388", QuestActorProxy)
Quest388.defaultAlias = "Quest388"
local clientData
local wendyData
local qinData
local dilucData
local narratorData

function Quest388:OnDataLoaded()
    clientData = self.clientData
    wendyData = clientData.WendyData
    qinData = clientData.QinData
    dilucData = clientData.DilucData
    narratorData = clientData.NarratorData
end

function Quest388:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38801"] = self.OnSubStart38801
    self.subStartHandlers["38802"] = self.OnSubStart38802
    self.subStartHandlers["38803"] = self.OnSubStart38803
    self.subStartHandlers["38804"] = self.OnSubStart38804
    self.subStartHandlers["38805"] = self.OnSubStart38805
    self.subStartHandlers["38806"] = self.OnSubStart38806
end

function Quest388:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38801"] = self.OnSubFinish38801
    self.subFinishHandlers["38802"] = self.OnSubFinish38802
    self.subFinishHandlers["38803"] = self.OnSubFinish38803
    self.subFinishHandlers["38804"] = self.OnSubFinish38804
    self.subFinishHandlers["38805"] = self.OnSubFinish38805
    self.subFinishHandlers["38806"] = self.OnSubFinish38806
end

function Quest388:Narrator38802()
    self:NarratorOnlyTaskLegacy(narratorData.Story1)
end

function Quest388:NPCdis38802()
    local questNpcActor = self:GetQuestNpcActor(qinData.Qin)
    local v = self:GetQuestNpcActor(dilucData.Diluc)
    local questNpcActor2 = self:GetQuestNpcActor(wendyData.Wendy)
    local questNpcActor3 = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    if v ~= nil then
        v:Destroy(false)
    end

    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    if questNpcActor3 ~= nil then
        questNpcActor3:DestroyWithDisappear(false)
    end
end

function Quest388:OnSubStart38801(arg1)
    print("38801 start:...")
end

function Quest388:OnSubStart38802(arg1)
    print("38802 start: BlackScreen & Destroy NPC & Narrator")
    self:ActionSafeCall(function(arg1)
        arg1:Narrator38802()
        arg1:NPCdis38802()
    end)
end

function Quest388:OnSubStart38803(arg1)
    print("38803 start:...")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, wendyData.WendyID)
            arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
            arg1_2:CreateQuestNpc(arg1, qinData.QinID)
            arg1_2:RequestInteraction(wendyData.Wendy)
        end, nil, questNpcCreateTask)
    end)
end

function Quest388:OnSubStart38804(arg1)
    print("38804 start:...")
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteraction(wendyData.Wendy)
    end)
end

function Quest388:OnSubStart38805(arg1)
    print("38804 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest388:OnSubStart38806(arg1)
    print("38806 start:...")
end

function Quest388:OnSubFinish38801(arg1)
    print("38801 finish:...")
end

function Quest388:OnSubFinish38802(arg1)
    print("38802 finish: stop narrator")
    self:ClearNarratorTask()
end

function Quest388:OnSubFinish38803(arg1)
    print("OnFinished 38803")
end

function Quest388:OnSubFinish38804(arg1)
    print("OnFinished 38804")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        local v = arg1:GetQuestNpcActor(wendyData.Wendy)
        local questNpcActor2 = arg1:GetQuestNpcActor(dilucData.Diluc)
        local questNpcActor3 = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        if v ~= nil then
            v:Destroy(false)
        end

        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end
    end)
end

function Quest388:OnSubFinish38805(arg1)
    print("OnFinished 38805")
end

function Quest388:OnSubFinish38806(arg1)
    print("OnFinished 38806:Creat NPC")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, wendyData.WendyID)
        arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
        arg1_2:CreateQuestNpc(arg1, qinData.QinID)
        arg1_2:RequestInteraction(wendyData.Wendy)
    end, nil, questNpcCreateTask)
end

function Quest388:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk38801:Finishi Quest 38801")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    elseif arg1 == 2 then
        print("Talk38803:Finishi Quest 38803")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            self:CallDelay(5.5, function(arg1)
                actor:FinishQuest(false, nil)
            end)
        end
    elseif arg1 == 3 then
        print("Talk38803 Finish2:NPC walk & dis")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
        local v = self:GetQuestNpcActor(dilucData.Diluc)
        local questNpcActor2 = self:GetQuestNpcActor(qinData.Qin)
        if questNpcActor2 ~= nil then
            questNpcActor2.WalkTo(questNpcActor2, qinData.dis1Pos)
            self:CallDelay(2.0, function(arg1)
                questNpcActor2:SetVisible(false)
            end)
        end

        if questNpcActor ~= nil then
            questNpcActor.WalkTo(questNpcActor, wendyData.dis1Pos)
            self:CallDelay(2.0, function(arg1)
                questNpcActor:SetVisible(false)
            end)
        end

        if v ~= nil then
            v.WalkTo(v, dilucData.dis1Pos)
            self:CallDelay(2.0, function(arg1)
                v:SetVisible(false)
            end)
        end

        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end
end

function Quest388:Start() end
function Quest388:OnDestroy() end
return Quest388
