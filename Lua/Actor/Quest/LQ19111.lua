require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19111 = class("Quest19111", QuestActorProxy)
Quest19111.defaultAlias = "Quest19111"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19111:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19111:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1911101"] = self.OnSubStart1911101}
end

function Quest19111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1911101"] = self.OnSubFinish1911101}
end

function Quest19111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1911101"] = self.OnSubFailed1911101}
end

function Quest19111:Start()
    print("Start")
end

function Quest19111:OnDestroy()
    print("OnDestroy")
end

function Quest19111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19111:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12149Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3102Data.alias, 0, true)
end

function Quest19111:OnSubStart1911101(arg1)
    print("OnSubStart1911101")
    self:CreateQuestNpcWithTrigger("1911101trigger", subIDs.q1911101, npcs.Npc12148Data.id, 1, 8)
    self:CreateQuestNpc(arg1, npcs.Npc12149Data.id, 2)
    self:NotifyTo(npcs.Npc3102Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911101)
end

function Quest19111:OnSubFinish1911101(arg1)
    print("OnSubFinish1911101")
    self:SafeDestroyQuestNpc(npcs.Npc12148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12149Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3102Data.alias, 0, true)
end

function Quest19111:OnSubFailed1911101(arg1)
    print("OnSubFailed1911101")
end

return Quest19111
