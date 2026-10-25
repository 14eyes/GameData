require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70116 = class("Quest70116", QuestActorProxy)
Quest70116.defaultAlias = "Quest70116"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70116:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7011601"] = self.OnSubStart7011601,
        ["7011602"] = self.OnSubStart7011602,
        ["7011603"] = self.OnSubStart7011603,
        ["7011604"] = self.OnSubStart7011604
    }
end

function Quest70116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7011601"] = self.OnSubFinish7011601,
        ["7011602"] = self.OnSubFinish7011602,
        ["7011603"] = self.OnSubFinish7011603,
        ["7011604"] = self.OnSubFinish7011604
    }
end

function Quest70116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70116:Start()
    print("Start")
end

function Quest70116:OnDestroy()
    print("OnDestroy")
end

function Quest70116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70116:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70116:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70116:OnSubStart7011601(arg1)
    print("OnSubStart7011601")
    this:CreateQuestNpc(arg1, npcs.Npc17091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17091.alias, 70116):DoFreeStyle(8010, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17092.alias, 70116):DoFreeStyle(8010, true, nil, true, true, false, true)
end

function Quest70116:OnSubFinish7011601(arg1)
    print("OnSubFinish7011601")
end

function Quest70116:OnSubStart7011602(arg1)
    print("OnSubStart7011602")
end

function Quest70116:OnSubFinish7011602(arg1)
    print("OnSubFinish7011602")
end

function Quest70116:OnSubStart7011603(arg1)
    print("OnSubStart7011603")
    this:CreateQuestNpc(arg1, npcs.Npc17091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17091.alias, 70116):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17092.alias, 70116):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc17091.alias, "", true)
end

function Quest70116:OnSubFinish7011603(arg1)
    print("OnSubFinish7011603")
end

function Quest70116:OnSubStart7011604(arg1)
    print("OnSubStart7011604")
    this:CreateQuestNpc(arg1, npcs.Npc17091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17091.alias, 70116):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17092.alias, 70116):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest70116:OnSubFinish7011604(arg1)
    print("OnSubFinish7011604")
end

return Quest70116
