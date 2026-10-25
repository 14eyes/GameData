require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19118 = class("Quest19118", QuestActorProxy)
Quest19118.defaultAlias = "Quest19118"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19118:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19118:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1911806"] = self.OnSubStart1911806,
        ["1911801"] = self.OnSubStart1911801,
        ["1911805"] = self.OnSubStart1911805,
        ["1911804"] = self.OnSubStart1911804,
        ["1911803"] = self.OnSubStart1911803,
        ["1911802"] = self.OnSubStart1911802
    }
end

function Quest19118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1911806"] = self.OnSubFinish1911806,
        ["1911801"] = self.OnSubFinish1911801,
        ["1911805"] = self.OnSubFinish1911805,
        ["1911804"] = self.OnSubFinish1911804,
        ["1911803"] = self.OnSubFinish1911803,
        ["1911802"] = self.OnSubFinish1911802
    }
end

function Quest19118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1911806"] = self.OnSubFailed1911806,
        ["1911801"] = self.OnSubFailed1911801,
        ["1911805"] = self.OnSubFailed1911805,
        ["1911804"] = self.OnSubFailed1911804,
        ["1911803"] = self.OnSubFailed1911803,
        ["1911802"] = self.OnSubFailed1911802
    }
end

function Quest19118:Start()
    print("Start")
end

function Quest19118:OnDestroy()
    print("OnDestroy")
end

function Quest19118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19118:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12294Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12295Data.alias, 3)
end

function Quest19118:OnSubStart1911806(arg1)
    print("OnSubStart1911806")
    self:RemoveCoopInteractionDataFromSubStartPoint(105001, 1911801)
    self:RemoveCoopInteractionDataFromSubStartPoint(105001, 1911802)
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911803)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19118:OnSubFinish1911806(arg1)
    print("OnSubFinish1911806")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19118:OnSubFailed1911806(arg1)
    print("OnSubFailed1911806")
end

function Quest19118:OnSubStart1911801(arg1)
    print("OnSubStart1911801")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12294Data.id, 2)
end

function Quest19118:OnSubFinish1911801(arg1)
    print("OnSubFinish1911801")
    self:SafeDestroyQuestNpc(npcs.Npc12294Data.alias, 3)
end

function Quest19118:OnSubFailed1911801(arg1)
    print("OnSubFailed1911801")
end

function Quest19118:OnSubStart1911805(arg1)
    print("OnSubStart1911805")
    self:CreateQuestNpc(arg1, npcs.Npc12295Data.id, 1)
end

function Quest19118:OnSubFinish1911805(arg1)
    print("OnSubFinish1911805")
    self:SafeDestroyQuestNpc(npcs.Npc12295Data.alias, 3)
end

function Quest19118:OnSubFailed1911805(arg1)
    print("OnSubFailed1911805")
end

function Quest19118:OnSubStart1911804(arg1)
    print("OnSubStart1911804")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911802)
end

function Quest19118:OnSubFinish1911804(arg1)
    print("OnSubFinish1911804")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19118:OnSubFailed1911804(arg1)
    print("OnSubFailed1911804")
end

function Quest19118:OnSubStart1911803(arg1)
    print("OnSubStart1911803")
end

function Quest19118:OnSubFinish1911803(arg1)
    print("OnSubFinish1911803")
end

function Quest19118:OnSubFailed1911803(arg1)
    print("OnSubFailed1911803")
end

function Quest19118:OnSubStart1911802(arg1)
    print("OnSubStart1911802")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911801)
end

function Quest19118:OnSubFinish1911802(arg1)
    print("OnSubFinish1911802")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19118:OnSubFailed1911802(arg1)
    print("OnSubFailed1911802")
end

return Quest19118
