require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72687 = class("Quest72687", QuestActorProxy)
Quest72687.defaultAlias = "Quest72687"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72687:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72687:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7268701"] = self.OnSubStart7268701,
        ["7268702"] = self.OnSubStart7268702,
        ["7268703"] = self.OnSubStart7268703
    }
end

function Quest72687:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7268701"] = self.OnSubFinish7268701,
        ["7268702"] = self.OnSubFinish7268702,
        ["7268703"] = self.OnSubFinish7268703
    }
end

function Quest72687:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72687:Start()
    print("Start")
end

function Quest72687:OnDestroy()
    print("OnDestroy")
end

function Quest72687:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72687:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72687:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30171Data.alias, 3)
end

function Quest72687:OnSubStart7268701(arg1)
    print("OnSubStart7268701")
end

function Quest72687:OnSubFinish7268701(arg1)
    print("OnSubFinish7268701")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(855)
    end)
end

function Quest72687:OnSubStart7268702(arg1)
    print("OnSubStart7268702")
end

function Quest72687:OnSubFinish7268702(arg1)
    print("OnSubFinish7268702")
end

function Quest72687:OnSubStart7268703(arg1)
    print("OnSubStart7268703")
end

function Quest72687:OnSubFinish7268703(arg1)
    print("OnSubFinish7268703")
end

return Quest72687
