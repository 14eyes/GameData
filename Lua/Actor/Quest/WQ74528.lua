require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74528 = class("Quest74528", QuestActorProxy)
Quest74528.defaultAlias = "Quest74528"
local clientData
local this
local mainID
local actorAlias

function Quest74528:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74528:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7452801"] = self.OnSubStart7452801, ["7452802"] = self.OnSubStart7452802}
end

function Quest74528:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7452801"] = self.OnSubFinish7452801, ["7452802"] = self.OnSubFinish7452802}
end

function Quest74528:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74528:Start()
    print("Start")
end

function Quest74528:OnDestroy()
    print("OnDestroy")
end

function Quest74528:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74528:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74528:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74528:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74528:OnSubStart7452801(arg1)
    print("OnSubStart7452801")
end

function Quest74528:OnSubFinish7452801(arg1)
    print("OnSubFinish7452801")
end

function Quest74528:OnSubStart7452802(arg1)
    print("OnSubStart7452802")
end

function Quest74528:OnSubFinish7452802(arg1)
    print("OnSubFinish7452802")
end

return Quest74528
