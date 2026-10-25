require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77152 = class("Quest77152", QuestActorProxy)
Quest77152.defaultAlias = "Quest77152"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77152:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77152:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715201"] = self.OnSubStart7715201,
        ["7715202"] = self.OnSubStart7715202,
        ["7715203"] = self.OnSubStart7715203,
        ["7715204"] = self.OnSubStart7715204,
        ["7715205"] = self.OnSubStart7715205
    }
end

function Quest77152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715201"] = self.OnSubFinish7715201,
        ["7715202"] = self.OnSubFinish7715202,
        ["7715203"] = self.OnSubFinish7715203,
        ["7715204"] = self.OnSubFinish7715204,
        ["7715205"] = self.OnSubFinish7715205
    }
end

function Quest77152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77152:Start()
    print("Start")
end

function Quest77152:OnDestroy()
    print("OnDestroy")
end

function Quest77152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77152:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77152:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77152:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77152:OnSubStart7715201(arg1)
    print("OnSubStart7715201")
    this:CreateQuestNpc(arg1, npcs.Npc22588.id, 0, false, 0)
end

function Quest77152:OnSubFinish7715201(arg1)
    print("OnSubFinish7715201")
end

function Quest77152:OnSubStart7715202(arg1)
    print("OnSubStart7715202")
    this:CreateQuestNpc(arg1, npcs.Npc22588.id, 0, false, 0)
end

function Quest77152:OnSubFinish7715202(arg1)
    print("OnSubFinish7715202")
end

function Quest77152:OnSubStart7715203(arg1)
    print("OnSubStart7715203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715203, 0, 25, 0.5, npcs.Npc22588.id)
end

function Quest77152:OnSubFinish7715203(arg1)
    print("OnSubFinish7715203")
    this:NpcDestroyImmediately(3, npcs.Npc22588.alias)
end

function Quest77152:OnSubStart7715204(arg1)
    print("OnSubStart7715204")
    this:CreateQuestNpc(arg1, npcs.Npc22589.id, 0, false, 0)
end

function Quest77152:OnSubFinish7715204(arg1)
    print("OnSubFinish7715204")
end

function Quest77152:OnSubStart7715205(arg1)
    print("OnSubStart7715205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715205, 0, 25, 0.5, npcs.Npc22589.id)
end

function Quest77152:OnSubFinish7715205(arg1)
    print("OnSubFinish7715205")
    this:NpcDestroyImmediately(3, npcs.Npc22589.alias)
end

return Quest77152
