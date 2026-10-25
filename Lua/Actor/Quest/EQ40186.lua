require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40186 = class("Quest40186", QuestActorProxy)
Quest40186.defaultAlias = "Quest40186"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40186:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40186:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4018618"] = self.OnSubStart4018618,
        ["4018617"] = self.OnSubStart4018617,
        ["4018601"] = self.OnSubStart4018601,
        ["4018602"] = self.OnSubStart4018602,
        ["4018603"] = self.OnSubStart4018603,
        ["4018604"] = self.OnSubStart4018604,
        ["4018605"] = self.OnSubStart4018605,
        ["4018606"] = self.OnSubStart4018606,
        ["4018607"] = self.OnSubStart4018607,
        ["4018608"] = self.OnSubStart4018608,
        ["4018616"] = self.OnSubStart4018616,
        ["4018609"] = self.OnSubStart4018609,
        ["4018622"] = self.OnSubStart4018622,
        ["4018612"] = self.OnSubStart4018612,
        ["4018610"] = self.OnSubStart4018610,
        ["4018611"] = self.OnSubStart4018611,
        ["4018613"] = self.OnSubStart4018613,
        ["4018621"] = self.OnSubStart4018621,
        ["4018614"] = self.OnSubStart4018614,
        ["4018615"] = self.OnSubStart4018615,
        ["4018619"] = self.OnSubStart4018619,
        ["4018620"] = self.OnSubStart4018620
    }
end

function Quest40186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4018618"] = self.OnSubFinish4018618,
        ["4018617"] = self.OnSubFinish4018617,
        ["4018601"] = self.OnSubFinish4018601,
        ["4018602"] = self.OnSubFinish4018602,
        ["4018603"] = self.OnSubFinish4018603,
        ["4018604"] = self.OnSubFinish4018604,
        ["4018605"] = self.OnSubFinish4018605,
        ["4018606"] = self.OnSubFinish4018606,
        ["4018607"] = self.OnSubFinish4018607,
        ["4018608"] = self.OnSubFinish4018608,
        ["4018616"] = self.OnSubFinish4018616,
        ["4018609"] = self.OnSubFinish4018609,
        ["4018622"] = self.OnSubFinish4018622,
        ["4018612"] = self.OnSubFinish4018612,
        ["4018610"] = self.OnSubFinish4018610,
        ["4018611"] = self.OnSubFinish4018611,
        ["4018613"] = self.OnSubFinish4018613,
        ["4018621"] = self.OnSubFinish4018621,
        ["4018614"] = self.OnSubFinish4018614,
        ["4018615"] = self.OnSubFinish4018615,
        ["4018619"] = self.OnSubFinish4018619,
        ["4018620"] = self.OnSubFinish4018620
    }
end

function Quest40186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4018608"] = self.OnSubFailed4018608,
        ["4018616"] = self.OnSubFailed4018616,
        ["4018612"] = self.OnSubFailed4018612,
        ["4018610"] = self.OnSubFailed4018610,
        ["4018613"] = self.OnSubFailed4018613,
        ["4018621"] = self.OnSubFailed4018621,
        ["4018614"] = self.OnSubFailed4018614,
        ["4018615"] = self.OnSubFailed4018615
    }
end

function Quest40186:Start()
    print("Start")
end

function Quest40186:OnDestroy()
    print("OnDestroy")
end

