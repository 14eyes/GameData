require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79040 = class("Quest79040", QuestActorProxy)
Quest79040.defaultAlias = "Quest79040"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79040:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7904001"] = self.OnSubStart7904001}
end

function Quest79040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7904001"] = self.OnSubFinish7904001}
end

function Quest79040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79040:Start()
    print("Start")
end

function Quest79040:OnDestroy()
    print("OnDestroy")
end

function Quest79040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79040:OnSubStart7904001(arg1)
    print("OnSubStart7904001")
end

function Quest79040:OnSubFinish7904001(arg1)
    print("OnSubFinish7904001")
end

return Quest79040
