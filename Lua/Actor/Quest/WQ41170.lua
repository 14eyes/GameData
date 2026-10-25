require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41170 = class("Quest41170", QuestActorProxy)
Quest41170.defaultAlias = "Quest41170"
local clientData
local mainID
local actorAlias
local subIDs

function Quest41170:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest41170:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4117001"] = self.OnSubStart4117001}
end

function Quest41170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4117001"] = self.OnSubFinish4117001}
end

function Quest41170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4117001"] = self.OnSubFailed4117001}
end

function Quest41170:Start()
    print("Start")
end

function Quest41170:OnDestroy()
    print("OnDestroy")
end

function Quest41170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41170:OnSubStart4117001(arg1)
    print("OnSubStart4117001")
end

function Quest41170:OnSubFinish4117001(arg1)
    print("OnSubFinish4117001")
    print("\230\149\153\231\168\139")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(801)
    end)
end

function Quest41170:OnSubFailed4117001(arg1)
    print("OnSubFailed4117001")
end

return Quest41170