function Quest40186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40186:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2610.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15085.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15089.alias, 20248)
    this:SafeDestroyQuestNpc(npcs.Npc15086.alias, 20248)
    this:SafeDestroyQuestNpc(npcs.Npc2612.alias, 20249)
    this:SafeDestroyQuestNpc(npcs.Npc2612.alias, 3)
    this:ActorDestroy("Q4018617Trigger")
    this:ActorDestroy("Q4018611Trigger")
    this:ActorDestroy("Q4018614Trigger")
    this:ActorDestroy("Q4018622Trigger")
    this:ActorDestroy("Q4018621Trigger")
    this:DestroyNpcTrigger("Q4018601N10211Trigger")
    this:DestroyNpcTrigger("Q4018602N1068Trigger")
    this:DestroyNpcTrigger("Q4018603N1046Trigger")
    this:DestroyNpcTrigger("Q4018604N2610Trigger")
    this:DestroyNpcTrigger("Q4018605N2611Trigger")
    this:DestroyNpcTrigger("Q4018606N10211Trigger")
    this:DestroyNpcTrigger("Q4018607N15085Trigger")
    this:DestroyNpcTrigger("Q4018610N15089Trigger")
    this:DestroyNpcTrigger("Q4018613N15086Trigger")
    this:DestroyNpcTrigger("Q4018615N2612Trigger")
    this:DestroyNpcTrigger("Q4018616N15085Trigger")
    this:DestroyNpcTrigger("Q4018619N1005Trigger")
    this:DestroyNpcTrigger("Q4018620N2612Trigger")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    this:CancelStoryByQuest(134018601)
    this:CancelStoryByQuest(134018602)
    actorMgr:DestroyNpcActorByAlias("Npc261140185")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 1082)
end

function Quest40186:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40186:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40186:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40186:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40186:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40186:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40186:OnSubStart4018618(arg1)
    print("OnSubStart4018618")
end

function Quest40186:OnSubFinish4018618(arg1)
    print("OnSubFinish4018618")
    actorMgr:DestroyNpcActorByAlias("Npc261140185")
end

function Quest40186:OnSubStart4018617(arg1)
    print("OnSubStart4018617")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_4018601, nil)
    actorUtils.FinishQuestID(false, 4018617)
end

function Quest40186:OnSubFinish4018617(arg1)
    print("OnSubFinish4018617")
end

function Quest40186:OnSubStart4018601(arg1)
    print("OnSubStart4018601")
    this:NpcCreateWithNpcTrigger(npcs.Npc10211.id, 0, 20, 4018601)
    this:CreateQuestNpc(arg1, npcs.Npc1093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2611.id, 0, false, 0)
end

function Quest40186:OnSubFinish4018601(arg1)
    print("OnSubFinish4018601")
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_4018602, nil)
    end)
end

function Quest40186:OnSubStart4018602(arg1)
    print("OnSubStart4018602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018602, 0, 25, 1, npcs.Npc1068.id)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1093.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc10211.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc1031.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc2433.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2434.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2434.alias, 40186):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1015.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1016.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1016.alias, 40186):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Xiao.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Xiao.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40186:OnSubFinish4018602(arg1)
    print("OnSubFinish4018602")
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4018603, nil)
    end)
end

function Quest40186:OnSubStart4018603(arg1)
    print("OnSubStart4018603")
    this:NpcCreateWithNpcTrigger(npcs.Npc1046.id, 0, 20, 4018603)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc10211.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1093.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1031.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2433.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2434.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2434.alias, 40186):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1015.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1016.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1016.alias, 40186):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Xiao.id, arg1)
    this:GetQuestNpcActor(npcs.Xiao.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1068.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc10233.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1048.id, arg1)
end

function Quest40186:OnSubFinish4018603(arg1)
    print("OnSubFinish4018603")
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4018604, nil)
    end)
end

function Quest40186:OnSubStart4018604(arg1)
    print("OnSubStart4018604")
    this:NpcCreateWithNpcTrigger(npcs.Npc2610.id, 0, 15, 4018604)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc10211.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1093.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1031.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2433.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2434.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2434.alias, 40186):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1015.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1016.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1016.alias, 40186):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Xiao.id, arg1)
    this:GetQuestNpcActor(npcs.Xiao.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1046.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1048.id, arg1)
end

function Quest40186:OnSubFinish4018604(arg1)
    print("OnSubFinish4018604")
    this:SafeDestroyQuestNpc(npcs.Npc2610.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4018605, nil)
    end)
end

