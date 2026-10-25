require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75213 = class("Quest75213", QuestActorProxy)
Quest75213.defaultAlias = "Quest75213"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75213:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75213:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7521301"] = self.OnSubStart7521301,
        ["7521302"] = self.OnSubStart7521302,
        ["7521304"] = self.OnSubStart7521304,
        ["7521305"] = self.OnSubStart7521305,
        ["7521306"] = self.OnSubStart7521306,
        ["7521307"] = self.OnSubStart7521307,
        ["7521303"] = self.OnSubStart7521303
    }
end

function Quest75213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7521301"] = self.OnSubFinish7521301,
        ["7521302"] = self.OnSubFinish7521302,
        ["7521304"] = self.OnSubFinish7521304,
        ["7521305"] = self.OnSubFinish7521305,
        ["7521306"] = self.OnSubFinish7521306,
        ["7521307"] = self.OnSubFinish7521307,
        ["7521303"] = self.OnSubFinish7521303
    }
end

function Quest75213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75213:Start()
    print("Start")
end

function Quest75213:OnDestroy()
    print("OnDestroy")
end

function Quest75213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75213:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75213:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7521302Trigger")
end

function Quest75213:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75213:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75213:OnSubStart7521301(arg1)
    print("OnSubStart7521301")
    this:CreateQuestNpc(arg1, npcs.Npc6607.id, 0, false, 0)
end

function Quest75213:OnSubFinish7521301(arg1)
    print("OnSubFinish7521301")
end

function Quest75213:OnSubStart7521302(arg1)
    print("OnSubStart7521302")
    this:CreateQuestNpc(arg1, npcs.Npc22068.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22069.id, 0, false, 0)
end

function Quest75213:OnSubFinish7521302(arg1)
    print("OnSubFinish7521302")
end

function Quest75213:OnSubStart7521304(arg1)
    print("OnSubStart7521304")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7521304, 0, 15, 1, npcs.Npc6623.id)
end

function Quest75213:OnSubFinish7521304(arg1)
    print("OnSubFinish7521304")
    this:SafeDestroyQuestNpc(npcs.Npc6623.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22069.alias, 3)
end

function Quest75213:OnSubStart7521305(arg1)
    print("OnSubStart7521305")
    this:CreateQuestNpc(arg1, npcs.Npc22138.id, 0, false, 0)
end

function Quest75213:OnSubFinish7521305(arg1)
    print("OnSubFinish7521305")
end

function Quest75213:OnSubStart7521306(arg1)
    print("OnSubStart7521306")
    this:CreateQuestNpc(arg1, npcs.Npc22138.id, 0, false, 0)
end

function Quest75213:OnSubFinish7521306(arg1)
    print("OnSubFinish7521306")
    this:SafeDestroyQuestNpc(npcs.Npc22138.alias, 3)
end

function Quest75213:OnSubStart7521307(arg1)
    print("OnSubStart7521307")
    this:CreateQuestNpc(arg1, npcs.Npc22138.id, 0, false, 0)
end

function Quest75213:OnSubFinish7521307(arg1)
    print("OnSubFinish7521307")
    this:SafeDestroyQuestNpc(npcs.Npc22138.alias, 3)
end

function Quest75213:OnSubStart7521303(arg1)
    print("OnSubStart7521303")
end

function Quest75213:OnSubFinish7521303(arg1)
    print("OnSubFinish7521303")
    this:SafeDestroyQuestNpc(npcs.Npc22068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22069.alias, 3)
end

return Quest75213
