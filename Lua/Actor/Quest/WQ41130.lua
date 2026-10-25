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
        ["4113005"] = self.OnSubStart4113005,
        ["4113001"] = self.OnSubStart4113001,
        ["4113002"] = self.OnSubStart4113002,
        ["4113006"] = self.OnSubStart4113006,
        ["4113007"] = self.OnSubStart4113007,
        ["4113008"] = self.OnSubStart4113008,
        ["4113009"] = self.OnSubStart4113009,
        ["4113010"] = self.OnSubStart4113010,
        ["4113003"] = self.OnSubStart4113003,
        ["4113004"] = self.OnSubStart4113004,
        ["4113011"] = self.OnSubStart4113011,
        ["4113012"] = self.OnSubStart4113012
    }
end

function Quest41130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4113005"] = self.OnSubFinish4113005,
        ["4113001"] = self.OnSubFinish4113001,
        ["4113002"] = self.OnSubFinish4113002,
        ["4113006"] = self.OnSubFinish4113006,
        ["4113007"] = self.OnSubFinish4113007,
        ["4113008"] = self.OnSubFinish4113008,
        ["4113009"] = self.OnSubFinish4113009,
        ["4113010"] = self.OnSubFinish4113010,
        ["4113003"] = self.OnSubFinish4113003,
        ["4113004"] = self.OnSubFinish4113004,
        ["4113011"] = self.OnSubFinish4113011,
        ["4113012"] = self.OnSubFinish4113012
    }
end

function Quest41130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4113005"] = self.OnSubFailed4113005,
        ["4113001"] = self.OnSubFailed4113001,
        ["4113002"] = self.OnSubFailed4113002,
        ["4113006"] = self.OnSubFailed4113006,
        ["4113007"] = self.OnSubFailed4113007,
        ["4113008"] = self.OnSubFailed4113008,
        ["4113009"] = self.OnSubFailed4113009,
        ["4113010"] = self.OnSubFailed4113010,
        ["4113003"] = self.OnSubFailed4113003,
        ["4113004"] = self.OnSubFailed4113004,
        ["4113011"] = self.OnSubFailed4113011,
        ["4113012"] = self.OnSubFailed4113012
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
    self:ShowBlackScreen(0.2, 1.5, 0.2, self.DestoryNPC, nil, nil, "")
    self:NotifyTo(npcs.Npc30010Data.alias, 0, true)
end

function Quest41130:OnMainFailed(arg1)
    print("OnMainFailed")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
    self:NotifyTo(npcs.Npc30010Data.alias, 0, true)
end

function Quest41130:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
    self:NotifyTo(npcs.Npc30010Data.alias, 0, true)
end

function Quest41130:ShowNPC()
    print("ShowNPC")
    self:GetQuestNpcActor(npcs.Npc30010Data.alias):ShowSelf()
end

function Quest41130:DestoryNPC()
    print("DestoryNPC")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubStart4113005(arg1)
    print("OnSubStart4113005")
end

function Quest41130:OnSubFinish4113005(arg1)
    print("OnSubFinish4113005")
end

function Quest41130:OnSubFailed4113005(arg1)
    print("OnSubFailed4113005")
end

function Quest41130:OnSubStart4113001(arg1)
    print("OnSubStart4113001")
    self:NotifyTo(npcs.Npc30010Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc30010Data.id, 0)
end

function Quest41130:OnSubFinish4113001(arg1)
    print("OnSubFinish4113001")
    self:ShowBlackScreen(0.2, 1, 0.2, self.DestoryNPC, nil, nil, "")
end

function Quest41130:OnSubFailed4113001(arg1)
    print("OnSubFailed4113001")
end

function Quest41130:OnSubStart4113002(arg1)
    print("OnSubStart4113002")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubFinish4113002(arg1)
    print("OnSubFinish4113002")
end

function Quest41130:OnSubFailed4113002(arg1)
    print("OnSubFailed4113002")
end

function Quest41130:OnSubStart4113006(arg1)
    print("OnSubStart4113006")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubFinish4113006(arg1)
    print("OnSubFinish4113006")
end

function Quest41130:OnSubFailed4113006(arg1)
    print("OnSubFailed4113006")
end

function Quest41130:OnSubStart4113007(arg1)
    print("OnSubStart4113007")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubFinish4113007(arg1)
    print("OnSubFinish4113007")
end

function Quest41130:OnSubFailed4113007(arg1)
    print("OnSubFailed4113007")
end

function Quest41130:OnSubStart4113008(arg1)
    print("OnSubStart4113008")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubFinish4113008(arg1)
    print("OnSubFinish4113008")
end

function Quest41130:OnSubFailed4113008(arg1)
    print("OnSubFailed4113008")
end

function Quest41130:OnSubStart4113009(arg1)
    print("OnSubStart4113009")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubFinish4113009(arg1)
    print("OnSubFinish4113009")
end

function Quest41130:OnSubFailed4113009(arg1)
    print("OnSubFailed4113009")
end

function Quest41130:OnSubStart4113010(arg1)
    print("OnSubStart4113010")
    self:DestroyQuestNpcActor(npcs.Npc30010Data.alias, 3)
end

function Quest41130:OnSubFinish4113010(arg1)
    print("OnSubFinish4113010")
end

function Quest41130:OnSubFailed4113010(arg1)
    print("OnSubFailed4113010")
end

function Quest41130:OnSubStart4113003(arg1)
    print("OnSubStart4113003")
    self:CreateQuestNpc(arg1, npcs.Npc30010Data.id, 0)
end

function Quest41130:OnSubFinish4113003(arg1)
    print("OnSubFinish4113003")
end

function Quest41130:OnSubFailed4113003(arg1)
    print("OnSubFailed4113003")
end

function Quest41130:OnSubStart4113004(arg1)
    print("OnSubStart4113004")
end

function Quest41130:OnSubFinish4113004(arg1)
    print("OnSubFinish4113004")
end

function Quest41130:OnSubFailed4113004(arg1)
    print("OnSubFailed4113004")
end

function Quest41130:OnSubStart4113011(arg1)
    print("OnSubStart4113011")
end

function Quest41130:OnSubFinish4113011(arg1)
    print("OnSubFinish4113011")
    self:ShowBlackScreen(0.2, 1, 0.2, nil, nil, nil, "")
end

function Quest41130:OnSubFailed4113011(arg1)
    print("OnSubFailed4113011")
end

function Quest41130:OnSubStart4113012(arg1)
    print("OnSubStart4113012")
    self:CreateQuestNpc(arg1, npcs.Npc30010Data.id, 0)
end

function Quest41130:OnSubFinish4113012(arg1)
    print("OnSubFinish4113012")
end

function Quest41130:OnSubFailed4113012(arg1)
    print("OnSubFailed4113012")
end

return Quest41130
