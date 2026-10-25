require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40177 = class("Quest40177", QuestActorProxy)
Quest40177.defaultAlias = "Quest40177"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40177:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40177:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4017701"] = self.OnSubStart4017701,
        ["4017702"] = self.OnSubStart4017702,
        ["4017703"] = self.OnSubStart4017703,
        ["4017704"] = self.OnSubStart4017704,
        ["4017705"] = self.OnSubStart4017705,
        ["4017708"] = self.OnSubStart4017708,
        ["4017706"] = self.OnSubStart4017706,
        ["4017707"] = self.OnSubStart4017707,
        ["4017709"] = self.OnSubStart4017709,
        ["4017710"] = self.OnSubStart4017710,
        ["4017711"] = self.OnSubStart4017711,
        ["4017712"] = self.OnSubStart4017712,
        ["4017713"] = self.OnSubStart4017713,
        ["4017714"] = self.OnSubStart4017714,
        ["4017715"] = self.OnSubStart4017715,
        ["4017716"] = self.OnSubStart4017716,
        ["4017717"] = self.OnSubStart4017717,
        ["4017718"] = self.OnSubStart4017718
    }
end

function Quest40177:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4017701"] = self.OnSubFinish4017701,
        ["4017702"] = self.OnSubFinish4017702,
        ["4017703"] = self.OnSubFinish4017703,
        ["4017704"] = self.OnSubFinish4017704,
        ["4017705"] = self.OnSubFinish4017705,
        ["4017708"] = self.OnSubFinish4017708,
        ["4017706"] = self.OnSubFinish4017706,
        ["4017707"] = self.OnSubFinish4017707,
        ["4017709"] = self.OnSubFinish4017709,
        ["4017710"] = self.OnSubFinish4017710,
        ["4017711"] = self.OnSubFinish4017711,
        ["4017712"] = self.OnSubFinish4017712,
        ["4017713"] = self.OnSubFinish4017713,
        ["4017714"] = self.OnSubFinish4017714,
        ["4017715"] = self.OnSubFinish4017715,
        ["4017716"] = self.OnSubFinish4017716,
        ["4017717"] = self.OnSubFinish4017717,
        ["4017718"] = self.OnSubFinish4017718
    }
end

function Quest40177:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40177:Start()
    print("Start")
end

function Quest40177:OnDestroy()
    print("OnDestroy")
end

function Quest40177:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40177:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40177:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15102.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30719.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30720.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30799.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30800.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6305.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30785.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30786.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30787.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30788.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30789.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30790.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30791.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30792.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30724.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30725.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30729.alias, 20253)
    this:DestroyNpcTrigger("Q4017701N1086Trigger")
    this:DestroyNpcTrigger("Q4017702N1307Trigger")
    this:DestroyNpcTrigger("Q4017703N6092Trigger")
    this:DestroyNpcTrigger("Q4017705N1089Trigger")
    this:DestroyNpcTrigger("Q4017707N1086Trigger")
    this:DestroyNpcTrigger("Q4017708N1087Trigger")
    this:DestroyNpcTrigger("Q4017709N1091Trigger")
    this:DestroyNpcTrigger("Q4017711N1094Trigger")
    this:DestroyNpcTrigger("Q4017713N1086Trigger")
    this:DestroyNpcTrigger("Q4017714N1092Trigger")
    this:DestroyNpcTrigger("Q4017716N1086Trigger")
    this:DestroyNpcTrigger("Q4017718N1087Trigger")
end

function Quest40177:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest40177:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40177:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40177:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40177:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40177:OnSubStart4017701(arg1)
    print("OnSubStart4017701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 17, 4017701)
    this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15102.alias, 40177):DoFreeStyle(15, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc6092.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30719.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30720.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30799.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30800.id, 0, false, 0)
end

function Quest40177:OnSubFinish4017701(arg1)
    print("OnSubFinish4017701")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30719.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30720.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30799.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30800.alias, 3)
end

function Quest40177:OnSubStart4017702(arg1)
    print("OnSubStart4017702")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTriggerAndBlackscreen(4017702, 0, 40, 0, npcs.Npc1307.id)
        this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40177):DoFreeStyle(15, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
    end)
end

function Quest40177:OnSubFinish4017702(arg1)
    print("OnSubFinish4017702")
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
end

function Quest40177:OnSubStart4017703(arg1)
    print("OnSubStart4017703")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc6092.id, 0, 8, 4017703)
        this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40177):DoFreeStyle(15, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14918.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6305.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6055.id, 0, false, 0)
    end)
end

function Quest40177:OnSubFinish4017703(arg1)
    print("OnSubFinish4017703")
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6305.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId4017703, nil)
    end)
end

function Quest40177:OnSubStart4017704(arg1)
    print("OnSubStart4017704")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40177):DoFreeStyle(17, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
    end)
end

function Quest40177:OnSubFinish4017704(arg1)
    print("OnSubFinish4017704")
    this:SafeDestroyQuestNpc(npcs.Npc15102.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 3)
    this:ClearNarratorTask()
end