function Quest40186:OnSubStart4018605(arg1)
    print("OnSubStart4018605")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc10211.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1093.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1031.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2433.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2434.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2434.alias, 40186):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1015.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1016.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1016.alias, 40186):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Xiao.id, arg1)
    this:GetQuestNpcActor(npcs.Xiao.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2610.id, arg1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018605, 0, 15, 1, npcs.Npc2611.id)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1048.id, arg1)
end

function Quest40186:OnSubFinish4018605(arg1)
    print("OnSubFinish4018605")
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2610.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2611.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40186:OnSubStart4018606(arg1)
    print("OnSubStart4018606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc10211.id, 0, 4018606, 15, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1031.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2433.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2434.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2434.alias, 40186):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1015.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1016.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1016.alias, 40186):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Xiao.id, arg1)
    this:GetQuestNpcActor(npcs.Xiao.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1048.id, arg1)
end

function Quest40186:OnSubFinish4018606(arg1)
    print("OnSubFinish4018606")
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Quest40186:OnSubStart4018607(arg1)
    print("OnSubStart4018607")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2433.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc2434.id, arg1)
    this:GetQuestNpcActor(npcs.Npc2434.alias, 40186):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1031.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1031.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1015.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1016.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1016.alias, 40186):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Xiao.id, arg1)
    this:GetQuestNpcActor(npcs.Xiao.alias, 40186):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15085.id, 0, 4018607, 15, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1048.id, arg1)
end

function Quest40186:OnSubFinish4018607(arg1)
    print("OnSubFinish4018607")
    this:SafeDestroyQuestNpc(npcs.Npc2433.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2434.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15085.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
end

function Quest40186:OnSubStart4018608(arg1)
    print("OnSubStart4018608")
    this:DeployStoryByQuest(134018601)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
end

function Quest40186:OnSubFinish4018608(arg1)
    print("OnSubFinish4018608")
end

function Quest40186:OnSubFailed4018608(arg1)
    print("OnSubFailed4018608")
    this:CancelStoryByQuest(134018601)
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
end

function Quest40186:OnSubStart4018616(arg1)
    print("OnSubStart4018616")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018616, 0, 24, 1, npcs.Npc15085.id)
end

function Quest40186:OnSubFinish4018616(arg1)
    print("OnSubFinish4018616")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
end

function Quest40186:OnSubFailed4018616(arg1)
    print("OnSubFailed4018616")
    this:CancelStoryByQuest(134018601)
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    this:ActorDestroy("Q4018616N15085Trigger")
end

function Quest40186:OnSubStart4018609(arg1)
    print("OnSubStart4018609")
end

function Quest40186:OnSubFinish4018609(arg1)
    print("OnSubFinish4018609")
    this:NpcDestroyImmediately(3, npcs.Npc15085.alias)
    this:DestroyQuestNpcActor(npcs.Npc10232.alias, 3)
    this:PlayerEnterDungeonPointWithDialogs(1483, 1231, 4018609, 1, nil, 3, nil, nil)
    this:CancelStoryByQuest(134018601)
end

function Quest40186:OnSubStart4018622(arg1)
    print("OnSubStart4018622")
    actorMgr:CreateActorWithPos("Q4018622Trigger", "Actor/Gadget/Q4018622Trigger", 70900002, 0, points._Q4018622TriggerPoint_.pos, points._Q4018622TriggerPoint_.rot, true, false, 3)
end

function Quest40186:OnSubFinish4018622(arg1)
    print("OnSubFinish4018622")
    this:ActorDestroy("Q4018622Trigger")
end

function Quest40186:OnSubStart4018612(arg1)
    print("OnSubStart4018612")
end

function Quest40186:OnSubFinish4018612(arg1)
    print("OnSubFinish4018612")
end

function Quest40186:OnSubFailed4018612(arg1)
    print("OnSubFailed4018612")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
end

