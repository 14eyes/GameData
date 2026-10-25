require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11104 = class("Quest11104", QuestActorProxy)
Quest11104.defaultAlias = "Quest11104"
local subIDs
local n
local paimonData
local xiaoData

function Quest11104:OnDataLoaded()
    q11104Cfg = self.clientData
    subIDs = q11104Cfg.SubIDs
    n = 11104
    paimonData = q11104Cfg.PaimonData
    xiaoData = q11104Cfg.XiaoData
end

function Quest11104:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1110401"] = self.OnSubStart1110401
end

function Quest11104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1110401"] = self.OnSubFinish1110401
end

function Quest11104:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11104:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11104:OnSubStart1110401(arg1)
    print("********1110401 start")
    self:CallDelay(1, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, xiaoData.ID)
            arg1_2:GetQuestNpcActor(xiaoData.Alias):SitOnChair(8010)
        end, nil, task, "QUEST_Black_Q1110003")
    end)
end

function Quest11104:OnSubFinish1110401(arg1)
    print("********1110303 Finish")
    self:ActionSafeCall(self.XiaoVanish)
end

function Quest11104:Start() end
function Quest11104:OnDestroy() end
return Quest11104
