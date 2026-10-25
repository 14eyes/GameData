require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71028 = class("Quest71028", QuestActorProxy)
Quest71028.defaultAlias = "Quest71028"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71028:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102801"] = self.OnSubStart7102801}
end

function Quest71028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102801"] = self.OnSubFinish7102801}
end

function Quest71028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102801"] = self.OnSubFailed7102801}
end

function Quest71028:Start()
    print("Start")
end

function Quest71028:OnDestroy()
    print("OnDestroy")
end

function Quest71028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71028:OnSubStart7102801(arg1)
    print("OnSubStart7102801")
end

function Quest71028:OnSubFinish7102801(arg1)
    print("OnSubFinish7102801")
end

function Quest71028:OnSubFailed7102801(arg1)
    print("OnSubFailed7102801")
end

return Quest71028
