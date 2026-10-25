require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19116 = class("Quest19116", QuestActorProxy)
Quest19116.defaultAlias = "Quest19116"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19116:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1911601"] = self.OnSubStart1911601,
        ["1911602"] = self.OnSubStart1911602,
        ["1911603"] = self.OnSubStart1911603,
        ["1911604"] = self.OnSubStart1911604,
        ["1911605"] = self.OnSubStart1911605
    }
end

function Quest19116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1911601"] = self.OnSubFinish1911601,
        ["1911602"] = self.OnSubFinish1911602,
        ["1911603"] = self.OnSubFinish1911603,
        ["1911604"] = self.OnSubFinish1911604,
        ["1911605"] = self.OnSubFinish1911605
    }
end

function Quest19116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1911601"] = self.OnSubFailed1911601,
        ["1911602"] = self.OnSubFailed1911602,
        ["1911603"] = self.OnSubFailed1911603,
        ["1911604"] = self.OnSubFailed1911604,
        ["1911605"] = self.OnSubFailed1911605
    }
end

function Quest19116:Start()
    print("Start")
end

function Quest19116:OnDestroy()
    print("OnDestroy")
end

function Quest19116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19116:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19116:OnSubStart1911601(arg1)
    print("OnSubStart1911601")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911601)
end

function Quest19116:OnSubFinish1911601(arg1)
    print("OnSubFinish1911601")
end

function Quest19116:OnSubFailed1911601(arg1)
    print("OnSubFailed1911601")
end

function Quest19116:OnSubStart1911602(arg1)
    print("OnSubStart1911602")
end

function Quest19116:OnSubFinish1911602(arg1)
    print("OnSubFinish1911602")
end

function Quest19116:OnSubFailed1911602(arg1)
    print("OnSubFailed1911602")
end

function Quest19116:OnSubStart1911603(arg1)
    print("OnSubStart1911603")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911602)
end

function Quest19116:OnSubFinish1911603(arg1)
    print("OnSubFinish1911603")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19116:OnSubFailed1911603(arg1)
    print("OnSubFailed1911603")
end

function Quest19116:OnSubStart1911604(arg1)
    print("OnSubStart1911604")
    self:RemoveCoopInteractionDataFromSubStartPoint(105001, 1911601)
    self:RemoveCoopInteractionDataFromSubStartPoint(105001, 1911602)
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911603)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19116:OnSubFinish1911604(arg1)
    print("OnSubFinish1911604")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19116:OnSubFailed1911604(arg1)
    print("OnSubFailed1911604")
end

function Quest19116:OnSubStart1911605(arg1)
    print("OnSubStart1911605")
    self:RemoveCoopInteractionDataFromSubStartPoint(105001, 1911601)
    self:RemoveCoopInteractionDataFromSubStartPoint(105001, 1911602)
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911604)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19116:OnSubFinish1911605(arg1)
    print("OnSubFinish1911605")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19116:OnSubFailed1911605(arg1)
    print("OnSubFailed1911605")
end

return Quest19116
