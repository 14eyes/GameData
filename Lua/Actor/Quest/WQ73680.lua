require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73680 = class("Quest73680", QuestActorProxy)
Quest73680.defaultAlias = "Quest73680"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73680:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73680:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7368001"] = self.OnSubStart7368001}
end

function Quest73680:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7368001"] = self.OnSubFinish7368001}
end

function Quest73680:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73680:Start()
    print("Start")
end

function Quest73680:OnDestroy()
    print("OnDestroy")
end

function Quest73680:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73680:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73680:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73680:OnSubStart7368001(arg1)
    print("OnSubStart7368001")
end

function Quest73680:OnSubFinish7368001(arg1)
    print("OnSubFinish7368001")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(877)
    end)
end

return Quest73680
