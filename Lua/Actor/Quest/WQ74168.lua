require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74168 = class("Quest74168", QuestActorProxy)
Quest74168.defaultAlias = "Quest74168"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74168:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74168:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7416801"] = self.OnSubStart7416801}
end

function Quest74168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7416801"] = self.OnSubFinish7416801}
end

function Quest74168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74168:Start()
    print("Start")
end

function Quest74168:OnDestroy()
    print("OnDestroy")
end

function Quest74168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74168:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74168:OnSubStart7416801(arg1)
    print("OnSubStart7416801")
    actorUtils.FinishQuestID(false, 7416801)
end

function Quest74168:OnSubFinish7416801(arg1)
    print("OnSubFinish7416801")
end

return Quest74168
