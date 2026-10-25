require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74070 = class("Quest74070", QuestActorProxy)
Quest74070.defaultAlias = "Quest74070"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74070:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74070:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7407002"] = self.OnSubStart7407002, ["7407001"] = self.OnSubStart7407001}
end

function Quest74070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7407002"] = self.OnSubFinish7407002, ["7407001"] = self.OnSubFinish7407001}
end

function Quest74070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74070:Start()
    print("Start")
end

function Quest74070:OnDestroy()
    print("OnDestroy")
end

function Quest74070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74070:OnSubStart7407002(arg1)
    print("OnSubStart7407002")
    actorUtils.FinishQuestID(false, 7407002)
end

function Quest74070:OnSubFinish7407002(arg1)
    print("OnSubFinish7407002")
end

function Quest74070:OnSubStart7407001(arg1)
    print("OnSubStart7407001")
end

function Quest74070:OnSubFinish7407001(arg1)
    print("OnSubFinish7407001")
end

return Quest74070
