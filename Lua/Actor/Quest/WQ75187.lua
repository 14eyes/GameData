require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75187 = class("Quest75187", QuestActorProxy)
Quest75187.defaultAlias = "Quest75187"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75187:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518703"] = self.OnSubStart7518703,
        ["7518701"] = self.OnSubStart7518701,
        ["7518702"] = self.OnSubStart7518702
    }
end

function Quest75187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518703"] = self.OnSubFinish7518703,
        ["7518701"] = self.OnSubFinish7518701,
        ["7518702"] = self.OnSubFinish7518702
    }
end

function Quest75187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75187:Start()
    print("Start")
end

function Quest75187:OnDestroy()
    print("OnDestroy")
end

function Quest75187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75187:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75187:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75187:OnSubStart7518703(arg1)
    print("OnSubStart7518703")
    actorUtils.FinishQuestID(false, 7518703)
end

function Quest75187:OnSubFinish7518703(arg1)
    print("OnSubFinish7518703")
end

function Quest75187:OnSubStart7518701(arg1)
    print("OnSubStart7518701")
end

function Quest75187:OnSubFinish7518701(arg1)
    print("OnSubFinish7518701")
end

function Quest75187:OnSubStart7518702(arg1)
    print("OnSubStart7518702")
    this:CreateQuestNpc(arg1, npcs.Npc21912.id, 0, false, 0)
end

function Quest75187:OnSubFinish7518702(arg1)
    print("OnSubFinish7518702")
    this:SafeDestroyQuestNpc(npcs.Npc21912.alias, 3)
end

return Quest75187
