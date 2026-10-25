require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76007 = class("Quest76007", QuestActorProxy)
Quest76007.defaultAlias = "Quest76007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600701"] = self.OnSubStart7600701,
        ["7600702"] = self.OnSubStart7600702,
        ["7600718"] = self.OnSubStart7600718,
        ["7600703"] = self.OnSubStart7600703,
        ["7600704"] = self.OnSubStart7600704,
        ["7600720"] = self.OnSubStart7600720,
        ["7600705"] = self.OnSubStart7600705,
        ["7600706"] = self.OnSubStart7600706,
        ["7600707"] = self.OnSubStart7600707,
        ["7600708"] = self.OnSubStart7600708,
        ["7600712"] = self.OnSubStart7600712,
        ["7600709"] = self.OnSubStart7600709,
        ["7600719"] = self.OnSubStart7600719,
        ["7600721"] = self.OnSubStart7600721,
        ["7600711"] = self.OnSubStart7600711,
        ["7600716"] = self.OnSubStart7600716,
        ["7600717"] = self.OnSubStart7600717,
        ["7600710"] = self.OnSubStart7600710,
        ["7600713"] = self.OnSubStart7600713,
        ["7600714"] = self.OnSubStart7600714,
        ["7600722"] = self.OnSubStart7600722,
        ["7600715"] = self.OnSubStart7600715
    }
end

function Quest76007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600701"] = self.OnSubFinish7600701,
        ["7600702"] = self.OnSubFinish7600702,
        ["7600718"] = self.OnSubFinish7600718,
        ["7600703"] = self.OnSubFinish7600703,
        ["7600704"] = self.OnSubFinish7600704,
        ["7600720"] = self.OnSubFinish7600720,
        ["7600705"] = self.OnSubFinish7600705,
        ["7600706"] = self.OnSubFinish7600706,
        ["7600707"] = self.OnSubFinish7600707,
        ["7600708"] = self.OnSubFinish7600708,
        ["7600712"] = self.OnSubFinish7600712,
        ["7600709"] = self.OnSubFinish7600709,
        ["7600719"] = self.OnSubFinish7600719,
        ["7600721"] = self.OnSubFinish7600721,
        ["7600711"] = self.OnSubFinish7600711,
        ["7600716"] = self.OnSubFinish7600716,
        ["7600717"] = self.OnSubFinish7600717,
        ["7600710"] = self.OnSubFinish7600710,
        ["7600713"] = self.OnSubFinish7600713,
        ["7600714"] = self.OnSubFinish7600714,
        ["7600722"] = self.OnSubFinish7600722,
        ["7600715"] = self.OnSubFinish7600715
    }
end

function Quest76007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76007:Start()
    print("Start")
end

function Quest76007:OnDestroy()
    print("OnDestroy")
end

function Quest76007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76007:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600706Trigger_1")
    this:ActorDestroy("Q7600708Trigger")
    this:ActorDestroy("Q7600709Trigger")
    this:ActorDestroy("Q7600701Trigger")
    this:ActorDestroy("Q7600712igger")
    this:ActorDestroy("Q7600709Trigger_1")
    this:ActorDestroy("Q7600707Trigger")
    this:ActorDestroy("Q7600709Trigger_2")
    this:ActorDestroy("Q7600709Trigger_3")
end

function Quest76007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76007:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76007:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76007:OnSubStart7600701(arg1)
    print("OnSubStart7600701")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600701Trigger", "Actor/Gadget/Q7600701Trigger", 70900002, 0, points._Q7600701TriggerPoint_.pos, points._Q7600701TriggerPoint_.rot, true, false, 3)
end

function Quest76007:OnSubFinish7600701(arg1)
    print("OnSubFinish7600701")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600702(arg1)
    print("OnSubStart7600702")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600702(arg1)
    print("OnSubFinish7600702")
end

function Quest76007:OnSubStart7600718(arg1)
    print("OnSubStart7600718")
end

