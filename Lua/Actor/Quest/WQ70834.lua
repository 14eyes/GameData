require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70834 = class("Quest70834", QuestActorProxy)
Quest70834.defaultAlias = "Quest70834"
local clientData
local this
local mainID
local actorAlias

function Quest70834:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70834:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7083401"] = self.OnSubStart7083401,
        ["7083402"] = self.OnSubStart7083402,
        ["7083403"] = self.OnSubStart7083403,
        ["7083404"] = self.OnSubStart7083404,
        ["7083405"] = self.OnSubStart7083405
    }
end

function Quest70834:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7083401"] = self.OnSubFinish7083401,
        ["7083402"] = self.OnSubFinish7083402,
        ["7083403"] = self.OnSubFinish7083403,
        ["7083404"] = self.OnSubFinish7083404,
        ["7083405"] = self.OnSubFinish7083405
    }
end

function Quest70834:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70834:Start()
    print("Start")
end

function Quest70834:OnDestroy()
    print("OnDestroy")
end

function Quest70834:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70834:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70834:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70834:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70834:OnSubStart7083401(arg1)
    print("OnSubStart7083401")
end

function Quest70834:OnSubFinish7083401(arg1)
    print("OnSubFinish7083401")
end

function Quest70834:OnSubStart7083402(arg1)
    print("OnSubStart7083402")
end

function Quest70834:OnSubFinish7083402(arg1)
    print("OnSubFinish7083402")
end

function Quest70834:OnSubStart7083403(arg1)
    print("OnSubStart7083403")
end

function Quest70834:OnSubFinish7083403(arg1)
    print("OnSubFinish7083403")
end

function Quest70834:OnSubStart7083404(arg1)
    print("OnSubStart7083404")
end

function Quest70834:OnSubFinish7083404(arg1)
    print("OnSubFinish7083404")
end

function Quest70834:OnSubStart7083405(arg1)
    print("OnSubStart7083405")
end

function Quest70834:OnSubFinish7083405(arg1)
    print("OnSubFinish7083405")
end

return Quest70834
