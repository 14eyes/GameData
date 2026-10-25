require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72698 = class("Quest72698", QuestActorProxy)
Quest72698.defaultAlias = "Quest72698"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72698:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72698:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7269801"] = self.OnSubStart7269801}
end

function Quest72698:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7269801"] = self.OnSubFinish7269801}
end

function Quest72698:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72698:Start()
    print("Start")
end

function Quest72698:OnDestroy()
    print("OnDestroy")
end

function Quest72698:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72698:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72698:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72698:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7269801")
        actorUtils.FinishQuestID(false, 7269801)
    end
end

function Quest72698:OnSubStart7269801(arg1)
    print("OnSubStart7269801")
end

function Quest72698:OnSubFinish7269801(arg1)
    print("OnSubFinish7269801")
end

return Quest72698