function Quest76007:OnSubFinish7600718(arg1)
    print("OnSubFinish7600718")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600703(arg1)
    print("OnSubStart7600703")
    this:CreateQuestNpc(arg1, npcs.Npc21919.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22249.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600703(arg1)
    print("OnSubFinish7600703")
    this:SafeDestroyQuestNpc(npcs.Npc22249.alias, 3)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600704(arg1)
    print("OnSubStart7600704")
end

function Quest76007:OnSubFinish7600704(arg1)
    print("OnSubFinish7600704")
    this:SafeDestroyQuestNpc(npcs.Npc21919.alias, 3)
end

function Quest76007:OnSubStart7600720(arg1)
    print("OnSubStart7600720")
end

function Quest76007:OnSubFinish7600720(arg1)
    print("OnSubFinish7600720")
    this:QuestNarratorTask(datas.NarratorWithId_760070146, nil)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600705(arg1)
    print("OnSubStart7600705")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600705(arg1)
    print("OnSubFinish7600705")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600706(arg1)
    print("OnSubStart7600706")
end

function Quest76007:OnSubFinish7600706(arg1)
    print("OnSubFinish7600706")
    this:QuestNarratorTask(datas.NarratorWithId_760070145, nil)
end

function Quest76007:OnSubStart7600707(arg1)
    print("OnSubStart7600707")
    this:CreateQuestNpc(arg1, npcs.Npc21920.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7089.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7090.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600707Trigger", "Actor/Gadget/Q7600707Trigger", 70900002, 0, points._Q7600707TriggerPoint_.pos, points._Q7600707TriggerPoint_.rot, true, false, 3)
end

function Quest76007:OnSubFinish7600707(arg1)
    print("OnSubFinish7600707")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600708(arg1)
    print("OnSubStart7600708")
    this:CreateQuestNpc(arg1, npcs.Npc21920.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600708Trigger", "Actor/Gadget/Q7600708Trigger", 70900002, 0, points._Q7600708TriggerPoint_.pos, points._Q7600708TriggerPoint_.rot, true, false, 3)
end

function Quest76007:OnSubFinish7600708(arg1)
    print("OnSubFinish7600708")
    this:SafeDestroyQuestNpc(npcs.Npc7089.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7090.alias, 3)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600712(arg1)
    print("OnSubStart7600712")
    this:CreateQuestNpc(arg1, npcs.Npc21920.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600712(arg1)
    print("OnSubFinish7600712")
    this:SafeDestroyQuestNpc(npcs.Npc21920.alias, 3)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600709(arg1)
    print("OnSubStart7600709")
    actorMgr:CreateActorWithPos("Q7600709Trigger_1", "Actor/Gadget/Q7600709Trigger_1", 70900002, 0, points._Q7600709Trigger_1Point_.pos, points._Q7600709Trigger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7600709Trigger_3", "Actor/Gadget/Q7600709Trigger_3", 70900002, 0, points._Q7600709Trigger_3Point_.pos, points._Q7600709Trigger_3Point_.rot, true, false, 3)
end

function Quest76007:OnSubFinish7600709(arg1)
    print("OnSubFinish7600709")
    this:QuestNarratorTask(datas.NarratorWithId_760070139, nil)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600719(arg1)
    print("OnSubStart7600719")
end

function Quest76007:OnSubFinish7600719(arg1)
    print("OnSubFinish7600719")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600721(arg1)
    print("OnSubStart7600721")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 7600721, 20, true)
    this:CreateQuestNpc(arg1, npcs.Npc22142.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600721(arg1)
    print("OnSubFinish7600721")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22142.alias, 3)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600711(arg1)
    print("OnSubStart7600711")
end

function Quest76007:OnSubFinish7600711(arg1)
    print("OnSubFinish7600711")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600716(arg1)
    print("OnSubStart7600716")
end

function Quest76007:OnSubFinish7600716(arg1)
    print("OnSubFinish7600716")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600717(arg1)
    print("OnSubStart7600717")
end

function Quest76007:OnSubFinish7600717(arg1)
    print("OnSubFinish7600717")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600710(arg1)
    print("OnSubStart7600710")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600710, 0, 20, 0, npcs.Paimon.id)
end

function Quest76007:OnSubFinish7600710(arg1)
    print("OnSubFinish7600710")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600713(arg1)
    print("OnSubStart7600713")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600713(arg1)
    print("OnSubFinish7600713")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600714(arg1)
    print("OnSubStart7600714")
end

function Quest76007:OnSubFinish7600714(arg1)
    print("OnSubFinish7600714")
end

function Quest76007:OnSubStart7600722(arg1)
    print("OnSubStart7600722")
end

function Quest76007:OnSubFinish7600722(arg1)
    print("OnSubFinish7600722")
    this:SetNavigationByMainId(76007, true)
end

function Quest76007:OnSubStart7600715(arg1)
    print("OnSubStart7600715")
    this:CreateQuestNpc(arg1, npcs.Npc21917.id, 0, false, 0)
end

function Quest76007:OnSubFinish7600715(arg1)
    print("OnSubFinish7600715")
end

return Quest76007
