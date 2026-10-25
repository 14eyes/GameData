require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71527 = class("Quest71527", QuestActorProxy)
Quest71527.defaultAlias = "Quest71527"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71527:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71527:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7152701"] = self.OnSubStart7152701,
        ["7152702"] = self.OnSubStart7152702,
        ["7152703"] = self.OnSubStart7152703
    }
end

function Quest71527:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7152701"] = self.OnSubFinish7152701,
        ["7152702"] = self.OnSubFinish7152702,
        ["7152703"] = self.OnSubFinish7152703
    }
end

function Quest71527:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7152701"] = self.OnSubFailed7152701,
        ["7152702"] = self.OnSubFailed7152702,
        ["7152703"] = self.OnSubFailed7152703
    }
end

function Quest71527:Start()
    print("Start")
end

function Quest71527:OnDestroy()
    print("OnDestroy")
end

function Quest71527:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71527:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71527:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13953.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30467.alias, 3)
    this:DestroyNpcTrigger("Q7152703N30467Trigger")
end

function Quest71527:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71527:OnSubStart7152701(arg1)
    print("OnSubStart7152701")
end

function Quest71527:OnSubFinish7152701(arg1)
    print("OnSubFinish7152701")
end

function Quest71527:OnSubFailed7152701(arg1)
    print("OnSubFailed7152701")
end

function Quest71527:OnSubStart7152702(arg1)
    print("OnSubStart7152702")
    this:CreateQuestNpc(arg1, npcs.Npc13953.id, 0)
end

function Quest71527:OnSubFinish7152702(arg1)
    print("OnSubFinish7152702")
    this:SafeDestroyQuestNpc(npcs.Npc13953.alias, 3)
end

function Quest71527:OnSubFailed7152702(arg1)
    print("OnSubFailed7152702")
end

function Quest71527:OnSubStart7152703(arg1)
    print("OnSubStart7152703")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc30467.id, 7152703, 0, 35)
    end)
end

function Quest71527:OnSubFinish7152703(arg1)
    print("OnSubFinish7152703")
    this:SafeDestroyQuestNpc(npcs.Npc30467.alias, 3)
end

function Quest71527:OnSubFailed7152703(arg1)
    print("OnSubFailed7152703")
end

return Quest71527
