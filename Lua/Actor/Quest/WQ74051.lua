require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74051 = class("Quest74051", QuestActorProxy)
Quest74051.defaultAlias = "Quest74051"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74051:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74051:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405103"] = self.OnSubStart7405103,
        ["7405104"] = self.OnSubStart7405104,
        ["7405105"] = self.OnSubStart7405105,
        ["7405106"] = self.OnSubStart7405106,
        ["7405107"] = self.OnSubStart7405107,
        ["7405108"] = self.OnSubStart7405108,
        ["7405109"] = self.OnSubStart7405109,
        ["7405111"] = self.OnSubStart7405111,
        ["7405112"] = self.OnSubStart7405112,
        ["7405113"] = self.OnSubStart7405113,
        ["7405102"] = self.OnSubStart7405102,
        ["7405110"] = self.OnSubStart7405110,
        ["7405101"] = self.OnSubStart7405101
    }
end

function Quest74051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405103"] = self.OnSubFinish7405103,
        ["7405104"] = self.OnSubFinish7405104,
        ["7405105"] = self.OnSubFinish7405105,
        ["7405106"] = self.OnSubFinish7405106,
        ["7405107"] = self.OnSubFinish7405107,
        ["7405108"] = self.OnSubFinish7405108,
        ["7405109"] = self.OnSubFinish7405109,
        ["7405111"] = self.OnSubFinish7405111,
        ["7405112"] = self.OnSubFinish7405112,
        ["7405113"] = self.OnSubFinish7405113,
        ["7405102"] = self.OnSubFinish7405102,
        ["7405110"] = self.OnSubFinish7405110,
        ["7405101"] = self.OnSubFinish7405101
    }
end

function Quest74051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74051:Start()
    print("Start")
end

function Quest74051:OnDestroy()
    print("OnDestroy")
end

function Quest74051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74051:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13489Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13490Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13491Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7405105N13489Trigger", 3, false)
end

function Quest74051:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74051:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74051:OnSubStart7405103(arg1)
    print("OnSubStart7405103")
end

function Quest74051:OnSubFinish7405103(arg1)
    print("OnSubFinish7405103")
end

function Quest74051:OnSubStart7405104(arg1)
    print("OnSubStart7405104")
    this:CreateQuestNpc(arg1, npcs.Npc13489Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13490Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13491Data.id, 0)
end

function Quest74051:OnSubFinish7405104(arg1)
    print("OnSubFinish7405104")
    this:SafeDestroyQuestNpc(npcs.Npc13490Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13491Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13489Data.alias, 3)
end

function Quest74051:OnSubStart7405105(arg1)
    print("OnSubStart7405105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13489Data.id, 7405105, 1, 20, 2)
end

function Quest74051:OnSubFinish7405105(arg1)
    print("OnSubFinish7405105")
    this:SafeDestroyQuestNpc(npcs.Npc13489Data.alias, 3)
end

function Quest74051:OnSubStart7405106(arg1)
    print("OnSubStart7405106")
end

function Quest74051:OnSubFinish7405106(arg1)
    print("OnSubFinish7405106")
end

function Quest74051:OnSubStart7405107(arg1)
    print("OnSubStart7405107")
end

function Quest74051:OnSubFinish7405107(arg1)
    print("OnSubFinish7405107")
end

function Quest74051:OnSubStart7405108(arg1)
    print("OnSubStart7405108")
end

function Quest74051:OnSubFinish7405108(arg1)
    print("OnSubFinish7405108")
end

function Quest74051:OnSubStart7405109(arg1)
    print("OnSubStart7405109")
end

function Quest74051:OnSubFinish7405109(arg1)
    print("OnSubFinish7405109")
end

function Quest74051:OnSubStart7405111(arg1)
    print("OnSubStart7405111")
end

function Quest74051:OnSubFinish7405111(arg1)
    print("OnSubFinish7405111")
end

function Quest74051:OnSubStart7405112(arg1)
    print("OnSubStart7405112")
end

function Quest74051:OnSubFinish7405112(arg1)
    print("OnSubFinish7405112")
end

function Quest74051:OnSubStart7405113(arg1)
    print("OnSubStart7405113")
end

function Quest74051:OnSubFinish7405113(arg1)
    print("OnSubFinish7405113")
end

function Quest74051:OnSubStart7405102(arg1)
    print("OnSubStart7405102")
end

function Quest74051:OnSubFinish7405102(arg1)
    print("OnSubFinish7405102")
end

function Quest74051:OnSubStart7405110(arg1)
    print("OnSubStart7405110")
end

function Quest74051:OnSubFinish7405110(arg1)
    print("OnSubFinish7405110")
end

function Quest74051:OnSubStart7405101(arg1)
    print("OnSubStart7405101")
end

function Quest74051:OnSubFinish7405101(arg1)
    print("OnSubFinish7405101")
end

return Quest74051
