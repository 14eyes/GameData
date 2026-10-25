require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20501 = class("Quest20501", QuestActorProxy)
Quest20501.defaultAlias = "Quest20501"
local Q20501ClientConfig = require("Quest/Client/Q20501ClientConfig")

local jackData = Q20501ClientConfig.JackData
local paimonData = Q20501ClientConfig.PaimonData

function Quest20501:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050101"] = self.OnSubStart2050101
    self.subStartHandlers["2050102"] = self.OnSubStart2050102
    self.subStartHandlers["2050103"] = self.OnSubStart2050103
    self.subStartHandlers["2050104"] = self.OnSubStart2050104
    self.subStartHandlers["2050105"] = self.OnSubStart2050105
    self.subStartHandlers["2050106"] = self.OnSubStart2050106
    self.subStartHandlers["2050107"] = self.OnSubStart2050107
    self.subStartHandlers["2050108"] = self.OnSubStart2050108
    self.subStartHandlers["2050109"] = self.OnSubStart2050109
    self.subStartHandlers["2050110"] = self.OnSubStart2050110
end

function Quest20501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050101"] = self.OnSubFinish2050101
    self.subFinishHandlers["2050102"] = self.OnSubFinish2050102
    self.subFinishHandlers["2050103"] = self.OnSubFinish2050103
    self.subFinishHandlers["2050104"] = self.OnSubFinish2050104
    self.subFinishHandlers["2050105"] = self.OnSubFinish2050105
    self.subFinishHandlers["2050106"] = self.OnSubFinish2050106
    self.subFinishHandlers["2050107"] = self.OnSubFinish2050107
    self.subFinishHandlers["2050108"] = self.OnSubFinish2050108
    self.subFinishHandlers["2050109"] = self.OnSubFinish2050109
    self.subFinishHandlers["2050110"] = self.OnSubFinish2050110
end

function Quest20501:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(jackData.Jack)
            local v = arg1:GetQuestNpcActor(paimonData.Paimon)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end

            if v ~= nil then
                v:DestroyWithDisappear(false)
            end
        end)
    end)
end

function Quest20501:OnSubStart2050102(arg1)
    print("2050105 finish:CreatNPC & Talk")
    self:CreateQuestNpc(arg1, jackData.JackID)
    self:CreateQuestNpc(arg1, paimonData.ID)
end

function Quest20501:OnSubFinish2050102(arg1)
    print("2050105 finish:DestroyNPC")
    self:DestroyNPC()
end

function Quest20501:OnSubFinish2050104(arg1)
    self:ActionSafeCall(function(arg1)
        globalActor:StartGuide("GuideAdventureDungeon")
    end)
end

function Quest20501:Start() end
function Quest20501:OnDestroy() end
return Quest20501
