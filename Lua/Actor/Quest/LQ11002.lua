require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11002 = class("Quest11002", QuestActorProxy)
Quest11002.defaultAlias = "Quest11002"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 11002
local paimonData
local xianglingData
local nelumboData
local pepperData

function Quest11002:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 11002
    paimonData = clientData.PaimonData
    xianglingData = clientData.XianglingData
    nelumboData = clientData.NelumboData
    pepperData = clientData.PepperData
end

function Quest11002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100201"] = self.OnSubStart1100201
    self.subStartHandlers["1100202"] = self.OnSubStart1100202
    self.subStartHandlers["1100203"] = self.OnSubStart1100203
    self.subStartHandlers["1100204"] = self.OnSubStart1100204
    self.subStartHandlers["1100205"] = self.OnSubStart1100205
    self.subStartHandlers["1100206"] = self.OnSubStart1100206
    self.subStartHandlers["1100207"] = self.OnSubStart1100207
end

function Quest11002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100201"] = self.OnSubFinish1100201
    self.subFinishHandlers["1100202"] = self.OnSubFinish1100202
    self.subFinishHandlers["1100203"] = self.OnSubFinish1100203
    self.subFinishHandlers["1100204"] = self.OnSubFinish1100204
    self.subFinishHandlers["1100205"] = self.OnSubFinish1100205
    self.subFinishHandlers["1100206"] = self.OnSubFinish1100206
    self.subFinishHandlers["1100207"] = self.OnSubFinish1100207
end

function Quest11002:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11002:PaimonDelay()
    self:PaimonDis()
end

function Quest11002:OnSubStart1100201(arg1)
    print("1100201 start:...")
    actorMgr:CreateActorWithPos("Q1100201Trigger", "Actor/Gadget/Q1100201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100202XL").pos, sceneData:GetDummyPoint(3, "Q1100202XL").rot, true, false)
    self:CreateQuestNpc(arg1, xianglingData.ID)
    self:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1200)
end

function Quest11002:OnSubStart1100202(arg1)
    print("1100202 start:...")
end

function Quest11002:OnSubStart1100203(arg1)
    print("1100203 start:...")
    actorMgr:CreateActorWithPos("Q1100203Trigger", "Actor/Gadget/Q1100203Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100204M1").pos, sceneData:GetDummyPoint(3, "Q1100204M1").rot, true, false)
end

function Quest11002:OnSubStart1100204(arg1)
    print("1100204 start:...")
end

function Quest11002:OnSubStart1100205(arg1)
    print("1100205 start:...")
    actorMgr:CreateActorWithPos("Q1100206Trigger01", "Actor/Gadget/Q1100206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100204T1").pos, sceneData:GetDummyPoint(3, "Q1100204T1").rot, true, false)
    actorMgr:CreateActorWithPos("Q1100206Trigger02", "Actor/Gadget/Q1100206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1100204T2").pos, sceneData:GetDummyPoint(3, "Q1100204T2").rot, true, false)
    self:CreateQuestNpc(arg1, xianglingData.ID)
    self:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1190)
end

function Quest11002:OnSubStart1100206(arg1)
    print("1100206 start:...")
end

function Quest11002:OnSubStart1100207(arg1)
    print("1100207 start:...")
end

function Quest11002:OnSubFinish1100201(arg1) end

function Quest11002:OnSubFinish1100202(arg1)
    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11002:OnSubFinish1100203(arg1)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow1, nil, "StoryCut")
end

function Quest11002:OnSubFinish1100204(arg1)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow2, nil, "StoryCut")
    end)
end

function Quest11002:OnSubFinish1100205(arg1)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow3, nil, "StoryCut")
    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, function()
        globalActor:EnablePlayerInput(true)
    end)

    local actor = actorMgr:GetActor("Q1100206Trigger01")
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor("Q1100206Trigger02")
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest11002:OnSubFinish1100206(arg1) end

function Quest11002:OnSubFinish1100207(arg1)
    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11002:Start() end
function Quest11002:OnDestroy() end
return Quest11002
