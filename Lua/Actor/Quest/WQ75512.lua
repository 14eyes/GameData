require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75512 = class("Quest75512", QuestActorProxy)
Quest75512.defaultAlias = "Quest75512"
local clientData
local this
local mainID
local actorAlias

function Quest75512:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75512:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7551201"] = self.OnSubStart7551201}
end

function Quest75512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7551201"] = self.OnSubFinish7551201}
end

function Quest75512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75512:Start()
    print("Start")
end

function Quest75512:OnDestroy()
    print("OnDestroy")
end

function Quest75512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest75512:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75512:OnSubStart7551201(arg1)
    print("OnSubStart7551201")
end

function Quest75512:OnSubFinish7551201(arg1)
    print("OnSubFinish7551201")
end

return Quest75512
