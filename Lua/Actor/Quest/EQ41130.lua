require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41130 = class("Quest41130", QuestActorProxy)
Quest41130.defaultAlias = "Quest41130"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41130:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4113001"] = self.OnSubStart4113001,
        ["4113002"] = self.OnSubStart4113002,
        ["4113003"] = self.OnSubStart4113003,
        ["4113004"] = self.OnSubStart4113004
    }
end

function Quest41130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4113001"] = self.OnSubFinish4113001,
        ["4113002"] = self.OnSubFinish4113002,
        ["4113003"] = self.OnSubFinish4113003,
        ["4113004"] = self.OnSubFinish4113004
    }
end

function Quest41130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4113001"] = self.OnSubFailed4113001,
        ["4113002"] = self.OnSubFailed4113002,
        ["4113003"] = self.OnSubFailed4113003,
        ["4113004"] = self.OnSubFailed4113004
    }
end

function Quest41130:Start()
    print("Start")
end

function Quest41130:OnDestroy()
    print("OnDestroy")
end

function Quest41130:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc30010Data.alias, 0, true)
end

function Quest41130:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo(npcs.Npc30010Data.alias, 0, true)
end

function Quest41130:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc30010Data.alias, 0, true)
end

function Quest41130:ShowNPC()
    print("ShowNPC")
    self:GetQuestNpcActor(npcs.Npc30010Data.alias):ShowSelf()
end

function Quest41130:OnSubStart4113001(arg1)
    print("OnSubStart4113001")
    self:NotifyTo(npcs.Npc30010Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc30010Data.id, 0)
end

function Quest41130:OnSubFinish4113001(arg1)
    print("OnSubFinish4113001")
end

function Quest41130:OnSubFailed4113001(arg1)
    print("OnSubFailed4113001")
end

function Quest41130:OnSubStart4113002(arg1)
    print("OnSubStart4113002")
    self:NotifyTo(npcs.Npc30010Data.alias, 2, true)
end

function Quest41130:OnSubFinish4113002(arg1)
    print("OnSubFinish4113002")
end

function Quest41130:OnSubFailed4113002(arg1)
    print("OnSubFailed4113002")
end

function Quest41130:OnSubStart4113003(arg1)
    print("OnSubStart4113003")
    self:GetQuestNpcActor(npcs.Npc30010Data.alias, 41130)
    self:GetQuestNpcActor(npcs.Npc30010Data.alias):HideSelf()
    self:NotifyTo(npcs.Npc30010Data.alias, 2, true)
end

function Quest41130:OnSubFinish4113003(arg1)
    print("OnSubFinish4113003")
end

function Quest41130:OnSubFailed4113003(arg1)
    print("OnSubFailed4113003")
end

function Quest41130:OnSubStart4113004(arg1)
    print("OnSubStart4113004")
    self:ShowBlackScreen(0.5, 0.2, 0.5, self.ShowNPC, nil, nil, "")
    self:TransmitPlayerByQuestId(4113004, 1)
    self:NotifyTo(npcs.Npc30010Data.alias, 2, true)
    self:GetQuestNpcActor(npcs.Npc30010Data.alias, 41130)
    self:GetQuestNpcActor(npcs.Npc30010Data.alias):ShowSelf()
end

function Quest41130:OnSubFinish4113004(arg1)
    print("OnSubFinish4113004")
end

function Quest41130:OnSubFailed4113004(arg1)
    print("OnSubFailed4113004")
end

return Quest41130
