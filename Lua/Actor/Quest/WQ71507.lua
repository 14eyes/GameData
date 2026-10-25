require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71507 = class("Quest71507", QuestActorProxy)
Quest71507.defaultAlias = "Quest71507"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71507:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71507:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7150701"] = self.OnSubStart7150701}
end

function Quest71507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7150701"] = self.OnSubFinish7150701}
end

function Quest71507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71507:Start()
    print("Start")
end

function Quest71507:OnDestroy()
    print("OnDestroy")
end

function Quest71507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71507:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71507:OnSubStart7150701(arg1)
    print("OnSubStart7150701")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71507:OnSubFinish7150701(arg1)
    print("OnSubFinish7150701")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

return Quest71507
