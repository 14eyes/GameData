require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74071 = class("Quest74071", QuestActorProxy)
Quest74071.defaultAlias = "Quest74071"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74071:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407101"] = self.OnSubStart7407101,
        ["7407102"] = self.OnSubStart7407102,
        ["7407103"] = self.OnSubStart7407103
    }
end

function Quest74071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407101"] = self.OnSubFinish7407101,
        ["7407102"] = self.OnSubFinish7407102,
        ["7407103"] = self.OnSubFinish7407103
    }
end

function Quest74071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74071:Start()
    print("Start")
end

function Quest74071:OnDestroy()
    print("OnDestroy")
end

function Quest74071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74071:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74071:OnSubStart7407101(arg1)
    print("OnSubStart7407101")
    actorUtils.FinishQuestID(false, 7407101)
end

function Quest74071:OnSubFinish7407101(arg1)
    print("OnSubFinish7407101")
end

function Quest74071:OnSubStart7407102(arg1)
    print("OnSubStart7407102")
end

function Quest74071:OnSubFinish7407102(arg1)
    print("OnSubFinish7407102")
end

function Quest74071:OnSubStart7407103(arg1)
    print("OnSubStart7407103")
end

function Quest74071:OnSubFinish7407103(arg1)
    print("OnSubFinish7407103")
end

return Quest74071
