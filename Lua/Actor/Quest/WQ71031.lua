require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71031 = class("Quest71031", QuestActorProxy)
Quest71031.defaultAlias = "Quest71031"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71031:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7103101"] = self.OnSubStart7103101, ["7103102"] = self.OnSubStart7103102}
end

function Quest71031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7103101"] = self.OnSubFinish7103101, ["7103102"] = self.OnSubFinish7103102}
end

function Quest71031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7103101"] = self.OnSubFailed7103101, ["7103102"] = self.OnSubFailed7103102}
end

function Quest71031:Start()
    print("Start")
end

function Quest71031:OnDestroy()
    print("OnDestroy")
end

function Quest71031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71031:OnSubStart7103101(arg1)
    print("OnSubStart7103101")
end

function Quest71031:OnSubFinish7103101(arg1)
    print("OnSubFinish7103101")
end

function Quest71031:OnSubFailed7103101(arg1)
    print("OnSubFailed7103101")
end

function Quest71031:OnSubStart7103102(arg1)
    print("OnSubStart7103102")
end

function Quest71031:OnSubFinish7103102(arg1)
    print("OnSubFinish7103102")
end

function Quest71031:OnSubFailed7103102(arg1)
    print("OnSubFailed7103102")
end

return Quest71031
