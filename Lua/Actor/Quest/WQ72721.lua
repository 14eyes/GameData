require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72721 = class("Quest72721", QuestActorProxy)
Quest72721.defaultAlias = "Quest72721"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72721:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72721:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7272101"] = self.OnSubStart7272101}
end

function Quest72721:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7272101"] = self.OnSubFinish7272101}
end

function Quest72721:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72721:Start()
    print("Start")
end

function Quest72721:OnDestroy()
    print("OnDestroy")
end

function Quest72721:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72721:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72721:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72721:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7272101")
        actorUtils.FinishQuestID(false, 7272101)
    end
end

function Quest72721:OnSubStart7272101(arg1)
    print("OnSubStart7272101")
end

function Quest72721:OnSubFinish7272101(arg1)
    print("OnSubFinish7272101")
end

return Quest72721
