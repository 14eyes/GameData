require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76080 = class("Quest76080", QuestActorProxy)
Quest76080.defaultAlias = "Quest76080"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76080:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7608001"] = self.OnSubStart7608001,
        ["7608002"] = self.OnSubStart7608002,
        ["7608003"] = self.OnSubStart7608003,
        ["7608004"] = self.OnSubStart7608004
    }
end

function Quest76080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7608001"] = self.OnSubFinish7608001,
        ["7608002"] = self.OnSubFinish7608002,
        ["7608003"] = self.OnSubFinish7608003,
        ["7608004"] = self.OnSubFinish7608004
    }
end

function Quest76080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76080:Start()
    print("Start")
end

function Quest76080:OnDestroy()
    print("OnDestroy")
end

function Quest76080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76080:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76080:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76080:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76080:OnSubStart7608001(arg1)
    print("OnSubStart7608001")
end

function Quest76080:OnSubFinish7608001(arg1)
    print("OnSubFinish7608001")
end

function Quest76080:OnSubStart7608002(arg1)
    print("OnSubStart7608002")
    this:CreateQuestNpc(arg1, npcs.Npc22185.id, 0, false, 0)
end

function Quest76080:OnSubFinish7608002(arg1)
    print("OnSubFinish7608002")
    this:SafeDestroyQuestNpc(npcs.Npc22185.alias, 3)
end

function Quest76080:OnSubStart7608003(arg1)
    print("OnSubStart7608003")
end

function Quest76080:OnSubFinish7608003(arg1)
    print("OnSubFinish7608003")
end

function Quest76080:OnSubStart7608004(arg1)
    print("OnSubStart7608004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608004, 0, 40, 0, npcs.Npc22185.id)
end

function Quest76080:OnSubFinish7608004(arg1)
    print("OnSubFinish7608004")
    this:SafeDestroyQuestNpc(npcs.Npc22185.alias, 3)
end

return Quest76080
