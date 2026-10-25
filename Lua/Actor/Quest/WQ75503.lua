require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75503 = class("Quest75503", QuestActorProxy)
Quest75503.defaultAlias = "Quest75503"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest75503:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest75503:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550301"] = self.OnSubStart7550301}
end

function Quest75503:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550301"] = self.OnSubFinish7550301}
end

function Quest75503:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75503:Start()
    print("Start")
end

function Quest75503:OnDestroy()
    print("OnDestroy")
end

function Quest75503:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75503:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75503:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q75503trigger")
end

function Quest75503:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75503:OnSubStart7550301(arg1)
    print("OnSubStart7550301")
    actorMgr:CreateActorWithPos("Q75503trigger", "Actor/Gadget/Q75503trigger", 70900002, 0, points._Q75503triggerPoint_.pos, points._Q75503triggerPoint_.rot, true, false, 3)
end

function Quest75503:OnSubFinish7550301(arg1)
    print("OnSubFinish7550301")
    this:ActorDestroy("Q75500trigger")
    this:ClearNarratorTask()
end

return Quest75503
