require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71515 = class("Quest71515", QuestActorProxy)
Quest71515.defaultAlias = "Quest71515"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71515:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71515:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151501"] = self.OnSubStart7151501, ["7151502"] = self.OnSubStart7151502}
end

function Quest71515:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151501"] = self.OnSubFinish7151501, ["7151502"] = self.OnSubFinish7151502}
end

function Quest71515:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71515:Start()
    print("Start")
end

function Quest71515:OnDestroy()
    print("OnDestroy")
end

function Quest71515:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71515:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71515:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30306Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30307Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30308Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7151501NPCtrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7151502N30308Trigger", 3, false)
end

function Quest71515:OnSubStart7151501(arg1)
    print("OnSubStart7151501")
    this:CreateQuestNpc(arg1, npcs.Npc30306Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30308Data.id, 3)
    this:CreateQuestNpcWithTrigger("Q7151501NPCtrigger", 7151501, 30307, 2, 10)
    this:GetQuestNpcActor(npcs.Npc30306Data.alias):DoFreeStyle(4260, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30307Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30308Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
end

function Quest71515:OnSubFinish7151501(arg1)
    print("OnSubFinish7151501")
end

function Quest71515:OnSubStart7151502(arg1)
    print("OnSubStart7151502")
    this:GetQuestNpcActor(npcs.Npc30306Data.alias):DoFreeStyle(4260, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30307Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30308Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
end

function Quest71515:OnSubFinish7151502(arg1)
    print("OnSubFinish7151502")
    this:SafeDestroyQuestNpc(npcs.Npc30306Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30307Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30308Data.alias, 3)
end

return Quest71515
