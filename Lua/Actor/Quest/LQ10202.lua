require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10202 = class("Quest10202", QuestActorProxy)
Quest10202.defaultAlias = "Quest10202"
local clientData
local subIDs
local doorData
local qinData
local kleeData
local paimonData

function Quest10202:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    doorData = clientData.DoorData
    qinData = clientData.QinData
    kleeData = clientData.KleeData
    paimonData = clientData.PaimonData
end

function Quest10202:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1020201"] = self.OnSubStart1020201
    self.subStartHandlers["1020202"] = self.OnSubStart1020202
    self.subStartHandlers["1020203"] = self.OnSubStart1020203
    self.subStartHandlers["1020204"] = self.OnSubStart1020204
end

function Quest10202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1020201"] = self.OnSubFinish1020201
    self.subFinishHandlers["1020202"] = self.OnSubFinish1020202
    self.subFinishHandlers["1020203"] = self.OnSubFinish1020203
    self.subFinishHandlers["1020204"] = self.OnSubFinish1020204
end

function Quest10202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["1020201"] = self.OnSubFailed1020201
    self.subFailedHandlers["1020202"] = self.OnSubFailed1020202
    self.subFailedHandlers["1020203"] = self.OnSubFailed1020203
    self.subFailedHandlers["1020204"] = self.OnSubFailed1020204
end

function Quest10202:OnSubStart1020201(arg1) end

function Quest10202:OnSubFinish1020201(arg1)
    print("1020201 finish")
    self:DestroyQuestNpcActor(kleeData.Klee, 1004)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10202:OnSubStart1020202(arg1)
    self:CreateQuestNpc(arg1, qinData.QinID, 2)
    self:CreateQuestNpc(arg1, kleeData.KleeID, 1)
end

function Quest10202:OnSubFinish1020202(arg1)
    print("1020202 finish")
end

function Quest10202:OnSubStart1020203(arg1) end
function Quest10202:OnSubFinish1020203(arg1) end

function Quest10202:OnSubStart1020204(arg1)
    self:CreateQuestNpc(arg1, doorData.DoorID, 1)
end

function Quest10202:OnSubFinish1020204(arg1)
    self:DestroyQuestNpcActor(doorData.Door, 1004)
end

function Quest10202:Start() end
function Quest10202:OnDestroy() end
return Quest10202
