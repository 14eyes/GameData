require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72720 = class("Quest72720", QuestActorProxy)
Quest72720.defaultAlias = "Quest72720"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72720:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72720:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7272001"] = self.OnSubStart7272001}
end

function Quest72720:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7272001"] = self.OnSubFinish7272001}
end

function Quest72720:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72720:Start()
    print("Start")
end

function Quest72720:OnDestroy()
    print("OnDestroy")
end

function Quest72720:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72720:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72720:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72720:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7272001")
        actorUtils.FinishQuestID(false, 7272001)
    end
end

function Quest72720:OnSubStart7272001(arg1)
    print("OnSubStart7272001")
end

function Quest72720:OnSubFinish7272001(arg1)
    print("OnSubFinish7272001")
end

return Quest72720
