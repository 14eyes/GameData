require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74132 = class("Quest74132", QuestActorProxy)
Quest74132.defaultAlias = "Quest74132"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74132:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74132:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7413201"] = self.OnSubStart7413201}
end

function Quest74132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7413201"] = self.OnSubFinish7413201}
end

function Quest74132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74132:Start()
    print("Start")
end

function Quest74132:OnDestroy()
    print("OnDestroy")
end

function Quest74132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74132:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74132:OnSubStart7413201(arg1)
    print("OnSubStart7413201")
end

function Quest74132:OnSubFinish7413201(arg1)
    print("OnSubFinish7413201")
end

return Quest74132
