require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40152 = class("Quest40152", QuestActorProxy)
Quest40152.defaultAlias = "Quest40152"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40152:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40152:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4015201"] = self.OnSubStart4015201}
end

function Quest40152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4015201"] = self.OnSubFinish4015201}
end

function Quest40152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40152:Start()
    print("Start")
end

function Quest40152:OnDestroy()
    print("OnDestroy")
end

function Quest40152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40152:OnSubStart4015201(arg1)
    print("OnSubStart4015201")
    actorUtils.FinishQuestID(false, 4015201)
end

function Quest40152:OnSubFinish4015201(arg1)
    print("OnSubFinish4015201")
end

return Quest40152
