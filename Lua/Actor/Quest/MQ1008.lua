require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1008 = class("Quest1008", QuestActorProxy)
Quest1008.defaultAlias = "Quest1008"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local n = 1008
local subIDs
local paimonData
local aniaoData
local daobao01Data
local daobao02Data

function Quest1008:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 1008
    paimonData = clientData.PaimonData
    aniaoData = clientData.AniaoData
    daobao01Data = clientData.Daobao01Data
    daobao02Data = clientData.Daobao02Data
end

function Quest1008:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100808"] = self.OnSubStart100808
    self.subStartHandlers["100801"] = self.OnSubStart100801
    self.subStartHandlers["100802"] = self.OnSubStart100802
    self.subStartHandlers["100803"] = self.OnSubStart100803
    self.subStartHandlers["100804"] = self.OnSubStart100804
    self.subStartHandlers["100805"] = self.OnSubStart100805
    self.subStartHandlers["100806"] = self.OnSubStart100806
    self.subStartHandlers["100807"] = self.OnSubStart100807
end

function Quest1008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100808"] = self.OnSubFinish100808
    self.subFinishHandlers["100801"] = self.OnSubFinish100801
    self.subFinishHandlers["100802"] = self.OnSubFinish100802
    self.subFinishHandlers["100803"] = self.OnSubFinish100803
    self.subFinishHandlers["100804"] = self.OnSubFinish100804
    self.subFinishHandlers["100805"] = self.OnSubFinish100805
    self.subFinishHandlers["100806"] = self.OnSubFinish100806
    self.subFinishHandlers["100807"] = self.OnSubFinish100807
end

function Quest1008:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest1008:OnSubStart100808(arg1)
    print("100808 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100808)
    end
end

function Quest1008:OnSubStart100801(arg1)
    print("100801 start:...")
    self:CreateQuestNpc(arg1, daobao01Data.ID)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(daobao01Data.Alias):DoFreeStyle(4290)
    end)
end

function Quest1008:OnSubStart100802(arg1)
    print("100802 start:...")
end

function Quest1008:OnSubStart100803(arg1)
    print("100803 start:...")
end

function Quest1008:OnSubStart100804(arg1)
    print("100804 start:...")
end

function Quest1008:OnSubStart100805(arg1)
    print("100805 start:...")
    self:CreateQuestNpc(arg1, daobao01Data.ID)
end

function Quest1008:OnSubStart100806(arg1)
    print("100806 start:...")
    self:CreateQuestNpc(arg1, daobao01Data.ID)
    self:CreateQuestNpc(arg1, daobao02Data.ID)
    self:GetQuestNpcActor(daobao01Data.Alias):DoFreeStateTrigger()
end

function Quest1008:OnSubStart100807(arg1)
    print("100807 start:...")
    self:CreateQuestNpc(arg1, aniaoData.ID)
end

function Quest1008:OnSubFinish100801(arg1)
    print("OnFinished 100801")
    self:PaimonDis()
end

function Quest1008:OnSubFinish100802(arg1)
    print("OnFinished 100802")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
    end)
end

function Quest1008:OnSubFinish100803(arg1)
    print("OnFinished 100803")
end

function Quest1008:OnSubFinish100804(arg1)
    print("OnFinished 100804")
end

function Quest1008:OnSubFinish100805(arg1)
    print("OnFinished 100805")
    local actor = actorMgr:GetActor(paimonData.Alias)
    if actor ~= nil then
        self:ActionSafeCall(function(arg1)
            actor:DestroyWithDisappear(false)
        end)
    end
end

function Quest1008:OnSubFinish100806(arg1)
    print("OnFinished 100806")
    if self:GetQuestNpcActor(daobao01Data.Alias) ~= nil then
        print("100806  daobao01 ~= nil" .. tostring(daobao01Data.Alias))
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(daobao01Data.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(daobao02Data.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(daobao02Data.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1008:OnSubFinish100807(arg1)
    print("OnFinished 100807")
    if self:GetQuestNpcActor(aniaoData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(aniaoData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1008:Start() end
function Quest1008:OnDestroy() end
return Quest1008
