require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72685 = class("Quest72685", QuestActorProxy)
Quest72685.defaultAlias = "Quest72685"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72685:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72685:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7268501"] = self.OnSubStart7268501}
end

function Quest72685:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7268501"] = self.OnSubFinish7268501}
end

function Quest72685:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72685:Start()
    print("Start")
end

function Quest72685:OnDestroy()
    print("OnDestroy")
end

function Quest72685:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72685:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72685:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30064Data.alias, 3)
end

function Quest72685:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7268501")
        actorUtils.FinishQuestID(false, 7268501)
    end
end

function Quest72685:OnSubStart7268501(arg1)
    print("OnSubStart7268501")
end

function Quest72685:OnSubFinish7268501(arg1)
    print("OnSubFinish7268501")
end

return Quest72685
