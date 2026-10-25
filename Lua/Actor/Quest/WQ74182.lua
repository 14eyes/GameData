require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74182 = class("Quest74182", QuestActorProxy)
Quest74182.defaultAlias = "Quest74182"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74182:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74182:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7418201"] = self.OnSubStart7418201}
end

function Quest74182:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7418201"] = self.OnSubFinish7418201}
end

function Quest74182:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74182:Start()
    print("Start")
end

function Quest74182:OnDestroy()
    print("OnDestroy")
end

function Quest74182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74182:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74182:OnSubStart7418201(arg1)
    print("OnSubStart7418201")
end

function Quest74182:OnSubFinish7418201(arg1)
    print("OnSubFinish7418201")
end

return Quest74182
