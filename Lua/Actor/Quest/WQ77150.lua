require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77150 = class("Quest77150", QuestActorProxy)
Quest77150.defaultAlias = "Quest77150"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77150:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77150:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715001"] = self.OnSubStart7715001,
        ["7715002"] = self.OnSubStart7715002,
        ["7715003"] = self.OnSubStart7715003,
        ["7715004"] = self.OnSubStart7715004,
        ["7715005"] = self.OnSubStart7715005,
        ["7715006"] = self.OnSubStart7715006,
        ["7715007"] = self.OnSubStart7715007
    }
end

function Quest77150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715001"] = self.OnSubFinish7715001,
        ["7715002"] = self.OnSubFinish7715002,
        ["7715003"] = self.OnSubFinish7715003,
        ["7715004"] = self.OnSubFinish7715004,
        ["7715005"] = self.OnSubFinish7715005,
        ["7715006"] = self.OnSubFinish7715006,
        ["7715007"] = self.OnSubFinish7715007
    }
end

function Quest77150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7715003"] = self.OnSubFailed7715003,
        ["7715005"] = self.OnSubFailed7715005,
        ["7715007"] = self.OnSubFailed7715007
    }
end

function Quest77150:Start()
    print("Start")
end

function Quest77150:OnDestroy()
    print("OnDestroy")
end

function Quest77150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77150:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77150:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77150:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77150:OnSubStart7715001(arg1)
    print("OnSubStart7715001")
end

function Quest77150:OnSubFinish7715001(arg1)
    print("OnSubFinish7715001")
end

function Quest77150:OnSubStart7715002(arg1)
    print("OnSubStart7715002")
end

function Quest77150:OnSubFinish7715002(arg1)
    print("OnSubFinish7715002")
end

function Quest77150:OnSubStart7715003(arg1)
    print("OnSubStart7715003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715003, 0, 30, 0, npcs.Npc22640.id)
end

function Quest77150:OnSubFinish7715003(arg1)
    print("OnSubFinish7715003")
    this:NpcDestroyImmediately(3, npcs.Npc22640.alias)
end

function Quest77150:OnSubFailed7715003(arg1)
    print("OnSubFailed7715003")
    this:RecycleAllRes()
end

function Quest77150:OnSubStart7715004(arg1)
    print("OnSubStart7715004")
end

function Quest77150:OnSubFinish7715004(arg1)
    print("OnSubFinish7715004")
end

function Quest77150:OnSubStart7715005(arg1)
    print("OnSubStart7715005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715005, 0, 30, 0, npcs.Npc22641.id)
end

function Quest77150:OnSubFinish7715005(arg1)
    print("OnSubFinish7715005")
    this:NpcDestroyImmediately(3, npcs.Npc22641.alias)
end

function Quest77150:OnSubFailed7715005(arg1)
    print("OnSubFailed7715005")
    this:RecycleAllRes()
end

function Quest77150:OnSubStart7715006(arg1)
    print("OnSubStart7715006")
end

function Quest77150:OnSubFinish7715006(arg1)
    print("OnSubFinish7715006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715006, 0, 30, 0, npcs.Npc22642.id)
end

function Quest77150:OnSubStart7715007(arg1)
    print("OnSubStart7715007")
end

function Quest77150:OnSubFinish7715007(arg1)
    print("OnSubFinish7715007")
    this:NpcDestroyImmediately(3, npcs.Npc22642.alias)
end

function Quest77150:OnSubFailed7715007(arg1)
    print("OnSubFailed7715007")
    this:RecycleAllRes()
end

return Quest77150
