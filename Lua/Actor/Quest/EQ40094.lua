require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40094 = class("Quest40094", QuestActorProxy)
Quest40094.defaultAlias = "Quest40094"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40094:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40094:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4009401"] = self.OnSubStart4009401}
end

function Quest40094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4009401"] = self.OnSubFinish4009401}
end

function Quest40094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40094:Start()
    print("Start")
end

function Quest40094:OnDestroy()
    print("OnDestroy")
end

function Quest40094:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40094:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40094:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
end

function Quest40094:OnSubStart4009401(arg1)
    print("OnSubStart4009401")
end

function Quest40094:OnSubFinish4009401(arg1)
    print("OnSubFinish4009401")
end

return Quest40094
