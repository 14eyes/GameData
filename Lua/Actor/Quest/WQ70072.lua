require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70072 = class("Quest70072", QuestActorProxy)
Quest70072.defaultAlias = "Quest70072"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70072:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70072:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7007201"] = self.OnSubStart7007201,
        ["7007202"] = self.OnSubStart7007202,
        ["7007203"] = self.OnSubStart7007203
    }
end

function Quest70072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7007201"] = self.OnSubFinish7007201,
        ["7007202"] = self.OnSubFinish7007202,
        ["7007203"] = self.OnSubFinish7007203
    }
end

function Quest70072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70072:Start()
    print("Start")
end

function Quest70072:OnDestroy()
    print("OnDestroy")
end

function Quest70072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70072:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70072:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70072:OnSubStart7007201(arg1)
    print("OnSubStart7007201")
    this:CreateQuestNpc(arg1, npcs.Npc17061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17061.alias, 70072):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17060.alias, 70072):DoFreeStyle(4121, true, nil, true, true, false, true)
end

function Quest70072:OnSubFinish7007201(arg1)
    print("OnSubFinish7007201")
end

function Quest70072:OnSubStart7007202(arg1)
    print("OnSubStart7007202")
    this:CreateQuestNpc(arg1, npcs.Npc17060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17060.alias, 70072):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17061.alias, 70072):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest70072:OnSubFinish7007202(arg1)
    print("OnSubFinish7007202")
end

function Quest70072:OnSubStart7007203(arg1)
    print("OnSubStart7007203")
    this:CreateQuestNpc(arg1, npcs.Npc17060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17060.alias, 70072):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17061.alias, 70072):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest70072:OnSubFinish7007203(arg1)
    print("OnSubFinish7007203")
end

return Quest70072
