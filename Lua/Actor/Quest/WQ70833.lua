require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70833 = class("Quest70833", QuestActorProxy)
Quest70833.defaultAlias = "Quest70833"
local clientData
local this
local mainID
local actorAlias

function Quest70833:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70833:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7083301"] = self.OnSubStart7083301, ["7083302"] = self.OnSubStart7083302}
end

function Quest70833:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7083301"] = self.OnSubFinish7083301, ["7083302"] = self.OnSubFinish7083302}
end

function Quest70833:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70833:Start()
    print("Start")
end

function Quest70833:OnDestroy()
    print("OnDestroy")
end

function Quest70833:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70833:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70833:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70833:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70833:OnSubStart7083301(arg1)
    print("OnSubStart7083301")
end

function Quest70833:OnSubFinish7083301(arg1)
    print("OnSubFinish7083301")
end

function Quest70833:OnSubStart7083302(arg1)
    print("OnSubStart7083302")
end

function Quest70833:OnSubFinish7083302(arg1)
    print("OnSubFinish7083302")
end

return Quest70833
