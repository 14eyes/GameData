require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75192 = class("Quest75192", QuestActorProxy)
Quest75192.defaultAlias = "Quest75192"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75192:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75192:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519201"] = self.OnSubStart7519201,
        ["7519202"] = self.OnSubStart7519202,
        ["7519203"] = self.OnSubStart7519203
    }
end

function Quest75192:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519201"] = self.OnSubFinish7519201,
        ["7519202"] = self.OnSubFinish7519202,
        ["7519203"] = self.OnSubFinish7519203
    }
end

function Quest75192:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75192:Start()
    print("Start")
end

function Quest75192:OnDestroy()
    print("OnDestroy")
end

function Quest75192:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75192:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75192:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75192:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75192:OnSubStart7519201(arg1)
    print("OnSubStart7519201")
end

function Quest75192:OnSubFinish7519201(arg1)
    print("OnSubFinish7519201")
end

function Quest75192:OnSubStart7519202(arg1)
    print("OnSubStart7519202")
    this:CreateQuestNpc(arg1, npcs.Npc21808.id, 0, false, 0)
end

function Quest75192:OnSubFinish7519202(arg1)
    print("OnSubFinish7519202")
    this:SafeDestroyQuestNpc(npcs.Npc21808.alias, 101)
end

function Quest75192:OnSubStart7519203(arg1)
    print("OnSubStart7519203")
end

function Quest75192:OnSubFinish7519203(arg1)
    print("OnSubFinish7519203")
end

return Quest75192
