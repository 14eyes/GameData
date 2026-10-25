require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70820 = class("Quest70820", QuestActorProxy)
Quest70820.defaultAlias = "Quest70820"
local clientData
local this
local mainID
local actorAlias

function Quest70820:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70820:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7082001"] = self.OnSubStart7082001, ["7082002"] = self.OnSubStart7082002}
end

function Quest70820:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7082001"] = self.OnSubFinish7082001, ["7082002"] = self.OnSubFinish7082002}
end

function Quest70820:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70820:Start()
    print("Start")
end

function Quest70820:OnDestroy()
    print("OnDestroy")
end

function Quest70820:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70820:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70820:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70820:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70820:OnSubStart7082001(arg1)
    print("OnSubStart7082001")
end

function Quest70820:OnSubFinish7082001(arg1)
    print("OnSubFinish7082001")
end

function Quest70820:OnSubStart7082002(arg1)
    print("OnSubStart7082002")
end

function Quest70820:OnSubFinish7082002(arg1)
    print("OnSubFinish7082002")
end

return Quest70820
