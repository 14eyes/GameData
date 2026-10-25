require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40165 = class("Quest40165", QuestActorProxy)
Quest40165.defaultAlias = "Quest40165"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40165:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016501"] = self.OnSubStart4016501,
        ["4016502"] = self.OnSubStart4016502,
        ["4016503"] = self.OnSubStart4016503,
        ["4016504"] = self.OnSubStart4016504,
        ["4016505"] = self.OnSubStart4016505
    }
end

function Quest40165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016501"] = self.OnSubFinish4016501,
        ["4016502"] = self.OnSubFinish4016502,
        ["4016503"] = self.OnSubFinish4016503,
        ["4016504"] = self.OnSubFinish4016504,
        ["4016505"] = self.OnSubFinish4016505
    }
end

function Quest40165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4016501"] = self.OnSubFailed4016501,
        ["4016502"] = self.OnSubFailed4016502,
        ["4016503"] = self.OnSubFailed4016503,
        ["4016504"] = self.OnSubFailed4016504,
        ["4016505"] = self.OnSubFailed4016505
    }
end

function Quest40165:Start()
    print("Start")
end

function Quest40165:OnDestroy()
    print("OnDestroy")
end

function Quest40165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40165:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30556.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Gaia.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc10095.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc1065.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30564.alias, 100)
    this:DestroyNpcTrigger("Q4016502N30556Trigger")
    this:DestroyNpcTrigger("Q4016503N1051Trigger")
    this:DestroyNpcTrigger("Q4016504N10095Trigger")
    this:DestroyNpcTrigger("Q4016505N1065Trigger")
end

function Quest40165:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40165:OnSubStart4016501(arg1)
    print("OnSubStart4016501")
end

function Quest40165:OnSubFinish4016501(arg1)
    print("OnSubFinish4016501")
    this:QuestNarratorTask(datas.Narrator_4016501, nil)
end

function Quest40165:OnSubFailed4016501(arg1)
    print("OnSubFailed4016501")
end

function Quest40165:OnSubStart4016502(arg1)
    print("OnSubStart4016502")
    this:NpcCreateWithNpcTrigger(npcs.Npc30556.id, 4016502, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Gaia.alias, 40165):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Qin.alias, 40165):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Gaia.alias, 40165):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Qin.alias, 40165):DisableInteeHeadCtrl(true)
end

function Quest40165:OnSubFinish4016502(arg1)
    print("OnSubFinish4016502")
    this:ClearNarratorTask()
end

function Quest40165:OnSubFailed4016502(arg1)
    print("OnSubFailed4016502")
end

function Quest40165:OnSubStart4016503(arg1)
    print("OnSubStart4016503")
    this:NpcCreateWithNpcTrigger(npcs.Npc1051.id, 4016503, 0, 20)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 40165):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Gaia.alias, 40165):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Qin.alias, 40165):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Gaia.alias, 40165):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Qin.alias, 40165):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 40165):DisableInteeHeadCtrl(true)
end

function Quest40165:OnSubFinish4016503(arg1)
    print("OnSubFinish4016503")
    this:SafeDestroyQuestNpc(npcs.Gaia.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30556.alias, 100)
    this:GetQuestNpcActor(npcs.Gaia.alias, 40165):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Qin.alias, 40165):DisableInteeHeadCtrl(false)
end

function Quest40165:OnSubFailed4016503(arg1)
    print("OnSubFailed4016503")
end

function Quest40165:OnSubStart4016504(arg1)
    print("OnSubStart4016504")
    this:NpcCreateWithNpcTrigger(npcs.Npc10095.id, 4016504, 0, 15)
    this:GetQuestNpcActor(npcs.Npc10095.alias, 40165):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 40165):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 40165):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc10095.alias, 40165):DisableInteeHeadCtrl(true)
end

function Quest40165:OnSubFinish4016504(arg1)
    print("OnSubFinish4016504")
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 100)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 40165):DisableInteeHeadCtrl(false)
end

function Quest40165:OnSubFailed4016504(arg1)
    print("OnSubFailed4016504")
end

function Quest40165:OnSubStart4016505(arg1)
    print("OnSubStart4016505")
    this:NpcCreateWithNpcTrigger(npcs.Npc1065.id, 4016505, 0, 20)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 40165):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc10095.alias, 40165):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30564.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10095.alias, 40165):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 40165):DisableInteeHeadCtrl(true)
end

function Quest40165:OnSubFinish4016505(arg1)
    print("OnSubFinish4016505")
    this:SafeDestroyQuestNpc(npcs.Npc1065.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc10095.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30564.alias, 100)
    this:GetQuestNpcActor(npcs.Npc10095.alias, 40165):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 40165):DisableInteeHeadCtrl(false)
end

function Quest40165:OnSubFailed4016505(arg1)
    print("OnSubFailed4016505")
end

return Quest40165
