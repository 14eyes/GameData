require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10112 = class("Quest10112", QuestActorProxy)
Quest10112.defaultAlias = "Quest10112"
local clientData
local shareData
local npc
local jackData
local stanlyData
local paimonData
local v
local triggerData
local narratorData
local questVar
local n = 0

function Quest10112:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    npc = shareData.QuestData["1011204"].npcs[1]
    v = shareData.QuestData["1011205"].npcs[1]
    jackData = clientData.JackData
    stanlyData = clientData.StanlyData
    paimonData = clientData.PaimonData
    triggerData = clientData.TriggerData
    narratorData = clientData.NarratorData
end

function Quest10112:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1011200"] = self.OnSubStart1011200
    self.subStartHandlers["1011201"] = self.OnSubStart1011201
    self.subStartHandlers["1011202"] = self.OnSubStart1011202
    self.subStartHandlers["1011203"] = self.OnSubStart1011203
    self.subStartHandlers["1011204"] = self.OnSubStart1011204
    self.subStartHandlers["1011205"] = self.OnSubStart1011205
    self.subStartHandlers["1011206"] = self.OnSubStart1011206
    self.subStartHandlers["1011207"] = self.OnSubStart1011207
    self.subStartHandlers["1011208"] = self.OnSubStart1011208
    self.subStartHandlers["1011210"] = self.OnSubStart1011210
    self.subStartHandlers["1011211"] = self.OnSubStart1011211
    self.subStartHandlers["1011213"] = self.OnSubStart1011213
end

function Quest10112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1011200"] = self.OnSubFinish1011200
    self.subFinishHandlers["1011201"] = self.OnSubFinish1011201
    self.subFinishHandlers["1011202"] = self.OnSubFinish1011202
    self.subFinishHandlers["1011203"] = self.OnSubFinish1011203
    self.subFinishHandlers["1011204"] = self.OnSubFinish1011204
    self.subFinishHandlers["1011205"] = self.OnSubFinish1011205
    self.subFinishHandlers["1011206"] = self.OnSubFinish1011206
    self.subFinishHandlers["1011207"] = self.OnSubFinish1011207
    self.subFinishHandlers["1011208"] = self.OnSubFinish1011208
    self.subFinishHandlers["1011210"] = self.OnSubFinish1011210
    self.subFinishHandlers["1011211"] = self.OnSubFinish1011211
    self.subFinishHandlers["1011213"] = self.OnSubFinish1011213
end

function Quest10112:DestoryAllNPC()
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npc.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local questNpcActor2 = self:GetQuestNpcActor(v.alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = self:GetQuestNpcActor(jackData.alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        local questNpcActor4 = self:GetQuestNpcActor(stanlyData.alias)
        if questNpcActor4 ~= nil then
            questNpcActor4:Destroy(false)
        end

        local questNpcActor5 = self:GetQuestNpcActor("Paimon")
        if questNpcActor5 ~= nil then
            questNpcActor5:DestroyWithDisappear(false)
        end
    end)
end

function Quest10112:OnSubStart1011200(arg1)
    n = 0
    actorMgr:CreateActorWithPos(triggerData.Trigger1.alias, triggerData.Trigger1.script, triggerData.Trigger1.id, 0, triggerData.Trigger1.pos, triggerData.Trigger1.dir, true)
end

function Quest10112:OnSubFinish1011200(arg1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1011203Target").pos, 0, 3, true)
    self:NarratorOnlyTaskLegacy(narratorData.Story1)
    n = 1
end

function Quest10112:OnSubStart1011201(arg1)
    actorMgr:CreateActorWithPos(triggerData.Trigger3.alias, triggerData.Trigger3.script, triggerData.Trigger3.id, 0, triggerData.Trigger3.pos, triggerData.Trigger3.dir, true)
end

function Quest10112:OnSubStart1011202(arg1)
    if n == 0 then
        self:NarratorOnlyTaskLegacy(narratorData.Story1)
    end

    self:FinishQuestID(true, 1011200)
end

function Quest10112:OnSubStart1011204(arg1)
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npc.id, 1)
        self:RequestInteraction(npc.alias)
    end)
end

function Quest10112:OnSubFinish1011204(arg1)
    self:DestoryAllNPC()
end

function Quest10112:OnSubStart1011205(arg1)
    print("1011205 start:...")
    self:CreateQuestNpc(arg1, v.id, 1)
    actorMgr:CreateActorWithPos(triggerData.Trigger2.alias, triggerData.Trigger2.script, triggerData.Trigger2.id, 0, triggerData.Trigger2.pos, triggerData.Trigger2.dir, true)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    questVar = 0
end

