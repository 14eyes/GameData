require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41131 = class("Quest41131", QuestActorProxy)
Quest41131.defaultAlias = "Quest41131"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41131:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4113101"] = self.OnSubStart4113101,
        ["4113102"] = self.OnSubStart4113102,
        ["4113103"] = self.OnSubStart4113103,
        ["4113104"] = self.OnSubStart4113104,
        ["4113105"] = self.OnSubStart4113105,
        ["4113106"] = self.OnSubStart4113106,
        ["4113107"] = self.OnSubStart4113107,
        ["4113108"] = self.OnSubStart4113108,
        ["4113109"] = self.OnSubStart4113109,
        ["4113110"] = self.OnSubStart4113110,
        ["4113111"] = self.OnSubStart4113111,
        ["4113112"] = self.OnSubStart4113112,
        ["4113113"] = self.OnSubStart4113113,
        ["4113114"] = self.OnSubStart4113114
    }
end

function Quest41131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4113101"] = self.OnSubFinish4113101,
        ["4113102"] = self.OnSubFinish4113102,
        ["4113103"] = self.OnSubFinish4113103,
        ["4113104"] = self.OnSubFinish4113104,
        ["4113105"] = self.OnSubFinish4113105,
        ["4113106"] = self.OnSubFinish4113106,
        ["4113107"] = self.OnSubFinish4113107,
        ["4113108"] = self.OnSubFinish4113108,
        ["4113109"] = self.OnSubFinish4113109,
        ["4113110"] = self.OnSubFinish4113110,
        ["4113111"] = self.OnSubFinish4113111,
        ["4113112"] = self.OnSubFinish4113112,
        ["4113113"] = self.OnSubFinish4113113,
        ["4113114"] = self.OnSubFinish4113114
    }
end

function Quest41131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4113101"] = self.OnSubFailed4113101,
        ["4113102"] = self.OnSubFailed4113102,
        ["4113103"] = self.OnSubFailed4113103,
        ["4113104"] = self.OnSubFailed4113104,
        ["4113105"] = self.OnSubFailed4113105,
        ["4113106"] = self.OnSubFailed4113106,
        ["4113107"] = self.OnSubFailed4113107,
        ["4113108"] = self.OnSubFailed4113108,
        ["4113109"] = self.OnSubFailed4113109,
        ["4113110"] = self.OnSubFailed4113110,
        ["4113111"] = self.OnSubFailed4113111,
        ["4113112"] = self.OnSubFailed4113112,
        ["4113113"] = self.OnSubFailed4113113,
        ["4113114"] = self.OnSubFailed4113114
    }
end

function Quest41131:Start()
    print("Start")
end

function Quest41131:OnDestroy()
    print("OnDestroy")
end

function Quest41131:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2072Data.alias, 0, true)
end

function Quest41131:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo(npcs.Npc2072Data.alias, 0, true)
end

function Quest41131:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc2072Data.alias, 0, true)
end

function Quest41131:OnSubStart4113101(arg1)
    print("OnSubStart4113101")
    self:NotifyTo(npcs.Npc2072Data.alias, 2, true)
    self:GetQuestVar(4113101, 1)
end

function Quest41131:OnSubFinish4113101(arg1)
    print("OnSubFinish4113101")
end

function Quest41131:OnSubFailed4113101(arg1)
    print("OnSubFailed4113101")
end

function Quest41131:OnSubStart4113102(arg1)
    print("SubStart4113102")
    self:GetQuestVar(4113101, 1)
    self:SetQuestVar(4113101, 1, 50)
    local questVar = self:GetQuestVar(4113101, 1)
    self:ShowQuestLikingBar(41131, 2072, questVar, false, "FETTER_EXP_NAME")
    print("showlikingbar")
end

function Quest41131:OnSubFinish4113102(arg1)
    print("OnSubFinish4113102")
end

function Quest41131:OnSubFailed4113102(arg1)
    print("OnSubFailed4113102")
end

function Quest41131:OnSubStart4113103(arg1)
    print("OnSubStart4113103")
end

function Quest41131:OnSubFinish4113103(arg1)
    self:GetQuestVar(4113101, 1)
    local n = self:GetQuestVar(4113101, 1) - 20
    self:GetQuestNpcActor(npcs.Npc2072Data.alias):DoFreeStyle(1120, false)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(4113101, 1, n)
end

function Quest41131:OnSubFailed4113103(arg1)
    print("OnSubFailed4113103")
