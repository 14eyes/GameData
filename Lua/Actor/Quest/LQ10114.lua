require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10114 = class("Quest10114", QuestActorProxy)
Quest10114.defaultAlias = "Quest10114"
function Quest10114:OnDataLoaded() end

function Quest10114:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1011401"] = self.OnSubStart1011401
end

function Quest10114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1011401"] = self.OnSubFinish1011401
end

function Quest10114:OnSubStart1011401(arg1) end

function Quest10114:OnSubFinish1011401(arg1)
    local actor = actorMgr:GetActor("10113")
    if actor == actorMgr.dummyActor then
        return
    end

    local questNpcActor = actor:GetQuestNpcActor("Wendy")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest10114:Start() end
function Quest10114:OnDestroy() end
return Quest10114
