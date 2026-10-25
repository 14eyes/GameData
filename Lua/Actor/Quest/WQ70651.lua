require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70651 = class("Quest70651", QuestActorProxy)
Quest70651.defaultAlias = "Quest70651"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70651:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70651:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065101"] = self.OnSubStart7065101, ["7065102"] = self.OnSubStart7065102}
end

function Quest70651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065101"] = self.OnSubFinish7065101, ["7065102"] = self.OnSubFinish7065102}
end

function Quest70651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065101"] = self.OnSubFailed7065101, ["7065102"] = self.OnSubFailed7065102}
end

function Quest70651:Start()
    print("Start")
end

function Quest70651:OnDestroy()
    print("OnDestroy")
end

function Quest70651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70651:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70651:OnSubStart7065101(arg1)
    print("OnSubStart7065101")
end

function Quest70651:OnSubFinish7065101(arg1)
    print("OnSubFinish7065101")
end

function Quest70651:OnSubFailed7065101(arg1)
    print("OnSubFailed7065101")
end

function Quest70651:OnSubStart7065102(arg1)
    print("OnSubStart7065102")
end

function Quest70651:OnSubFinish7065102(arg1)
    print("OnSubFinish7065102")
end

function Quest70651:OnSubFailed7065102(arg1)
    print("OnSubFailed7065102")
end

return Quest70651
