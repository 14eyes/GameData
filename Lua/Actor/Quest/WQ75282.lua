require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75282 = class("Quest75282", QuestActorProxy)
Quest75282.defaultAlias = "Quest75282"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75282:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75282:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7528201"] = self.OnSubStart7528201,
        ["7528202"] = self.OnSubStart7528202,
        ["7528203"] = self.OnSubStart7528203
    }
end

function Quest75282:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7528201"] = self.OnSubFinish7528201,
        ["7528202"] = self.OnSubFinish7528202,
        ["7528203"] = self.OnSubFinish7528203
    }
end

function Quest75282:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75282:Start()
    print("Start")
end

function Quest75282:OnDestroy()
    print("OnDestroy")
end

function Quest75282:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75282:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75282:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75282:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75282:OnSubStart7528201(arg1)
    print("OnSubStart7528201")
    this:CreateQuestNpc(arg1, npcs.Npc6646.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6647.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6648.id, 0, false, 0)
end

function Quest75282:OnSubFinish7528201(arg1)
    print("OnSubFinish7528201")
end

function Quest75282:OnSubStart7528202(arg1)
    print("OnSubStart7528202")
end

function Quest75282:OnSubFinish7528202(arg1)
    print("OnSubFinish7528202")
end

function Quest75282:OnSubStart7528203(arg1)
    print("OnSubStart7528203")
end

function Quest75282:OnSubFinish7528203(arg1)
    print("OnSubFinish7528203")
end

return Quest75282
