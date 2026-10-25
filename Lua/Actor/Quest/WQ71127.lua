require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71127 = class("Quest71127", QuestActorProxy)
Quest71127.defaultAlias = "Quest71127"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71127:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7112701"] = self.OnSubStart7112701,
        ["7112702"] = self.OnSubStart7112702,
        ["7112705"] = self.OnSubStart7112705,
        ["7112703"] = self.OnSubStart7112703,
        ["7112707"] = self.OnSubStart7112707,
        ["7112706"] = self.OnSubStart7112706,
        ["7112704"] = self.OnSubStart7112704,
        ["7112708"] = self.OnSubStart7112708,
        ["7112709"] = self.OnSubStart7112709,
        ["7112710"] = self.OnSubStart7112710,
        ["7112711"] = self.OnSubStart7112711,
        ["7112712"] = self.OnSubStart7112712,
        ["7112713"] = self.OnSubStart7112713
    }
end

function Quest71127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7112701"] = self.OnSubFinish7112701,
        ["7112702"] = self.OnSubFinish7112702,
        ["7112705"] = self.OnSubFinish7112705,
        ["7112703"] = self.OnSubFinish7112703,
        ["7112707"] = self.OnSubFinish7112707,
        ["7112706"] = self.OnSubFinish7112706,
        ["7112704"] = self.OnSubFinish7112704,
        ["7112708"] = self.OnSubFinish7112708,
        ["7112709"] = self.OnSubFinish7112709,
        ["7112710"] = self.OnSubFinish7112710,
        ["7112711"] = self.OnSubFinish7112711,
        ["7112712"] = self.OnSubFinish7112712,
        ["7112713"] = self.OnSubFinish7112713
    }
end

function Quest71127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71127:Start()
    print("Start")
end

function Quest71127:OnDestroy()
    print("OnDestroy")
end

function Quest71127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71127:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71127:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest71127:OnSubStart7112701(arg1)
    print("OnSubStart7112701")
end

function Quest71127:OnSubFinish7112701(arg1)
    print("OnSubFinish7112701")
    this:QuestNarratorTask(datas.NarratorWithId_01)
    this:SetNavigationByMainId(71127, true)
end

function Quest71127:OnSubStart7112702(arg1)
    print("OnSubStart7112702")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
    actorMgr:CreateActorWithPos("Q7112702Trigger", "Actor/Gadget/Q7112702Trigger", 70900002, 0, points.TPos_Q7112702Trigger.pos, points.TPos_Q7112702Trigger.rot, true, false, 3)
end

function Quest71127:OnSubFinish7112702(arg1)
    print("OnSubFinish7112702")
end

function Quest71127:OnSubStart7112705(arg1)
    print("OnSubStart7112705")
end

function Quest71127:OnSubFinish7112705(arg1)
    print("OnSubFinish7112705")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21307Data.alias)
end

function Quest71127:OnSubStart7112703(arg1)
    print("OnSubStart7112703")
    actorMgr:CreateActorWithPos("Q7112703Trigger", "Actor/Gadget/Q7112703Trigger", 70900002, 0, points.TPos_Q7112703Trigger.pos, points.TPos_Q7112703Trigger.rot, true, false, 3)
end

function Quest71127:OnSubFinish7112703(arg1)
    print("OnSubFinish7112703")
end

function Quest71127:OnSubStart7112707(arg1)
    print("OnSubStart7112707")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7112707Trigger", "Actor/Gadget/Q7112707Trigger", 70900002, 0, points.TPos_Q7112707Trigger.pos, points.TPos_Q7112707Trigger.rot, true, false, 3)
    end)
end

function Quest71127:OnSubFinish7112707(arg1)
    print("OnSubFinish7112707")
    this:QuestNarratorTask(datas.NarratorWithId)
end

function Quest71127:OnSubStart7112706(arg1)
    print("OnSubStart7112706")
    actorMgr:CreateActorWithPos("Q7112706Trigger", "Actor/Gadget/Q7112706Trigger", 70900002, 0, points.TPos_Q7112706Trigger.pos, points.TPos_Q7112706Trigger.rot, true, false, 3)
end

function Quest71127:OnSubFinish7112706(arg1)
    print("OnSubFinish7112706")
end

function Quest71127:OnSubStart7112704(arg1)
    print("OnSubStart7112704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21307Data.id, 7112704, 0, 15, 0.5)
end

function Quest71127:OnSubFinish7112704(arg1)
    print("OnSubFinish7112704")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21307Data.alias)
end

function Quest71127:OnSubStart7112708(arg1)
    print("OnSubStart7112708")
    actorMgr:CreateActorWithPos("Q7112708Trigger", "Actor/Gadget/Q7112708Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest71127:OnSubFinish7112708(arg1)
    print("OnSubFinish7112708")
    local subQuestState = this:GetSubQuestState(7113501)
    if subQuestState ~= 3 then
        this:SetQuestVarWithInterval(7112708, 0, 1, 3)
    elseif subQuestState == 3 then
        this:SetQuestVarWithInterval(7112708, 0, 1, 5)
    end
end

function Quest71127:OnSubStart7112709(arg1)
    print("OnSubStart7112709")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71127:OnSubFinish7112709(arg1)
    print("OnSubFinish7112709")
end

function Quest71127:OnSubStart7112710(arg1)
    print("OnSubStart7112710")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
end

function Quest71127:OnSubFinish7112710(arg1)
    print("OnSubFinish7112710")
end

function Quest71127:OnSubStart7112711(arg1)
    print("OnSubStart7112711")
    this:CreateQuestNpc(arg1, npcs.Npc2498Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71127:OnSubFinish7112711(arg1)
    print("OnSubFinish7112711")
end

function Quest71127:OnSubStart7112712(arg1)
    print("OnSubStart7112712")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
end

function Quest71127:OnSubFinish7112712(arg1)
    print("OnSubFinish7112712")
end

function Quest71127:OnSubStart7112713(arg1)
    print("OnSubStart7112713")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71127:OnSubFinish7112713(arg1)
    print("OnSubFinish7112713")
end

return Quest71127
