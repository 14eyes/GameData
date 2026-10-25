require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77156 = class("Quest77156", QuestActorProxy)
Quest77156.defaultAlias = "Quest77156"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77156:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77156:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715601"] = self.OnSubStart7715601,
        ["7715602"] = self.OnSubStart7715602,
        ["7715604"] = self.OnSubStart7715604,
        ["7715603"] = self.OnSubStart7715603
    }
end

function Quest77156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715601"] = self.OnSubFinish7715601,
        ["7715602"] = self.OnSubFinish7715602,
        ["7715604"] = self.OnSubFinish7715604,
        ["7715603"] = self.OnSubFinish7715603
    }
end

function Quest77156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77156:Start()
    print("Start")
end

function Quest77156:OnDestroy()
    print("OnDestroy")
end

function Quest77156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77156:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77156:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77156:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77156:OnSubStart7715601(arg1)
    print("OnSubStart7715601")
end

function Quest77156:OnSubFinish7715601(arg1)
    print("OnSubFinish7715601")
end

function Quest77156:OnSubStart7715602(arg1)
    print("OnSubStart7715602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715602, 0, 30, 2, npcs.Npc17333_1.id)
end

function Quest77156:OnSubFinish7715602(arg1)
    print("OnSubFinish7715602")
    this:NpcDestroyImmediately(1159, npcs.Npc17333_1.alias)
end

function Quest77156:OnSubStart7715604(arg1)
    print("OnSubStart7715604")
end

function Quest77156:OnSubFinish7715604(arg1)
    print("OnSubFinish7715604")
end

function Quest77156:OnSubStart7715603(arg1)
    print("OnSubStart7715603")
end

function Quest77156:OnSubFinish7715603(arg1)
    print("OnSubFinish7715603")
end

return Quest77156
