require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11003 = class("Quest11003", QuestActorProxy)
Quest11003.defaultAlias = "Quest11003"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 11003
local paimonData
local xianglingData
local olafData

function Quest11003:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 11003
    paimonData = clientData.PaimonData
    xianglingData = clientData.XianglingData
    olafData = clientData.OlafData
end

function Quest11003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100301"] = self.OnSubStart1100301
    self.subStartHandlers["1100302"] = self.OnSubStart1100302
    self.subStartHandlers["1100303"] = self.OnSubStart1100303
    self.subStartHandlers["1100304"] = self.OnSubStart1100304
end

function Quest11003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100301"] = self.OnSubFinish1100301
    self.subFinishHandlers["1100302"] = self.OnSubFinish1100302
    self.subFinishHandlers["1100303"] = self.OnSubFinish1100303
    self.subFinishHandlers["1100304"] = self.OnSubFinish1100304
end

function Quest11003:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11003:PaimonDelay()
    self:PaimonDis()
end

function Quest11003:OlafDofreestyle()
    local questNpcActor = self:GetQuestNpcActor(olafData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4200)
    end
end

function Quest11003:OnSubStart1100301(arg1)
    print("1100301 start:...")
    actorMgr:CreateActorWithPos("Q1100301Trigger", "Actor/Gadget/Q1100301Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100302Olaf").pos, sceneData:GetDummyPoint(3, "Q1100302Olaf").rot, true, false)
    self:CreateQuestNpc(arg1, olafData.ID)
    self:OlafDofreestyle()
end

function Quest11003:OnSubStart1100302(arg1)
    self:CreateQuestNpc(arg1, olafData.ID)
    self:OlafDofreestyle()
end

function Quest11003:OnSubStart1100303(arg1)
    print("1100303 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:ActionSafeCall(function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, olafData.ID)
            arg1_2:OlafDofreestyle()
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
            arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1180)
            print("SHOW BLACK SCREEN 1100303")
        end)
    end, nil, entityCreateTask)
end

function Quest11003:OnSubStart1100304(arg1)
    print("1100304 start:...")
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, olafData.ID)
        arg1_2:OlafDofreestyle()
        arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
        arg1_2:GetQuestNpcActor(xianglingData.Alias, 11003):DoFreeStateTrigger()
    end)
end

function Quest11003:OnSubFinish1100301(arg1)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow1)
end

function Quest11003:OnSubFinish1100302(arg1)
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11003:OnSubFinish1100303(arg1) end

function Quest11003:OnSubFinish1100304(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    if self:GetQuestNpcActor(olafData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(olafData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end
end

function Quest11003:Start() end
function Quest11003:OnDestroy() end
return Quest11003
