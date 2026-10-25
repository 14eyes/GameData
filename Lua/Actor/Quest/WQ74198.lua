require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74198 = class("Quest74198", QuestActorProxy)
Quest74198.defaultAlias = "Quest74198"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74198:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74198:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7419801"] = self.OnSubStart7419801}
end

function Quest74198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7419801"] = self.OnSubFinish7419801}
end

function Quest74198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74198:Start()
    print("Start")
end

function Quest74198:OnDestroy()
    print("OnDestroy")
end

function Quest74198:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74198:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74198:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74198:OnSubStart7419801(arg1)
    print("OnSubStart7419801")
end

function Quest74198:OnSubFinish7419801(arg1)
    print("OnSubFinish7419801")
end

return Quest74198
