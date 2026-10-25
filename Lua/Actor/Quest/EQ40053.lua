require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40053 = class("Quest40053", QuestActorProxy)
Quest40053.defaultAlias = "Quest40053"
local clientData
local mainID
local actorAlias
local subIDs

function Quest40053:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40053:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4005301"] = self.OnSubStart4005301}
end

function Quest40053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4005301"] = self.OnSubFinish4005301}
end

function Quest40053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40053:Start()
    print("Start")
end

function Quest40053:OnDestroy()
    print("OnDestroy")
end

function Quest40053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40053:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40053:OnSubStart4005301(arg1)
    print("OnSubStart4005301")
end

function Quest40053:OnSubFinish4005301(arg1)
    print("OnSubFinish4005301")
end

return Quest40053
