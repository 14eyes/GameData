require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74176 = class("Quest74176", QuestActorProxy)
Quest74176.defaultAlias = "Quest74176"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74176:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74176:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417601"] = self.OnSubStart7417601}
end

function Quest74176:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417601"] = self.OnSubFinish7417601}
end

function Quest74176:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74176:Start()
    print("Start")
end

function Quest74176:OnDestroy()
    print("OnDestroy")
end

function Quest74176:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74176:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74176:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74176:OnSubStart7417601(arg1)
    print("OnSubStart7417601")
    actorUtils.FinishQuestID(false, 7417601)
end

function Quest74176:OnSubFinish7417601(arg1)
    print("OnSubFinish7417601")
end

return Quest74176
