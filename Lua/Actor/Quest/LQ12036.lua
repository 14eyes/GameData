require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12036 = class("Quest12036", QuestActorProxy)
Quest12036.defaultAlias = "Quest12036"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12036:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1203601"] = self.OnSubStart1203601}
end

function Quest12036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1203601"] = self.OnSubFinish1203601}
end

function Quest12036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12036:Start()
    print("Start")
end

function Quest12036:OnDestroy()
    print("OnDestroy")
end

function Quest12036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12036:OnSubStart1203601(arg1)
    print("OnSubStart1203601")
    self:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12451Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12523Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12528Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12529Data.id, 0)
end

function Quest12036:OnSubFinish1203601(arg1)
    print("OnSubFinish1203601")
    self:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1033Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12451Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12523Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12528Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12529Data.alias, 3)
end

return Quest12036
