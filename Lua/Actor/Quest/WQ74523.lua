require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74523 = class("Quest74523", QuestActorProxy)
Quest74523.defaultAlias = "Quest74523"
local clientData
local this
local mainID
local actorAlias

function Quest74523:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74523:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452301"] = self.OnSubStart7452301, ["7452302"] = self.OnSubStart7452302}
end

function Quest74523:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452301"] = self.OnSubFinish7452301, ["7452302"] = self.OnSubFinish7452302}
end

function Quest74523:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74523:Start()
    print("Start")
end

function Quest74523:OnDestroy()
    print("OnDestroy")
end

function Quest74523:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74523:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74523:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74523:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74523:OnSubStart7452301(arg1)
    print("OnSubStart7452301")
end

function Quest74523:OnSubFinish7452301(arg1)
    print("OnSubFinish7452301")
end

function Quest74523:OnSubStart7452302(arg1)
    print("OnSubStart7452302")
end

function Quest74523:OnSubFinish7452302(arg1)
    print("OnSubFinish7452302")
end

return Quest74523
