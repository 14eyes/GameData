require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70112 = class("Quest70112", QuestActorProxy)
Quest70112.defaultAlias = "Quest70112"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70112:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7011201"] = self.OnSubStart7011201,
        ["7011202"] = self.OnSubStart7011202,
        ["7011203"] = self.OnSubStart7011203,
        ["7011204"] = self.OnSubStart7011204,
        ["7011205"] = self.OnSubStart7011205,
        ["7011206"] = self.OnSubStart7011206
    }
end

function Quest70112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7011201"] = self.OnSubFinish7011201,
        ["7011202"] = self.OnSubFinish7011202,
        ["7011203"] = self.OnSubFinish7011203,
        ["7011204"] = self.OnSubFinish7011204,
        ["7011205"] = self.OnSubFinish7011205,
        ["7011206"] = self.OnSubFinish7011206
    }
end

function Quest70112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70112:Start()
    print("Start")
end

function Quest70112:OnDestroy()
    print("OnDestroy")
end

function Quest70112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70112:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70112:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70112:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70112:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70112:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest70112:OnSubStart7011201(arg1)
    print("OnSubStart7011201")
    actorUtils.FinishQuestID(false, 7011201)
end

function Quest70112:OnSubFinish7011201(arg1)
    print("OnSubFinish7011201")
end

function Quest70112:OnSubStart7011202(arg1)
    print("OnSubStart7011202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7011202, 0, 40, 1, npcs.Npc22491.id)
end

function Quest70112:OnSubFinish7011202(arg1)
    print("OnSubFinish7011202")
    this:NpcDestroyImmediately(103, npcs.Npc22491.alias)
end

function Quest70112:OnSubStart7011203(arg1)
    print("OnSubStart7011203")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22491.id, arg1)
end

function Quest70112:OnSubFinish7011203(arg1)
    print("OnSubFinish7011203")
end

function Quest70112:OnSubStart7011204(arg1)
    print("OnSubStart7011204")
    this:CallDelayByQuest("delaytalk", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7011204, 0, 40, 1, npcs.Npc22491.id)
    end)
end

function Quest70112:OnSubFinish7011204(arg1)
    print("OnSubFinish7011204")
    this:NpcDestroyImmediately(103, npcs.Npc22491.alias)
end

function Quest70112:OnSubStart7011205(arg1)
    print("OnSubStart7011205")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22491.id, arg1)
end

function Quest70112:OnSubFinish7011205(arg1)
    print("OnSubFinish7011205")
end

function Quest70112:OnSubStart7011206(arg1)
    print("OnSubStart7011206")
    this:CallDelayByQuest("delaytalk", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7011206, 0, 30, 1, npcs.Npc22491.id)
    end)
end

function Quest70112:OnSubFinish7011206(arg1)
    print("OnSubFinish7011206")
    this:NpcDestroyImmediately(103, npcs.Npc22491.alias)
end

return Quest70112
