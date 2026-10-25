require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77198 = class("Quest77198", QuestActorProxy)
Quest77198.defaultAlias = "Quest77198"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77198:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77198:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7719801"] = self.OnSubStart7719801,
        ["7719802"] = self.OnSubStart7719802,
        ["7719803"] = self.OnSubStart7719803
    }
end

function Quest77198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7719801"] = self.OnSubFinish7719801,
        ["7719802"] = self.OnSubFinish7719802,
        ["7719803"] = self.OnSubFinish7719803
    }
end

function Quest77198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77198:Start()
    print("Start")
end

function Quest77198:OnDestroy()
    print("OnDestroy")
end

function Quest77198:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77198:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77198:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77198:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77198:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77198:OnSubStart7719801(arg1)
    print("OnSubStart7719801")
    actorUtils.FinishQuestWithParam({false}, {7719801})
end

function Quest77198:OnSubFinish7719801(arg1)
    print("OnSubFinish7719801")
end

function Quest77198:OnSubStart7719802(arg1)
    print("OnSubStart7719802")
end

function Quest77198:OnSubFinish7719802(arg1)
    print("OnSubFinish7719802")
end

function Quest77198:OnSubStart7719803(arg1)
    print("OnSubStart7719803")
    this:CreateQuestNpc(arg1, npcs.Npc22670.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22670.alias, 77198):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22671.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22671.alias, 77198):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest77198:OnSubFinish7719803(arg1)
    print("OnSubFinish7719803")
    this:NpcDestroyImmediately(3, npcs.Npc22670.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22671.alias)
end

return Quest77198
