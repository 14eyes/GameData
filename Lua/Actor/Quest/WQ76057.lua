require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76057 = class("Quest76057", QuestActorProxy)
Quest76057.defaultAlias = "Quest76057"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76057:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76057:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7605701"] = self.OnSubStart7605701, ["7605702"] = self.OnSubStart7605702}
end

function Quest76057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7605701"] = self.OnSubFinish7605701, ["7605702"] = self.OnSubFinish7605702}
end

function Quest76057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76057:Start()
    print("Start")
end

function Quest76057:OnDestroy()
    print("OnDestroy")
end

function Quest76057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76057:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76057:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76057:OnSubStart7605701(arg1)
    print("OnSubStart7605701")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
end

function Quest76057:OnSubFinish7605701(arg1)
    print("OnSubFinish7605701")
end

function Quest76057:OnSubStart7605702(arg1)
    print("OnSubStart7605702")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
end

function Quest76057:OnSubFinish7605702(arg1)
    print("OnSubFinish7605702")
end

return Quest76057