function Quest40186:OnSubStart4018610(arg1)
    print("OnSubStart4018610")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15089.id, 0, 4018610, 15, true)
end

function Quest40186:OnSubFinish4018610(arg1)
    print("OnSubFinish4018610")
    this:SafeDestroyQuestNpc(npcs.Npc15089.alias, 20248)
end

function Quest40186:OnSubFailed4018610(arg1)
    print("OnSubFailed4018610")
    this:ActorDestroy("Q4018610N15089Trigger")
end

function Quest40186:OnSubStart4018611(arg1)
    print("OnSubStart4018611")
end

function Quest40186:OnSubFinish4018611(arg1)
    print("OnSubFinish4018611")
end

function Quest40186:OnSubStart4018613(arg1)
    print("OnSubStart4018613")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018613, 0, 15, 1, npcs.Npc15086.id)
end

function Quest40186:OnSubFinish4018613(arg1)
    print("OnSubFinish4018613")
    this:DestroyQuestNpcActor(npcs.Npc15086.alias, 20248)
    this:PlayerEnterDungeonWithData(1, 1234, 4018613, 1, nil, nil, nil)
end

function Quest40186:OnSubFailed4018613(arg1)
    print("OnSubFailed4018613")
    this:ActorDestroy("Q4018613N15086Trigger")
end

function Quest40186:OnSubStart4018621(arg1)
    print("OnSubStart4018621")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    actorMgr:CreateActorWithPos("Q4018621Trigger", "Actor/Gadget/Q4018621Trigger", 70900002, 0, points._Q4018621TriggerPoint_.pos, points._Q4018621TriggerPoint_.rot, true, false, 20248)
end

function Quest40186:OnSubFinish4018621(arg1)
    print("OnSubFinish4018621")
    this:ActorDestroy("Q4018621Trigger")
end

function Quest40186:OnSubFailed4018621(arg1)
    print("OnSubFailed4018621")
    this:ActorDestroy("Q4018621Trigger")
end

function Quest40186:OnSubStart4018614(arg1)
    print("OnSubStart4018614")
    actorMgr:CreateActorWithPos("Q4018614Trigger", "Actor/Gadget/Q4018614Trigger", 70900002, 0, points._Q4018614TriggerPoint_.pos, points._Q4018614TriggerPoint_.rot, true, false, 20249)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
    this:DeployStoryByQuest(134018602)
end

function Quest40186:OnSubFinish4018614(arg1)
    print("OnSubFinish4018614")
end

function Quest40186:OnSubFailed4018614(arg1)
    print("OnSubFailed4018614")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    this:CancelStoryByQuest(134018602)
    this:ActorDestroy("Q4018614Trigger")
end

function Quest40186:OnSubStart4018615(arg1)
    print("OnSubStart4018615")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4018615, 0, 27, 1, npcs.Npc2612.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
    this:DeployStoryByQuest(134018602)
end

function Quest40186:OnSubFinish4018615(arg1)
    print("OnSubFinish4018615")
    this:SafeDestroyQuestNpc(npcs.Npc2612.alias, 20249)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4018514, nil, nil, nil)
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    this:CancelStoryByQuest(134018602)
end

function Quest40186:OnSubFailed4018615(arg1)
    print("OnSubFailed4018615")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    this:ActorDestroy("Q4018615N2612Trigger")
    this:CancelStoryByQuest(134018602)
end

function Quest40186:OnSubStart4018619(arg1)
    print("OnSubStart4018619")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Paimon.id, 0, 4018619, 30, true)
end

function Quest40186:OnSubFinish4018619(arg1)
    print("OnSubFinish4018619")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 1082)
end

function Quest40186:OnSubStart4018620(arg1)
    print("OnSubStart4018620")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc2612.id, 0, 4018620, 15, true)
end

function Quest40186:OnSubFinish4018620(arg1)
    print("OnSubFinish4018620")
    this:SafeDestroyQuestNpc(npcs.Npc2612.alias, 3)
end

return Quest40186
