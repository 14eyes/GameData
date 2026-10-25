require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71526 = class("Quest71526", QuestActorProxy)
Quest71526.defaultAlias = "Quest71526"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71526:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71526:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7152601"] = self.OnSubStart7152601,
        ["7152602"] = self.OnSubStart7152602,
        ["7152603"] = self.OnSubStart7152603
    }
end

function Quest71526:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7152601"] = self.OnSubFinish7152601,
        ["7152602"] = self.OnSubFinish7152602,
        ["7152603"] = self.OnSubFinish7152603
    }
end

function Quest71526:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7152601"] = self.OnSubFailed7152601,
        ["7152602"] = self.OnSubFailed7152602,
        ["7152603"] = self.OnSubFailed7152603
    }
end

function Quest71526:Start()
    print("Start")
end

function Quest71526:OnDestroy()
    print("OnDestroy")
end

function Quest71526:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71526:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71526:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13952.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30472.alias, 3)
    this:DestroyNpcTrigger("Q7152603N30472Trigger")
end

function Quest71526:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71526:OnSubStart7152601(arg1)
    print("OnSubStart7152601")
end

function Quest71526:OnSubFinish7152601(arg1)
    print("OnSubFinish7152601")
end

function Quest71526:OnSubFailed7152601(arg1)
    print("OnSubFailed7152601")
end

function Quest71526:OnSubStart7152602(arg1)
    print("OnSubStart7152602")
    this:CreateQuestNpc(arg1, npcs.Npc13952.id, 0)
end

function Quest71526:OnSubFinish7152602(arg1)
    print("OnSubFinish7152602")
    this:SafeDestroyQuestNpc(npcs.Npc13952.alias, 3)
end

function Quest71526:OnSubFailed7152602(arg1)
    print("OnSubFailed7152602")
end

function Quest71526:OnSubStart7152603(arg1)
    print("OnSubStart7152603")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc30472.id, 7152603, 0, 35)
    end)
end

function Quest71526:OnSubFinish7152603(arg1)
    print("OnSubFinish7152603")
    this:SafeDestroyQuestNpc(npcs.Npc30472.alias, 3)
end

function Quest71526:OnSubFailed7152603(arg1)
    print("OnSubFailed7152603")
end

return Quest71526
