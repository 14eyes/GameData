require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77238 = class("Quest77238", QuestActorProxy)
Quest77238.defaultAlias = "Quest77238"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77238:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77238:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7723801"] = self.OnSubStart7723801,
        ["7723802"] = self.OnSubStart7723802,
        ["7723803"] = self.OnSubStart7723803,
        ["7723804"] = self.OnSubStart7723804,
        ["7723805"] = self.OnSubStart7723805
    }
end

function Quest77238:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7723801"] = self.OnSubFinish7723801,
        ["7723802"] = self.OnSubFinish7723802,
        ["7723803"] = self.OnSubFinish7723803,
        ["7723804"] = self.OnSubFinish7723804,
        ["7723805"] = self.OnSubFinish7723805
    }
end

function Quest77238:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77238:Start()
    print("Start")
end

function Quest77238:OnDestroy()
    print("OnDestroy")
end

function Quest77238:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77238:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77238:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77238:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77238:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77238:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77238:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77238:OnSubStart7723801(arg1)
    print("OnSubStart7723801")
    this:CreateQuestNpc(arg1, npcs.Npc22784.id, 0, false, 0)
end

function Quest77238:OnSubFinish7723801(arg1)
    print("OnSubFinish7723801")
end

function Quest77238:OnSubStart7723802(arg1)
    print("OnSubStart7723802")
end

function Quest77238:OnSubFinish7723802(arg1)
    print("OnSubFinish7723802")
end

function Quest77238:OnSubStart7723803(arg1)
    print("OnSubStart7723803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7723803, 0, 50, 0.5, npcs.Npc22785.id)
end

function Quest77238:OnSubFinish7723803(arg1)
    print("OnSubFinish7723803")
    this:NpcDestroyImmediately(3, npcs.Npc22785.alias)
end

function Quest77238:OnSubStart7723804(arg1)
    print("OnSubStart7723804")
    this:NpcCreateWithNpcTrigger(npcs.Npc22784.id, 0, 10, 7723804)
end

function Quest77238:OnSubFinish7723804(arg1)
    print("OnSubFinish7723804")
    this:NpcDestroyImmediately(3, npcs.Npc22784.alias)
end

function Quest77238:OnSubStart7723805(arg1)
    print("OnSubStart7723805")
    this:CreateQuestNpc(arg1, npcs.Npc22737.id, 0, false, 0)
end

function Quest77238:OnSubFinish7723805(arg1)
    print("OnSubFinish7723805")
    this:NpcDestroyImmediately(3, npcs.Npc22737.alias)
end

return Quest77238
