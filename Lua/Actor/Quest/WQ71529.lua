require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71529 = class("Quest71529", QuestActorProxy)
Quest71529.defaultAlias = "Quest71529"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71529:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71529:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7152901"] = self.OnSubStart7152901,
        ["7152902"] = self.OnSubStart7152902,
        ["7152903"] = self.OnSubStart7152903
    }
end

function Quest71529:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7152901"] = self.OnSubFinish7152901,
        ["7152902"] = self.OnSubFinish7152902,
        ["7152903"] = self.OnSubFinish7152903
    }
end

function Quest71529:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7152901"] = self.OnSubFailed7152901,
        ["7152902"] = self.OnSubFailed7152902,
        ["7152903"] = self.OnSubFailed7152903
    }
end

function Quest71529:Start()
    print("Start")
end

function Quest71529:OnDestroy()
    print("OnDestroy")
end

function Quest71529:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71529:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71529:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13954.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30473.alias, 3)
    this:DestroyNpcTrigger("Q7152903N30473Trigger")
end

function Quest71529:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71529:OnSubStart7152901(arg1)
    print("OnSubStart7152901")
end

function Quest71529:OnSubFinish7152901(arg1)
    print("OnSubFinish7152901")
end

function Quest71529:OnSubFailed7152901(arg1)
    print("OnSubFailed7152901")
end

function Quest71529:OnSubStart7152902(arg1)
    print("OnSubStart7152902")
    this:CreateQuestNpc(arg1, npcs.Npc13954.id, 0)
end

function Quest71529:OnSubFinish7152902(arg1)
    print("OnSubFinish7152902")
    this:SafeDestroyQuestNpc(npcs.Npc13954.alias, 3)
end

function Quest71529:OnSubFailed7152902(arg1)
    print("OnSubFailed7152902")
end

function Quest71529:OnSubStart7152903(arg1)
    print("OnSubStart7152903")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc30473.id, 7152903, 0, 35)
    end)
end

function Quest71529:OnSubFinish7152903(arg1)
    print("OnSubFinish7152903")
    this:SafeDestroyQuestNpc(npcs.Npc30473.alias, 3)
end

function Quest71529:OnSubFailed7152903(arg1)
    print("OnSubFailed7152903")
end

return Quest71529
