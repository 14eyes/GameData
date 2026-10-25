require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest471 = class("Quest471", QuestActorProxy)
Quest471.defaultAlias = "Quest471"
local clientData
local subIDs

function Quest471:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
end

function Quest471:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["47101"] = self.OnSubStart47101
    self.subStartHandlers["47102"] = self.OnSubStart47102
end

function Quest471:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["47101"] = self.OnSubFinish47101
    self.subFinishHandlers["47102"] = self.OnSubFinish47102
end

function Quest471:OnSubStart47101(arg1)
    print("47101 Start : Story1")
    self:CallDelay(20, self.Story1)
end

function Quest471:Story1()
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1, self.OnNarrator1Finish, "StoryCut")
end

function Quest471:OnNarrator1Finish()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 47101)
    end
end

function Quest471:OnSubStart47102(arg1)
    print("47102 Start : Story2")
    self:CallDelay(20, self.Story2)
end

function Quest471:Story2()
    self:NarratorOnlyTask(self.clientData.NarratorData.Story2, self.OnNarrator2Finish, "StoryCut")
end

function Quest471:OnNarrator2Finish()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 47102)
    end
end

function Quest471:Start() end
function Quest471:OnDestroy() end
return Quest471
