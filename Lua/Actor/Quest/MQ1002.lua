require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1002 = class("Quest1002", QuestActorProxy)
Quest1002.defaultAlias = "Quest1002"
local clientData
local playerData
local paimonData
local xianRenData
local triggerData

function Quest1002:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    xianRenData = clientData.XianRenData
    triggerData = clientData.TriggerData
end

function Quest1002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100201"] = self.OnSubStart100201
    self.subStartHandlers["100202"] = self.OnSubStart100202
    self.subStartHandlers["100203"] = self.OnSubStart100203
    self.subStartHandlers["100204"] = self.OnSubStart100204
    self.subStartHandlers["100205"] = self.OnSubStart100205
end

function Quest1002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100201"] = self.OnSubFinish100201
    self.subFinishHandlers["100202"] = self.OnSubFinish100202
    self.subFinishHandlers["100203"] = self.OnSubFinish100203
    self.subFinishHandlers["100204"] = self.OnSubFinish100204
    self.subFinishHandlers["100205"] = self.OnSubFinish100205
end

function Quest1002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["100201"] = self.OnSubFailed100201
    self.subFailedHandlers["100202"] = self.OnSubFailed100202
    self.subFailedHandlers["100203"] = self.OnSubFailed100203
    self.subFailedHandlers["100204"] = self.OnSubFailed100204
    self.subFailedHandlers["100205"] = self.OnSubFailed100205
end

function Quest1002:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk100202:Creat Monster")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 100203)
        end
    end
end

function Quest1002:DestroyNPC()
    print("OnFinished 100201")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Alias)
        local v = arg1:GetQuestNpcActor(xianRenData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        if v ~= nil then
            v:Destroy(false)
        end
    end)
end

function Quest1002:OnSubStart100201(arg1)
    print("100201 start ")
    self:TriggerLevelAbility("LevelBuff_Remove_ReviveElemEnergyMinusCD")
end

function Quest1002:OnSubFinish100201(arg1)
    print("100201 start ")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({paimonData.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
        arg1_2:RequestInteraction(paimonData.Alias)
    end, nil, questNpcCreateTask)
end

function Quest1002:OnSubFinish100202(arg1)
    print("OnFinished 100202")
    actorMgr:CreateActorWithPos(triggerData.Alias, triggerData.Script, triggerData.ID, 0, triggerData.BornPos, triggerData.BornDir, true)
    self:ActionSafeCall(function(arg1)
        arg1:TriggerLevelAbility("LevelBuff_ReviveElemEnergyMinusCD")
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        local v = arg1:GetQuestNpcActor("Npc2003004")
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor("Npc2003005")
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = arg1:GetQuestNpcActor(xianRenData.Alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end
    end)
end

function Quest1002:OnSubFinish100203(arg1)
    print("OnFinished 100203")
end

function Quest1002:OnSubFinish100204(arg1)
    print("OnFinished 100204")
    self:TriggerLevelAbility("LevelBuff_Remove_ReviveElemEnergyMinusCD")
end

function Quest1002:OnSubFailed100204(arg1)
    print("OnFailed 100204")
    local questNpcActor = self:GetQuestNpcActor(xianRenData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    self:TriggerLevelAbility("LevelBuff_Remove_ReviveElemEnergyMinusCD")
end

function Quest1002:OnSubStart100205(arg1)
    self:CallDelay(2, function(arg1_2)
        local questNpcCreateTask = arg1_2.CreateQuestNpcCreateTask({xianRenData.Alias})
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, xianRenData.ID)
            arg1_2:RequestInteraction(xianRenData.Alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest1002:OnSubFinish100205(arg1)
    print("OnFinished 100201")
    self:DestroyNPC()
end

function Quest1002:Start() end
function Quest1002:OnDestroy() end
return Quest1002
