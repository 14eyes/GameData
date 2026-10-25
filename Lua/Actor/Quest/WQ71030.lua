require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71030 = class("Quest71030", QuestActorProxy)
Quest71030.defaultAlias = "Quest71030"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71030:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7103001"] = self.OnSubStart7103001, ["7103002"] = self.OnSubStart7103002}
end

function Quest71030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7103001"] = self.OnSubFinish7103001, ["7103002"] = self.OnSubFinish7103002}
end

function Quest71030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7103001"] = self.OnSubFailed7103001, ["7103002"] = self.OnSubFailed7103002}
end

function Quest71030:Start()
    print("Start")
end

function Quest71030:OnDestroy()
    print("OnDestroy")
end

function Quest71030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71030:OnSubStart7103001(arg1)
    print("OnSubStart7103001")
end

function Quest71030:OnSubFinish7103001(arg1)
    print("OnSubFinish7103001")
end

function Quest71030:OnSubFailed7103001(arg1)
    print("OnSubFailed7103001")
end

function Quest71030:OnSubStart7103002(arg1)
    print("OnSubStart7103002")
end

function Quest71030:OnSubFinish7103002(arg1)
    print("OnSubFinish7103002")
end

function Quest71030:OnSubFailed7103002(arg1)
    print("OnSubFailed7103002")
end

return Quest71030
