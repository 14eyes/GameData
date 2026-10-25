require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40156 = class("Quest40156", QuestActorProxy)
Quest40156.defaultAlias = "Quest40156"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40156:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40156:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4015601"] = self.OnSubStart4015601}
end

function Quest40156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4015601"] = self.OnSubFinish4015601}
end

function Quest40156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40156:Start()
    print("Start")
end

function Quest40156:OnDestroy()
    print("OnDestroy")
end

function Quest40156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40156:OnSubStart4015601(arg1)
    print("OnSubStart4015601")
    actorUtils.FinishQuestID(false, 4015601)
end

function Quest40156:OnSubFinish4015601(arg1)
    print("OnSubFinish4015601")
end

return Quest40156
