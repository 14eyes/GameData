require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40239 = class("Quest40239", QuestActorProxy)
Quest40239.defaultAlias = "Quest40239"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40239:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40239:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4023901"] = self.OnSubStart4023901,
        ["4023902"] = self.OnSubStart4023902,
        ["4023903"] = self.OnSubStart4023903,
        ["4023904"] = self.OnSubStart4023904
    }
end

function Quest40239:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4023901"] = self.OnSubFinish4023901,
        ["4023902"] = self.OnSubFinish4023902,
        ["4023903"] = self.OnSubFinish4023903,
        ["4023904"] = self.OnSubFinish4023904
    }
end

function Quest40239:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40239:Start()
    print("Start")
end

function Quest40239:OnDestroy()
    print("OnDestroy")
end

function Quest40239:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40239:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40239:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:RecycleAllRes()
    this:DestroyNpcTrigger("Q4023903N16350Trigger")
end

function Quest40239:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest40239:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40239:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40239:OnSubStart4023901(arg1)
    print("OnSubStart4023901")
end

function Quest40239:OnSubFinish4023901(arg1)
    print("OnSubFinish4023901")
end

function Quest40239:OnSubStart4023902(arg1)
    print("OnSubStart4023902")
    this:QuestNarratorTask(datas.NarratorWithId_4023902, nil)
    actorUtils.FinishQuestWithParam({false}, {4023902})
end

function Quest40239:OnSubFinish4023902(arg1)
    print("OnSubFinish4023902")
end

function Quest40239:OnSubStart4023903(arg1)
    print("OnSubStart4023903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023903, 0, 20, 2, npcs.Npc16350.id)
end

function Quest40239:OnSubFinish4023903(arg1)
    print("OnSubFinish4023903")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ClearNarratorTask()
end

function Quest40239:OnSubStart4023904(arg1)
    print("OnSubStart4023904")
end

function Quest40239:OnSubFinish4023904(arg1)
    print("OnSubFinish4023904")
end

return Quest40239
