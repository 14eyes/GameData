require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71508 = class("Quest71508", QuestActorProxy)
Quest71508.defaultAlias = "Quest71508"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71508:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71508:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7150801"] = self.OnSubStart7150801}
end

function Quest71508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7150801"] = self.OnSubFinish7150801}
end

function Quest71508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71508:Start()
    print("Start")
end

function Quest71508:OnDestroy()
    print("OnDestroy")
end

function Quest71508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71508:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71508:OnSubStart7150801(arg1)
    print("OnSubStart7150801")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71508:OnSubFinish7150801(arg1)
    print("OnSubFinish7150801")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

return Quest71508
