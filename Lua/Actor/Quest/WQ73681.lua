require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73681 = class("Quest73681", QuestActorProxy)
Quest73681.defaultAlias = "Quest73681"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73681:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73681:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7368101"] = self.OnSubStart7368101}
end

function Quest73681:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7368101"] = self.OnSubFinish7368101}
end

function Quest73681:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73681:Start()
    print("Start")
end

function Quest73681:OnDestroy()
    print("OnDestroy")
end

function Quest73681:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73681:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73681:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30243Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30244Data.alias, 0, true)
end

function Quest73681:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73681:OnSubStart7368101(arg1)
    print("OnSubStart7368101")
    self:CreateQuestNpc(arg1, npcs.Npc30234Data.id, 1)
    self:NotifyTo(npcs.Npc30243Data.alias, 1, true)
    self:NotifyTo(npcs.Npc30244Data.alias, 1, true)
end

function Quest73681:OnSubFinish7368101(arg1)
    print("OnSubFinish7368101")
    self:NpcDestroy(npcs.Npc30234Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30243Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30244Data.alias, 0, true)
end

return Quest73681
