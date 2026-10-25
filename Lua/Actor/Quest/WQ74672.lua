require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74672 = class("Quest74672", QuestActorProxy)
Quest74672.defaultAlias = "Quest74672"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74672:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74672:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7467203"] = self.OnSubStart7467203,
        ["7467201"] = self.OnSubStart7467201,
        ["7467202"] = self.OnSubStart7467202
    }
end

function Quest74672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7467203"] = self.OnSubFinish7467203,
        ["7467201"] = self.OnSubFinish7467201,
        ["7467202"] = self.OnSubFinish7467202
    }
end

function Quest74672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74672:Start()
    print("Start")
end

function Quest74672:OnDestroy()
    print("OnDestroy")
end

function Quest74672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74672:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30423Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5075Data.alias, 3)
    this:DestroyNpcTrigger("Q7467201N30423Trigger")
    this:DestroyNpcTrigger("Q7467202N1070Trigger")
end

function Quest74672:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74672:OnSubStart7467203(arg1)
    print("OnSubStart7467203")
    actorUtils.FinishQuestID(false, 7467203)
end

function Quest74672:OnSubFinish7467203(arg1)
    print("OnSubFinish7467203")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7467203)
end

function Quest74672:OnSubStart7467201(arg1)
    print("OnSubStart7467201")
    this:NpcCreateWithNpcTrigger(npcs.Npc30423Data.id, 7467201, 0, 8)
    this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5075Data.id, 0)
end

function Quest74672:OnSubFinish7467201(arg1)
    print("OnSubFinish7467201")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30423Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5075Data.alias, 3)
end

function Quest74672:OnSubStart7467202(arg1)
    print("OnSubStart7467202")
    this:CreateQuestNpc(arg1, npcs.Npc30423Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 7467202, 0, 8)
    this:CreateQuestNpc(arg1, npcs.Npc5075Data.id, 0)
end

function Quest74672:OnSubFinish7467202(arg1)
    print("OnSubFinish7467202")
    this:SafeDestroyQuestNpc(npcs.Npc30423Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5075Data.alias, 3)
end

return Quest74672
