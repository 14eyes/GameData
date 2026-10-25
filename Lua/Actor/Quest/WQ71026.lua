require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71026 = class("Quest71026", QuestActorProxy)
Quest71026.defaultAlias = "Quest71026"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71026:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102601"] = self.OnSubStart7102601, ["7102602"] = self.OnSubStart7102602}
end

function Quest71026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102601"] = self.OnSubFinish7102601, ["7102602"] = self.OnSubFinish7102602}
end

function Quest71026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102601"] = self.OnSubFailed7102601, ["7102602"] = self.OnSubFailed7102602}
end

function Quest71026:Start()
    print("Start")
end

function Quest71026:OnDestroy()
    print("OnDestroy")
end

function Quest71026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71026:OnSubStart7102601(arg1)
    print("OnSubStart7102601")
end

function Quest71026:OnSubFinish7102601(arg1)
    print("OnSubFinish7102601")
end

function Quest71026:OnSubFailed7102601(arg1)
    print("OnSubFailed7102601")
end

function Quest71026:OnSubStart7102602(arg1)
    print("OnSubStart7102602")
end

function Quest71026:OnSubFinish7102602(arg1)
    print("OnSubFinish7102602")
end

function Quest71026:OnSubFailed7102602(arg1)
    print("OnSubFailed7102602")
end

return Quest71026
