require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76659 = class("Quest76659", QuestActorProxy)
Quest76659.defaultAlias = "Quest76659"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76659:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76659:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7665901"] = self.OnSubStart7665901}
end

function Quest76659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7665901"] = self.OnSubFinish7665901}
end

function Quest76659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76659:Start()
    print("Start")
end

function Quest76659:OnDestroy()
    print("OnDestroy")
end

function Quest76659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76659:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7053.alias, 3)
    this:DestroyNpcTrigger("Q7665901N7048Trigger")
end

function Quest76659:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76659:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76659:OnSubStart7665901(arg1)
    print("OnSubStart7665901")
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 76659):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7016.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7016.alias, 76659):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc7048.id, 0, 30, 7665901)
    this:GetQuestNpcActor(npcs.Npc7048.alias, 76659):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7053.alias, 76659):DoFreeStyle(1283, true, nil, true, true, false, false)
end

function Quest76659:OnSubFinish7665901(arg1)
    print("OnSubFinish7665901")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7053.alias, 3)
end

return Quest76659
