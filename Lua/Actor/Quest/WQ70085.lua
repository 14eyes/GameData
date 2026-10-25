require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70085 = class("Quest70085", QuestActorProxy)
Quest70085.defaultAlias = "Quest70085"
local clientData
local this
local mainID
local actorAlias

function Quest70085:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70085:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008501"] = self.OnSubStart7008501, ["7008502"] = self.OnSubStart7008502}
end

function Quest70085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008501"] = self.OnSubFinish7008501, ["7008502"] = self.OnSubFinish7008502}
end

function Quest70085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7008502"] = self.OnSubFailed7008502}
end

function Quest70085:Start()
    print("Start")
end

function Quest70085:OnDestroy()
    print("OnDestroy")
end

function Quest70085:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70085:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70085:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70085:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70085:OnSubStart7008501(arg1)
    print("OnSubStart7008501")
end

function Quest70085:OnSubFinish7008501(arg1)
    print("OnSubFinish7008501")
end

function Quest70085:OnSubStart7008502(arg1)
    print("OnSubStart7008502")
end

function Quest70085:OnSubFinish7008502(arg1)
    print("OnSubFinish7008502")
end

function Quest70085:OnSubFailed7008502(arg1)
    print("OnSubFailed7008502")
    this:RecycleAllRes()
end

return Quest70085
