require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75109 = class("Quest75109", QuestActorProxy)
Quest75109.defaultAlias = "Quest75109"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75109:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75109:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7510901"] = self.OnSubStart7510901}
end

function Quest75109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7510901"] = self.OnSubFinish7510901}
end

function Quest75109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75109:Start()
    print("Start")
end

function Quest75109:OnDestroy()
    print("OnDestroy")
end

function Quest75109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75109:OnSubStart7510901(arg1)
    print("OnSubStart7510901")
    actorUtils.FinishQuestID(false, 7510901)
end

function Quest75109:OnSubFinish7510901(arg1)
    print("OnSubFinish7510901")
end

return Quest75109
