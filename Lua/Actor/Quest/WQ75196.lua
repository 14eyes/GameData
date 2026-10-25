require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75196 = class("Quest75196", QuestActorProxy)
Quest75196.defaultAlias = "Quest75196"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75196:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75196:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7519601"] = self.OnSubStart7519601, ["7519602"] = self.OnSubStart7519602}
end

function Quest75196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7519601"] = self.OnSubFinish7519601, ["7519602"] = self.OnSubFinish7519602}
end

function Quest75196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75196:Start()
    print("Start")
end

function Quest75196:OnDestroy()
    print("OnDestroy")
end

function Quest75196:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75196:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75196:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75196:OnSubStart7519601(arg1)
    print("OnSubStart7519601")
end

function Quest75196:OnSubFinish7519601(arg1)
    print("OnSubFinish7519601")
end

function Quest75196:OnSubStart7519602(arg1)
    print("OnSubStart7519602")
end

function Quest75196:OnSubFinish7519602(arg1)
    print("OnSubFinish7519602")
end

return Quest75196
