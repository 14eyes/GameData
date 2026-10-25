require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70536 = class("Quest70536", QuestActorProxy)
Quest70536.defaultAlias = "Quest70536"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70536:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70536:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7053601"] = self.OnSubStart7053601,
        ["7053602"] = self.OnSubStart7053602,
        ["7053603"] = self.OnSubStart7053603
    }
end

function Quest70536:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7053601"] = self.OnSubFinish7053601,
        ["7053602"] = self.OnSubFinish7053602,
        ["7053603"] = self.OnSubFinish7053603
    }
end

function Quest70536:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70536:Start()
    print("Start")
end

function Quest70536:OnDestroy()
    print("OnDestroy")
end

function Quest70536:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70536:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70536:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30399Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30399Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q7053602N10090Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7053603N10090Trigger", 3, false)
end

function Quest70536:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest70536:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest70536:OnSubStart7053601(arg1)
    print("OnSubStart7053601")
    this:DailyNpcSafeHideSelf(npcs.Npc30399Data.alias, 1, true)
end

function Quest70536:OnSubFinish7053601(arg1)
    print("OnSubFinish7053601")
end

function Quest70536:OnSubStart7053602(arg1)
    print("OnSubStart7053602")
    this:NpcCreateWithNpcTrigger(npcs.Npc10090Data.id, 7053602, 0, 8)
end

function Quest70536:OnSubFinish7053602(arg1)
    print("OnSubFinish7053602")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
end

function Quest70536:OnSubStart7053603(arg1)
    print("OnSubStart7053603")
    this:NpcCreateWithNpcTrigger(npcs.Npc10090Data.id, 7053603, 0, 8)
end

function Quest70536:OnSubFinish7053603(arg1)
    print("OnSubFinish7053603")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
end

return Quest70536
