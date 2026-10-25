require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10203 = class("Quest10203", QuestActorProxy)
Quest10203.defaultAlias = "Quest10203"
local clientData
local subIDs
local doorData
local qinData

function Quest10203:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    qinData = clientData.QinData
    doorData = clientData.DoorData
end

function Quest10203:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1020301"] = self.OnSubStart1020301
    self.subStartHandlers["1020302"] = self.OnSubStart1020302
end

function Quest10203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1020301"] = self.OnSubFinish1020301
    self.subFinishHandlers["1020302"] = self.OnSubFinish1020302
end

function Quest10203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["1020301"] = self.OnSubFailed1020301
    self.subFailedHandlers["1020302"] = self.OnSubFailed1020302
end

function Quest10203:OnSubStart1020301(arg1)
    self:CreateQuestNpc(arg1, qinData.QinID, 1)
end

function Quest10203:OnSubFinish1020301(arg1)
    print("1020301 finish")
end

function Quest10203:OnSubStart1020302(arg1)
    self:CreateQuestNpc(arg1, doorData.DoorID, 1)
end

function Quest10203:OnSubFinish1020302(arg1)
    print("1020302 finish")
    self:DestroyQuestNpcActor(doorData.Door, 1004)
    self:DestroyQuestNpcActor(qinData.Qin, 1004)
end

function Quest10203:Start() end
function Quest10203:OnDestroy() end
return Quest10203
