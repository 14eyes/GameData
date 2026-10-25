require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75252 = class("Quest75252", QuestActorProxy)
Quest75252.defaultAlias = "Quest75252"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75252:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75252:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7525201"] = self.OnSubStart7525201,
        ["7525202"] = self.OnSubStart7525202,
        ["7525203"] = self.OnSubStart7525203,
        ["7525204"] = self.OnSubStart7525204,
        ["7525206"] = self.OnSubStart7525206,
        ["7525205"] = self.OnSubStart7525205
    }
end

function Quest75252:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7525201"] = self.OnSubFinish7525201,
        ["7525202"] = self.OnSubFinish7525202,
        ["7525203"] = self.OnSubFinish7525203,
        ["7525204"] = self.OnSubFinish7525204,
        ["7525206"] = self.OnSubFinish7525206,
        ["7525205"] = self.OnSubFinish7525205
    }
end

function Quest75252:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75252:Start()
    print("Start")
end

function Quest75252:OnDestroy()
    print("OnDestroy")
end

function Quest75252:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75252:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75252:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75252:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75252:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75252:OnSubStart7525201(arg1)
    print("OnSubStart7525201")
    this:CreateQuestNpc(arg1, npcs.Npc21972.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DisableInteeHeadCtrl(true)
end

function Quest75252:OnSubFinish7525201(arg1)
    print("OnSubFinish7525201")
end

function Quest75252:OnSubStart7525202(arg1)
    print("OnSubStart7525202")
    this:CreateQuestNpc(arg1, npcs.Npc21972.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc22016.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22016.alias, 75252):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75252:OnSubFinish7525202(arg1)
    print("OnSubFinish7525202")
    this:GetQuestNpcActor(npcs.Npc22016.alias, 75252):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest75252:OnSubStart7525203(arg1)
    print("OnSubStart7525203")
    this:CreateQuestNpc(arg1, npcs.Npc21972.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22016.alias, 75252):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75252:OnSubFinish7525203(arg1)
    print("OnSubFinish7525203")
end

function Quest75252:OnSubStart7525204(arg1)
    print("OnSubStart7525204")
    this:CreateQuestNpc(arg1, npcs.Npc21972.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21972.alias, 75252):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22016.alias, 75252):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75252:OnSubFinish7525204(arg1)
    print("OnSubFinish7525204")
end

function Quest75252:OnSubStart7525206(arg1)
    print("OnSubStart7525206")
end

function Quest75252:OnSubFinish7525206(arg1)
    print("OnSubFinish7525206")
    this:NpcDestroyImmediately(3, npcs.Npc21972.alias)
end

function Quest75252:OnSubStart7525205(arg1)
    print("OnSubStart7525205")
    this:CreateQuestNpc(arg1, npcs.Npc6512_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6512_1.alias, 75252):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22016.alias, 75252):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest75252:OnSubFinish7525205(arg1)
    print("OnSubFinish7525205")
    this:NpcDestroyImmediately(3, npcs.Npc22016.alias)
end

return Quest75252
