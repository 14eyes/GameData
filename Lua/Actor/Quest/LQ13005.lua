require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13005 = class("Quest13005", QuestActorProxy)
Quest13005.defaultAlias = "Quest13005"
local clientData
local mainID
local actorAlias
local subIDs

function Quest13005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest13005:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1300501"] = self.OnSubStart1300501}
end

function Quest13005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1300501"] = self.OnSubFinish1300501}
end

function Quest13005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13005:Start()
    print("Start")
end

function Quest13005:OnDestroy()
    print("OnDestroy")
end

function Quest13005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13005:OnSubStart1300501(arg1)
    print("OnSubStart1300501")
end

function Quest13005:OnSubFinish1300501(arg1)
    print("OnSubFinish1300501")
end

return Quest13005
