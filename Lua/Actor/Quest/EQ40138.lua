require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40138 = class("Quest40138", QuestActorProxy)
Quest40138.defaultAlias = "Quest40138"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40138:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40138:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4013801"] = self.OnSubStart4013801}
end

function Quest40138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4013801"] = self.OnSubFinish4013801}
end

function Quest40138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40138:Start()
    print("Start")
end

function Quest40138:OnDestroy()
    print("OnDestroy")
end

function Quest40138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40138:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40138:OnSubStart4013801(arg1)
    print("OnSubStart4013801")
    actorUtils.FinishQuestID(false, 4013801)
end

function Quest40138:OnSubFinish4013801(arg1)
    print("OnSubFinish4013801")
end

return Quest40138