function Quest40177:OnSubStart4017705(arg1)
    print("OnSubStart4017705")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1089.id, 0, 4017705, 40, true)
end

function Quest40177:OnSubFinish4017705(arg1)
    print("OnSubFinish4017705")
end

function Quest40177:OnSubStart4017708(arg1)
    print("OnSubStart4017708")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1087.id, 0, 4017708, 20, true)
    this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 40177):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest40177:OnSubFinish4017708(arg1)
    print("OnSubFinish4017708")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("NatlanDrillMainPage", 0)
    end)
end

function Quest40177:OnSubStart4017706(arg1)
    print("OnSubStart4017706")
    this:DestroyQuestNpcActor(npcs.Npc1086.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30785.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30786.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30787.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30788.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30789.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30790.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30791.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30792.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30724.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30725.alias, 20253)
    this:DestroyQuestNpcActor(npcs.Npc30729.alias, 20253)
    this:DestroyNpcTrigger("Q4017707N1086Trigger")
    this:DestroyNpcTrigger("Q4017709N1091Trigger")
    this:DestroyNpcTrigger("Q4017711N1094Trigger")
    this:DestroyNpcTrigger("Q4017713N1086Trigger")
    this:DestroyNpcTrigger("Q4017714N1092Trigger")
    this:DestroyNpcTrigger("Q4017716N1086Trigger")
end

function Quest40177:OnSubFinish4017706(arg1)
    print("OnSubFinish4017706")
end

function Quest40177:OnSubStart4017707(arg1)
    print("OnSubStart4017707")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1086.id, 0, 4017707, 30, true)
end

function Quest40177:OnSubFinish4017707(arg1)
    print("OnSubFinish4017707")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20253)
end

function Quest40177:OnSubStart4017709(arg1)
    print("OnSubStart4017709")
    this:NpcCreateWithNpcTrigger(npcs.Npc1091.id, 0, 30, 4017709)
    this:CreateQuestNpc(arg1, npcs.Npc30785.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30786.id, 0, false, 0)
end

function Quest40177:OnSubFinish4017709(arg1)
    print("OnSubFinish4017709")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30785.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30786.alias, 20253)
end

function Quest40177:OnSubStart4017710(arg1)
    print("OnSubStart4017710")
end

function Quest40177:OnSubFinish4017710(arg1)
    print("OnSubFinish4017710")
end

function Quest40177:OnSubStart4017711(arg1)
    print("OnSubStart4017711")
    this:NpcCreateWithNpcTrigger(npcs.Npc1094.id, 0, 20, 4017711)
    this:CreateQuestNpc(arg1, npcs.Npc30787.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30788.id, 0, false, 0)
end

function Quest40177:OnSubFinish4017711(arg1)
    print("OnSubFinish4017711")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30787.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30788.alias, 20253)
end

function Quest40177:OnSubStart4017712(arg1)
    print("OnSubStart4017712")
end

function Quest40177:OnSubFinish4017712(arg1)
    print("OnSubFinish4017712")
end

function Quest40177:OnSubStart4017713(arg1)
    print("OnSubStart4017713")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017713, 0, 30, 0, npcs.Npc1086.id)
end

function Quest40177:OnSubFinish4017713(arg1)
    print("OnSubFinish4017713")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20253)
end

function Quest40177:OnSubStart4017714(arg1)
    print("OnSubStart4017714")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1092.id, 0, 10, 4017714)
        this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 40177):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc30789.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc30790.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc30791.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30791.alias, 40177):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30792.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30792.alias, 40177):DoFreeStyle(1122, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc30724.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30724.alias, 40177):DoFreeStyle(1080, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc30725.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30725.alias, 40177):DoFreeStyle(1080, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc30729.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc30729.alias, 40177):DoFreeStyle(1080, true, nil, true, true, false, true)
    end)
end

function Quest40177:OnSubFinish4017714(arg1)
    print("OnSubFinish4017714")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30789.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30790.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30791.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30792.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30724.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30725.alias, 20253)
    this:SafeDestroyQuestNpc(npcs.Npc30729.alias, 20253)
end

function Quest40177:OnSubStart4017715(arg1)
    print("OnSubStart4017715")
end

function Quest40177:OnSubFinish4017715(arg1)
    print("OnSubFinish4017715")
end

function Quest40177:OnSubStart4017716(arg1)
    print("OnSubStart4017716")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017716, 0, 30, 0, npcs.Npc1086.id)
end

function Quest40177:OnSubFinish4017716(arg1)
    print("OnSubFinish4017716")
    this:NpcDestroyImmediately(20253, npcs.Npc1086.alias)
end

function Quest40177:OnSubStart4017717(arg1)
    print("OnSubStart4017717")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20253 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData4017717, nil, nil, nil)
            end
        end)
    end)
end

function Quest40177:OnSubFinish4017717(arg1)
    print("OnSubFinish4017717")
end

function Quest40177:OnSubStart4017718(arg1)
    print("OnSubStart4017718")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017718, 0, 10, 0, npcs.Npc1087.id)
end

function Quest40177:OnSubFinish4017718(arg1)
    print("OnSubFinish4017718")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

return Quest40177
