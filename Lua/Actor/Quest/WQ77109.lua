require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77109 = class("Quest77109", QuestActorProxy)
Quest77109.defaultAlias = "Quest77109"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77109:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710901"] = self.OnSubStart7710901,
        ["7710902"] = self.OnSubStart7710902,
        ["7710903"] = self.OnSubStart7710903,
        ["7710904"] = self.OnSubStart7710904
    }
end

function Quest77109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710901"] = self.OnSubFinish7710901,
        ["7710902"] = self.OnSubFinish7710902,
        ["7710903"] = self.OnSubFinish7710903,
        ["7710904"] = self.OnSubFinish7710904
    }
end

function Quest77109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77109:Start()
    print("Start")
end

function Quest77109:OnDestroy()
    print("OnDestroy")
end

function Quest77109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77109:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77109:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77109:OnSubStart7710901(arg1)
    print("OnSubStart7710901")
    this:CreateQuestNpc(arg1, npcs.Npc22324.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22325.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22326.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22329.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22332.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22331.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22333.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22334.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22875.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22876.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22864.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22865.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22866.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22867.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22868.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22869.id, 0, false, 0)
end

function Quest77109:OnSubFinish7710901(arg1)
    print("OnSubFinish7710901")
    this:SafeDestroyQuestNpc(npcs.Npc22324.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22325.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22326.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22329.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22332.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22331.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22333.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22334.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22875.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22876.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22864.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22865.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22866.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22867.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22868.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22869.alias, 3)
end

function Quest77109:OnSubStart7710902(arg1)
    print("OnSubStart7710902")
end

function Quest77109:OnSubFinish7710902(arg1)
    print("OnSubFinish7710902")
end

function Quest77109:OnSubStart7710903(arg1)
    print("OnSubStart7710903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710903, 0, 11, 0, npcs.Npc22655.id)
end

function Quest77109:OnSubFinish7710903(arg1)
    print("OnSubFinish7710903")
    this:SafeDestroyQuestNpc(npcs.Npc22655.alias, 3)
end

function Quest77109:OnSubStart7710904(arg1)
    print("OnSubStart7710904")
end

function Quest77109:OnSubFinish7710904(arg1)
    print("OnSubFinish7710904")
end

return Quest77109
