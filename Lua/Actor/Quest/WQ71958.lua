require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71958 = class("Quest71958", QuestActorProxy)
Quest71958.defaultAlias = "Quest71958"
local clientData
local this
local mainID
local actorAlias

function Quest71958:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71958:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7195801"] = self.OnSubStart7195801}
end

function Quest71958:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7195801"] = self.OnSubFinish7195801}
end

function Quest71958:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71958:Start()
    print("Start")
end

function Quest71958:OnDestroy()
    print("OnDestroy")
end

function Quest71958:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71958:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71958:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71958:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest71958:OnSubStart7195801(arg1)
    print("OnSubStart7195801")
    actorUtils.FinishQuestID(false, 7195801)
end

function Quest71958:OnSubFinish7195801(arg1)
    print("OnSubFinish7195801")
end

return Quest71958
