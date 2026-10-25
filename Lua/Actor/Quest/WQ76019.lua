require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76019 = class("Quest76019", QuestActorProxy)
Quest76019.defaultAlias = "Quest76019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601904"] = self.OnSubStart7601904,
        ["7601901"] = self.OnSubStart7601901,
        ["7601902"] = self.OnSubStart7601902,
        ["7601903"] = self.OnSubStart7601903
    }
end

function Quest76019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601904"] = self.OnSubFinish7601904,
        ["7601901"] = self.OnSubFinish7601901,
        ["7601902"] = self.OnSubFinish7601902,
        ["7601903"] = self.OnSubFinish7601903
    }
end

function Quest76019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76019:Start()
    print("Start")
end

function Quest76019:OnDestroy()
    print("OnDestroy")
end

function Quest76019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76019:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7601901Trigger")
end

function Quest76019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76019:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76019:OnSubStart7601904(arg1)
    print("OnSubStart7601904")
    this:CreateQuestNpc(arg1, npcs.Npc21958.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21958.alias, 76019):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21959.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21959.alias, 76019):DoFreeStyle(1160, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7601901Trigger", "Actor/Gadget/Q7601901Trigger", 70900002, 0, points.Q7601901Trigger.pos, points.Q7601901Trigger.rot, true, false, 3)
end

function Quest76019:OnSubFinish7601904(arg1)
    print("OnSubFinish7601904")
end

function Quest76019:OnSubStart7601901(arg1)
    print("OnSubStart7601901")
    this:GetQuestNpcActor(npcs.Npc21958.alias, 76019):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21959.alias, 76019):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:QuestNarratorTask(datas.NarratorWithId_760199901, nil)
end

function Quest76019:OnSubFinish7601901(arg1)
    print("OnSubFinish7601901")
    this:SafeDestroyQuestNpc(npcs.Npc21958.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21959.alias, 3)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:ClearNarratorTask()
end

function Quest76019:OnSubStart7601902(arg1)
    print("OnSubStart7601902")
end

function Quest76019:OnSubFinish7601902(arg1)
    print("OnSubFinish7601902")
    this:QuestNarratorTask(datas.NarratorWithId_760199903, nil)
end

function Quest76019:OnSubStart7601903(arg1)
    print("OnSubStart7601903")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7601903, 0, 40, 0, npcs.Npc21958.id)
    this:GetQuestNpcActor(npcs.Npc21958.alias, 76019):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest76019:OnSubFinish7601903(arg1)
    print("OnSubFinish7601903")
    this:SafeDestroyQuestNpc(npcs.Npc21958.alias, 3)
    this:ClearNarratorTask()
end

return Quest76019
