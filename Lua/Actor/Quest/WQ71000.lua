require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71000 = class("Quest71000", QuestActorProxy)
Quest71000.defaultAlias = "Quest71000"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71000:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7100001"] = self.OnSubStart7100001, ["7100002"] = self.OnSubStart7100002}
end

function Quest71000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7100001"] = self.OnSubFinish7100001, ["7100002"] = self.OnSubFinish7100002}
end

function Quest71000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7100001"] = self.OnSubFailed7100001, ["7100002"] = self.OnSubFailed7100002}
end

function Quest71000:Start()
    print("Start")
end

function Quest71000:OnDestroy()
    print("OnDestroy")
end

function Quest71000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71000:OnSubStart7100001(arg1)
    print("OnSubStart7100001")
end

function Quest71000:OnSubFinish7100001(arg1)
    print("OnSubFinish7100001")
end

function Quest71000:OnSubFailed7100001(arg1)
    print("OnSubFailed7100001")
end

function Quest71000:OnSubStart7100002(arg1)
    print("OnSubStart7100002")
end

function Quest71000:OnSubFinish7100002(arg1)
    print("OnSubFinish7100002")
end

function Quest71000:OnSubFailed7100002(arg1)
    print("OnSubFailed7100002")
end

return Quest71000