end

function Quest41131:OnSubStart4113104(arg1)
    print("OnSubStart4113104")
end

function Quest41131:OnSubFinish4113104(arg1)
    self:GetQuestVar(4113101, 1)
    local n = self:GetQuestVar(4113101, 1) + 20
    self:GetQuestNpcActor(npcs.Npc2072Data.alias):DoFreeStyle(1190, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(4113101, 1, n)
end

function Quest41131:OnSubFailed4113104(arg1)
    print("OnSubFailed4113104")
end

function Quest41131:OnSubStart4113105(arg1)
    print("OnSubStart4113105")
end

function Quest41131:OnSubFinish4113105(arg1)
    print("OnSubFinish4113105")
end

function Quest41131:OnSubFailed4113105(arg1)
    print("OnSubFailed4113105")
end

function Quest41131:OnSubStart4113106(arg1)
    print("OnSubStart4113106")
end

function Quest41131:OnSubFinish4113106(arg1)
    self:GetQuestVar(4113101, 1)
    local n = self:GetQuestVar(4113101, 1) - 20
    self:GetQuestNpcActor(npcs.Npc2072Data.alias):DoFreeStyle(1120, false)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(4113101, 1, n)
end

function Quest41131:OnSubFailed4113106(arg1)
    print("OnSubFailed4113106")
end

function Quest41131:OnSubStart4113107(arg1)
    print("OnSubStart4113107")
end

function Quest41131:OnSubFinish4113107(arg1)
    self:GetQuestVar(4113101, 1)
    local n = self:GetQuestVar(4113101, 1) + 20
    self:GetQuestNpcActor(npcs.Npc2072Data.alias):DoFreeStyle(1190, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(4113101, 1, n)
end

function Quest41131:OnSubFailed4113107(arg1)
    print("OnSubFailed4113107")
end

function Quest41131:OnSubStart4113108(arg1)
    print("OnSubStart4113108")
end

function Quest41131:OnSubFinish4113108(arg1)
    print("OnSubFinish4113108")
end

function Quest41131:OnSubFailed4113108(arg1)
    print("OnSubFailed4113108")
end

function Quest41131:OnSubStart4113109(arg1)
    print("OnSubStart4113109")
end

function Quest41131:OnSubFinish4113109(arg1)
    self:GetQuestVar(4113101, 1)
    local n = self:GetQuestVar(4113101, 1) - 20
    self:GetQuestNpcActor(npcs.Npc2072Data.alias):DoFreeStyle(1120, true)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(4113101, 1, n)
end

function Quest41131:OnSubFailed4113109(arg1)
    print("OnSubFailed4113109")
end

function Quest41131:OnSubStart4113110(arg1)
    print("OnSubStart4113110")
end

function Quest41131:OnSubFinish4113110(arg1)
    self:GetQuestVar(4113101, 1)
    local n = self:GetQuestVar(4113101, 1) + 20
    self:GetQuestNpcActor(npcs.Npc2072Data.alias):DoFreeStyle(1190, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(4113101, 1, n)
end

function Quest41131:OnSubFailed4113110(arg1)
    print("OnSubFailed4113110")
end

function Quest41131:OnSubStart4113111(arg1)
    print("OnSubStart4113111")
end

function Quest41131:OnSubFinish4113111(arg1)
    print("SubFinish4113111")
    self:HideQuestLikingBar()
end

function Quest41131:OnSubFailed4113111(arg1)
    print("OnSubFailed4113111")
end

function Quest41131:OnSubStart4113112(arg1)
    print("OnSubStart4113112")
end

function Quest41131:OnSubFinish4113112(arg1)
    print("OnSubFinish4113112")
end

function Quest41131:OnSubFailed4113112(arg1)
    print("OnSubFailed4113112")
end

function Quest41131:OnSubStart4113113(arg1)
    print("OnSubStart4113113")
end

function Quest41131:OnSubFinish4113113(arg1)
    print("OnSubFinish4113113")
end

function Quest41131:OnSubFailed4113113(arg1)
    print("OnSubFailed4113113")
end

function Quest41131:OnSubStart4113114(arg1)
    print("SubStart4113114")
    self:HideQuestLikingBar()
end

function Quest41131:OnSubFinish4113114(arg1)
    print("OnSubFinish4113114")
end

function Quest41131:OnSubFailed4113114(arg1)
    print("OnSubFailed4113114")
end

return Quest41131
