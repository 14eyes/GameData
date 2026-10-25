require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75147 = class("Quest75147", QuestActorProxy)
Quest75147.defaultAlias = "Quest75147"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75147:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7514701"] = self.OnSubStart7514701,
        ["7514702"] = self.OnSubStart7514702,
        ["7514703"] = self.OnSubStart7514703,
        ["7514704"] = self.OnSubStart7514704,
        ["7514706"] = self.OnSubStart7514706,
        ["7514707"] = self.OnSubStart7514707,
        ["7514708"] = self.OnSubStart7514708
    }
end

function Quest75147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7514701"] = self.OnSubFinish7514701,
        ["7514702"] = self.OnSubFinish7514702,
        ["7514703"] = self.OnSubFinish7514703,
        ["7514704"] = self.OnSubFinish7514704,
        ["7514706"] = self.OnSubFinish7514706,
        ["7514707"] = self.OnSubFinish7514707,
        ["7514708"] = self.OnSubFinish7514708
    }
end

function Quest75147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75147:Start()
    print("Start")
end

function Quest75147:OnDestroy()
    print("OnDestroy")
end

function Quest75147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75147:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75147:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7514701Trigger")
end

function Quest75147:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75147:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75147:OnSubStart7514701(arg1)
    print("OnSubStart7514701")
    actorMgr:CreateActorWithPos("Q7514701Trigger", "Actor/Gadget/Q7514701Trigger", 70900002, 0, points._Q7514701TriggerPoint_.pos, points._Q7514701TriggerPoint_.rot, true, false, 3)
end

function Quest75147:OnSubFinish7514701(arg1)
    print("OnSubFinish7514701")
end

function Quest75147:OnSubStart7514702(arg1)
    print("OnSubStart7514702")
    this:CreateQuestNpc(arg1, npcs.Npc21768.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21768.alias, 75147):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21769.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21769.alias, 75147):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest75147:OnSubFinish7514702(arg1)
    print("OnSubFinish7514702")
end

function Quest75147:OnSubStart7514703(arg1)
    print("OnSubStart7514703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7514703, 0, 30, 0.5, npcs.Npc21768.id)
    this:CreateQuestNpc(arg1, npcs.Npc21769.id, 0, false, 0)
end

function Quest75147:OnSubFinish7514703(arg1)
    print("OnSubFinish7514703")
    this:SafeDestroyQuestNpc(npcs.Npc21768.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21769.alias, 3)
    if this:GetQuestGlobalVar(7514702) == 1 then
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_7514703, nil)
        end)
    end
end

function Quest75147:OnSubStart7514704(arg1)
    print("OnSubStart7514704")
end

function Quest75147:OnSubFinish7514704(arg1)
    print("OnSubFinish7514704")
    if this:GetQuestGlobalVar(7514702) == 1 then
        this:QuestNarratorTask(datas.NarratorWithId_7514702, nil)
    end
end

function Quest75147:OnSubStart7514706(arg1)
    print("OnSubStart7514706")
    this:CreateQuestNpc(arg1, npcs.Npc21768.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21769.id, 0, false, 0)
    this:SetNavigationByMainId(75147, true)
end

function Quest75147:OnSubFinish7514706(arg1)
    print("OnSubFinish7514706")
end

function Quest75147:OnSubStart7514707(arg1)
    print("OnSubStart7514707")
    local questGlobalVar = this:GetQuestGlobalVar(7514801)
    if questGlobalVar == 0 then
        this:PlayCutsceneIndex(7514701, function(arg1)
            actorUtils.FinishQuestID(false, 7514707)
        end, nil, nil, false)
    elseif questGlobalVar == 1 then
        actorUtils.FinishQuestID(false, 7514707)
    end
end

function Quest75147:OnSubFinish7514707(arg1)
    print("OnSubFinish7514707")
end

function Quest75147:OnSubStart7514708(arg1)
    print("OnSubStart7514708")
    this:CreateQuestNpc(arg1, npcs.Npc21768.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21769.id, 0, false, 0)
end

function Quest75147:OnSubFinish7514708(arg1)
    print("OnSubFinish7514708")
    this:SafeDestroyQuestNpc(npcs.Npc21768.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21769.alias, 3)
    if this:GetSubQuestState(7514801) == 3 then
    else
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_7514708, nil)
        end)
    end
end

return Quest75147
