require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11017 = class("Quest11017", QuestActorProxy)
Quest11017.defaultAlias = "Quest11017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11017:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1101701"] = self.OnSubStart1101701}
end

function Quest11017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1101701"] = self.OnSubFinish1101701}
end

function Quest11017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1101701"] = self.OnSubFailed1101701}
end

function Quest11017:Start()
    print("Start")
end

function Quest11017:OnDestroy()
    print("OnDestroy")
end

function Quest11017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11017:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest11017:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest11017:OnSubStart1101701(arg1)
    print("OnSubStart1101701")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc2143Data.id, 1)
    end)
end

function Quest11017:OnSubFinish1101701(arg1)
    print("OnSubFinish1101701")
    self:NpcDestroy(npcs.Npc2143Data.alias, 3)
end

function Quest11017:OnSubFailed1101701(arg1)
    print("OnSubFailed1101701")
    self:TransmitPlayerWithTextByQuestId(1101701, 1, {"QUEST_Message_Q1101503"}, 3.5)
end

return Quest11017
