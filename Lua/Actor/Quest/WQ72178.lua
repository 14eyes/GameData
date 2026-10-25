require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72178 = class("Quest72178", QuestActorProxy)
Quest72178.defaultAlias = "Quest72178"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72178:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72178:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7217801"] = self.OnSubStart7217801}
end

function Quest72178:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7217801"] = self.OnSubFinish7217801}
end

function Quest72178:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7217801"] = self.OnSubFailed7217801}
end

function Quest72178:Start()
    print("Start")
end

function Quest72178:OnDestroy()
    print("OnDestroy")
end

function Quest72178:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72178:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72178:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72178:OnSubStart7217801(arg1)
    print("OnSubStart7217801")
end

function Quest72178:OnSubFinish7217801(arg1)
    print("OnSubFinish7217801")
end

function Quest72178:OnSubFailed7217801(arg1)
    print("OnSubFailed7217801")
end

return Quest72178
