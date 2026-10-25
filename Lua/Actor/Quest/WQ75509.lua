require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75509 = class("Quest75509", QuestActorProxy)
Quest75509.defaultAlias = "Quest75509"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75509:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75509:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550901"] = self.OnSubStart7550901}
end

function Quest75509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550901"] = self.OnSubFinish7550901}
end

function Quest75509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75509:Start()
    print("Start")
end

function Quest75509:OnDestroy()
    print("OnDestroy")
end

function Quest75509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75509:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:LightNotifyTo(npcs.Npc30812.alias, 0, true)
    this:DestroyNpcTrigger("Q7550901N1087Trigger")
end

function Quest75509:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75509:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest75509:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75509:OnSubStart7550901(arg1)
    print("OnSubStart7550901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 15, 7550901)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 75509):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1097.alias, 75509):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc30812.alias, true, 1)
end

function Quest75509:OnSubFinish7550901(arg1)
    print("OnSubFinish7550901")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:LightNotifyTo(npcs.Npc30812.alias, 0, true)
end

return Quest75509
