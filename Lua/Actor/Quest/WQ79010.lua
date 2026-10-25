require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79010 = class("Quest79010", QuestActorProxy)
Quest79010.defaultAlias = "Quest79010"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79010:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7901001"] = self.OnSubStart7901001}
end

function Quest79010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7901001"] = self.OnSubFinish7901001}
end

function Quest79010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7901001"] = self.OnSubFailed7901001}
end

function Quest79010:Start()
    print("Start")
end

function Quest79010:OnDestroy()
    print("OnDestroy")
end

function Quest79010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79010:OnSubStart7901001(arg1)
    print("OnSubStart7901001")
end

function Quest79010:OnSubFinish7901001(arg1)
    print("OnSubFinish7901001")
    self:ShowTutorialDialog(820)
end

function Quest79010:OnSubFailed7901001(arg1)
    print("OnSubFailed7901001")
end

return Quest79010
