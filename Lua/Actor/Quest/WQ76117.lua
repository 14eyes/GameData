require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76117 = class("Quest76117", QuestActorProxy)
Quest76117.defaultAlias = "Quest76117"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76117:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76117:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7611701"] = self.OnSubStart7611701,
        ["7611702"] = self.OnSubStart7611702,
        ["7611703"] = self.OnSubStart7611703,
        ["7611704"] = self.OnSubStart7611704,
        ["7611705"] = self.OnSubStart7611705,
        ["7611706"] = self.OnSubStart7611706,
        ["7611708"] = self.OnSubStart7611708,
        ["7611707"] = self.OnSubStart7611707
    }
end

function Quest76117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7611701"] = self.OnSubFinish7611701,
        ["7611702"] = self.OnSubFinish7611702,
        ["7611703"] = self.OnSubFinish7611703,
        ["7611704"] = self.OnSubFinish7611704,
        ["7611705"] = self.OnSubFinish7611705,
        ["7611706"] = self.OnSubFinish7611706,
        ["7611708"] = self.OnSubFinish7611708,
        ["7611707"] = self.OnSubFinish7611707
    }
end

function Quest76117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76117:Start()
    print("Start")
end

function Quest76117:OnDestroy()
    print("OnDestroy")
end

function Quest76117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76117:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76117:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76117:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76117:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76117:OnSubStart7611701(arg1)
    print("OnSubStart7611701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1317.id, 0, 15, 7611701)
    this:CreateQuestNpc(arg1, npcs.Npc7000.id, 0, false, 0)
end

function Quest76117:OnSubFinish7611701(arg1)
    print("OnSubFinish7611701")
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7000.alias, 3)
end

function Quest76117:OnSubStart7611702(arg1)
    print("OnSubStart7611702")
    this:NpcCreateWithNpcTrigger(npcs.Npc15862.id, 0, 15, 7611702)
    this:GetQuestNpcActor(npcs.Npc15862.alias, 76117):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16054.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16054.alias, 76117):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16055.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16055.alias, 76117):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76117:OnSubFinish7611702(arg1)
    print("OnSubFinish7611702")
    this:SafeDestroyQuestNpc(npcs.Npc15862.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16054.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16055.alias, 3)
end

function Quest76117:OnSubStart7611703(arg1)
    print("OnSubStart7611703")
end

function Quest76117:OnSubFinish7611703(arg1)
    print("OnSubFinish7611703")
end

function Quest76117:OnSubStart7611704(arg1)
    print("OnSubStart7611704")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc15862.id, 0, 15, 7611704)
        this:GetQuestNpcActor(npcs.Npc15862.alias, 76117):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc16054.id, arg1)
        this:GetQuestNpcActor(npcs.Npc16054.alias, 76117):DoFreeStyle(4120, true, nil, true, true, false, false)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc16055.id, arg1)
        this:GetQuestNpcActor(npcs.Npc16055.alias, 76117):DoFreeStyle(4190, true, nil, true, true, false, false)
    end)
end

function Quest76117:OnSubFinish7611704(arg1)
    print("OnSubFinish7611704")
end

function Quest76117:OnSubStart7611705(arg1)
    print("OnSubStart7611705")
    this:NpcCreateWithNpcTrigger(npcs.Npc15863.id, 0, 10, 7611705)
    this:GetQuestNpcActor(npcs.Npc15863.alias, 76117):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15862.alias, 76117):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16054.alias, 76117):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16055.alias, 76117):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest76117:OnSubFinish7611705(arg1)
    print("OnSubFinish7611705")
    this:SafeDestroyQuestNpc(npcs.Npc15862.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16054.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16055.alias, 3)
end

function Quest76117:OnSubStart7611706(arg1)
    print("OnSubStart7611706")
    this:GetQuestNpcActor(npcs.Npc15863.alias, 76117):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15863.alias, 76117):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc7000.id, 0, 10, 7611706)
end

function Quest76117:OnSubFinish7611706(arg1)
    print("OnSubFinish7611706")
    this:SafeDestroyQuestNpc(npcs.Npc7000.alias, 3)
end

function Quest76117:OnSubStart7611708(arg1)
    print("OnSubStart7611708")
    this:GetQuestNpcActor(npcs.Npc15863.alias, 76117):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15863.alias, 76117):DisableInteeHeadCtrl(true)
end

function Quest76117:OnSubFinish7611708(arg1)
    print("OnSubFinish7611708")
    this:SafeDestroyQuestNpc(npcs.Npc15863.alias, 3)
    this:ActionSafeCall(nil)
end

function Quest76117:OnSubStart7611707(arg1)
    print("OnSubStart7611707")
    this:CreateQuestNpc(arg1, npcs.Npc15864.id, 0, false, 0)
end

function Quest76117:OnSubFinish7611707(arg1)
    print("OnSubFinish7611707")
    this:SafeDestroyQuestNpc(npcs.Npc15864.alias, 3)
end

return Quest76117