function Quest10112:OnSubStart1011206(arg1)
    print("1011206 start:...")
    actorMgr:CreateActorWithPos(triggerData.Trigger4.alias, triggerData.Trigger4.script, triggerData.Trigger4.id, 0, triggerData.Trigger4.pos, triggerData.Trigger4.dir, true)
    local questNpcActor = self:GetQuestNpcActor(v.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStateTrigger()
    end

    self:HideQuestLikingBar()
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    questVar = 0
end

function Quest10112:OnSubFinish1011208(arg1)
    print("1011208 Finish:Destory NPC")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npc.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = self:GetQuestNpcActor(jackData.alias)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = self:GetQuestNpcActor(stanlyData.alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = self:GetQuestNpcActor("Paimon")
        if questNpcActor3 ~= nil then
            questNpcActor3:DestroyWithDisappear(false)
        end
    end)
end

function Quest10112:OnSubFinish1011213(arg1)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npc.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local questNpcActor2 = self:GetQuestNpcActor(v.alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:DoFreeStyle(4)
        end

        local questNpcActor3 = self:GetQuestNpcActor(jackData.alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        local questNpcActor4 = self:GetQuestNpcActor(stanlyData.alias)
        if questNpcActor4 ~= nil then
            questNpcActor4:Destroy(false)
        end

        local questNpcActor5 = self:GetQuestNpcActor("Paimon")
        if questNpcActor5 ~= nil then
            questNpcActor5:DestroyWithDisappear(false)
        end
    end)
end

function Quest10112:OnSubStart1011210(arg1)
    self.CallDelay(self, 2, function()
        self:TransmitPlayerById(arg1, 1, nil, function()
            self:RequestInteraction(v.alias)
        end)
    end)
end

function Quest10112:OnSubStart1011211(arg1)
    self:RequestInteraction(npc.alias)
end

function Quest10112:OnSubFinish1011211(arg1)
    self:DestoryAllNPC()
    local questNpcActor = self:GetQuestNpcActor("Npc1505")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest10112:OnSubFinish1011207(arg1)
    print("hide bar")
end

function Quest10112:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk1011206:First success")
        questVar = self.GetQuestVar(self, 1011206, 0)
        questVar = questVar + 50
        self.SetupQuestLikingBar(self, 10112, 10243, questVar, false, "FETTER_EXP_NAME", "View", -0.35, 0.25, 0)
        self.CallDelay(self, 1, function()
            questVar = questVar + 20
            self:UpdateQuestLikingBar(questVar, false, "FETTER_LEVEL_UP")
            self:SetQuestVar(1011206, 0, questVar)
        end)

        print("QQman motion:" .. questVar)
    end

    if arg1 == 2 then
        print("Talk1011206:First failed")
        questVar = self.GetQuestVar(self, 1011206, 0)
        questVar = questVar + 50
        self.SetupQuestLikingBar(self, 10112, 10243, questVar, false, "FETTER_EXP_NAME", "View", -0.35, 0.25, 0)
        self.CallDelay(self, 1, function()
            questVar = questVar - 20
            self:UpdateQuestLikingBar(questVar, false, "FETTER_EXP_NAME")
            self:SetQuestVar(1011206, 0, questVar)
        end)

        print("QQman motion:" .. questVar)
    end

    if arg1 == 3 then
        print("Talk1011206:Second success")
        questVar = self.GetQuestVar(self, 1011206, 0)
        self.SetupQuestLikingBar(self, 10112, 10243, questVar, false, "FETTER_EXP_NAME", "View", -0.35, 0.25, 0)
        self.CallDelay(self, 1, function()
            questVar = questVar + 20
            self:UpdateQuestLikingBar(questVar, false, "FETTER_LEVEL_UP")
            self:SetQuestVar(1011206, 0, questVar)
        end)

        print("QQman motion:" .. questVar)
    end

    if arg1 == 4 then
        print("Talk1011206:Second failed")
        questVar = self.GetQuestVar(self, 1011206, 0)
        self.SetupQuestLikingBar(self, 10112, 10243, questVar, false, "FETTER_EXP_NAME", "View", -0.35, 0.25, 0)
        self.CallDelay(self, 1, function()
            questVar = questVar - 20
            self:UpdateQuestLikingBar(questVar, false, "FETTER_EXP_NAME")
            self:SetQuestVar(1011206, 0, questVar)
        end)

        print("QQman motion:" .. questVar)
    end

    if arg1 == 5 then
        print("Talk1011206:Third success")
        questVar = self.GetQuestVar(self, 1011206, 0)
        self.SetupQuestLikingBar(self, 10112, 10243, questVar, false, "FETTER_EXP_NAME", "View", -0.35, 0.25, 0)
        questVar = questVar + 20
        if questVar < 0 then
            questVar = 0
        else
            if 100 < questVar then
                questVar = 100
            end
        end

        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if 60 < questVar then
            if actor ~= nil then
                actor:FinishQuestID(false, 1011207)
                actor:FinishQuestID(true, 1011208)
            end
        else
            if questVar < 60 and actor ~= nil then
                actor:FinishQuestID(true, 1011207)
                actor:FinishQuestID(false, 1011208)
            end
        end

        self.CallDelay(self, 1, function()
            self:UpdateQuestLikingBar(questVar, false, "FETTER_LEVEL_UP")
            self:SetQuestVar(1011206, 0, questVar)
        end)

        print("QQman motion:" .. questVar)
    end

    if arg1 == 6 then
        print("Talk1011206:Third Fail")
        questVar = self.GetQuestVar(self, 1011206, 0)
        self.SetupQuestLikingBar(self, 10112, 20025, questVar, false, "FETTER_EXP_NAME", "View", -0.35, 0.25, 0)
        questVar = questVar - 20
        if questVar < 0 then
            questVar = 0
        else
            if 100 < questVar then
                questVar = 100
            end
        end

        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if 60 < questVar then
            if actor ~= nil then
                actor:FinishQuestID(false, 1011207)
                actor:FinishQuestID(true, 1011208)
            end
        else
            if questVar < 60 and actor ~= nil then
                actor:FinishQuestID(true, 1011207)
                actor:FinishQuestID(false, 1011208)
            end
        end

        self.CallDelay(self, 1, function()
            self:UpdateQuestLikingBar(questVar, false, "FETTER_EXP_NAME")
            self:SetQuestVar(1011206, 0, questVar)
        end)

        print("QQman motion:" .. questVar)
    end

    if arg1 == 7 then
        print("Talk1011204:Destory Sword")
        self.FinishQuestID(self, false, 1011212)
    end

    if arg1 == 10 then
        self.HideQuestLikingBar(self)
    end
end

function Quest10112:Start() end
function Quest10112:OnDestroy() end
return Quest10112
