require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77208 = class("Quest77208", QuestActorProxy)
Quest77208.defaultAlias = "Quest77208"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77208:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77208:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720801"] = self.OnSubStart7720801,
        ["7720804"] = self.OnSubStart7720804,
        ["7720802"] = self.OnSubStart7720802,
        ["7720803"] = self.OnSubStart7720803
    }
end

function Quest77208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720801"] = self.OnSubFinish7720801,
        ["7720804"] = self.OnSubFinish7720804,
        ["7720802"] = self.OnSubFinish7720802,
        ["7720803"] = self.OnSubFinish7720803
    }
end

function Quest77208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77208:Start()
    print("Start")
end

function Quest77208:OnDestroy()
    print("OnDestroy")
end

function Quest77208:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77208:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77208:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77208:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77208:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77208:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77208:OnSubStart7720801(arg1)
    print("OnSubStart7720801")
    this:CreateQuestNpc(arg1, npcs.Npc22682.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22682.alias, 77208):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22683.id, 0, false, 0)
end

function Quest77208:OnSubFinish7720801(arg1)
    print("OnSubFinish7720801")
    this:NpcDestroyImmediately(3, npcs.Npc22682.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22683.alias)
end

function Quest77208:OnSubStart7720804(arg1)
    print("OnSubStart7720804")
end

function Quest77208:OnSubFinish7720804(arg1)
    print("OnSubFinish7720804")
end

function Quest77208:OnSubStart7720802(arg1)
    print("OnSubStart7720802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7720802, 0, 50, 0.5, npcs.Npc22682.id)
    this:CreateQuestNpc(arg1, npcs.Npc22683.id, 0, false, 0)
end

function Quest77208:OnSubFinish7720802(arg1)
    print("OnSubFinish7720802")
    this:NpcDestroyImmediately(3, npcs.Npc22682.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22683.alias)
end

function Quest77208:OnSubStart7720803(arg1)
    print("OnSubStart7720803")
    this:CreateQuestNpc(arg1, npcs.Npc22682.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22682.alias, 77208):DoFreeStyle(4220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22683.id, 0, false, 0)
end

function Quest77208:OnSubFinish7720803(arg1)
    print("OnSubFinish7720803")
    this:NpcDestroyImmediately(3, npcs.Npc22682.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22683.alias)
end

return Quest77208
