require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76072 = class("Quest76072", QuestActorProxy)
Quest76072.defaultAlias = "Quest76072"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76072:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76072:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607201"] = self.OnSubStart7607201,
        ["7607202"] = self.OnSubStart7607202,
        ["7607203"] = self.OnSubStart7607203
    }
end

function Quest76072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607201"] = self.OnSubFinish7607201,
        ["7607202"] = self.OnSubFinish7607202,
        ["7607203"] = self.OnSubFinish7607203
    }
end

function Quest76072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76072:Start()
    print("Start")
end

function Quest76072:OnDestroy()
    print("OnDestroy")
end

function Quest76072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76072:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76072:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76072:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76072:OnSubStart7607201(arg1)
    print("OnSubStart7607201")
    this:CreateQuestNpc(arg1, npcs.Npc22289.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22290.id, 0, false, 0)
end

function Quest76072:OnSubFinish7607201(arg1)
    print("OnSubFinish7607201")
end

function Quest76072:OnSubStart7607202(arg1)
    print("OnSubStart7607202")
end

function Quest76072:OnSubFinish7607202(arg1)
    print("OnSubFinish7607202")
end

function Quest76072:OnSubStart7607203(arg1)
    print("OnSubStart7607203")
end

function Quest76072:OnSubFinish7607203(arg1)
    print("OnSubFinish7607203")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22289.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22290.alias)
end

return Quest76072
