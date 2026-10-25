require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75212 = class("Quest75212", QuestActorProxy)
Quest75212.defaultAlias = "Quest75212"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75212:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75212:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7521201"] = self.OnSubStart7521201,
        ["7521226"] = self.OnSubStart7521226,
        ["7521220"] = self.OnSubStart7521220,
        ["7521202"] = self.OnSubStart7521202,
        ["7521203"] = self.OnSubStart7521203,
        ["7521204"] = self.OnSubStart7521204,
        ["7521221"] = self.OnSubStart7521221,
        ["7521222"] = self.OnSubStart7521222,
        ["7521205"] = self.OnSubStart7521205,
        ["7521216"] = self.OnSubStart7521216,
        ["7521218"] = self.OnSubStart7521218,
        ["7521206"] = self.OnSubStart7521206,
        ["7521207"] = self.OnSubStart7521207,
        ["7521223"] = self.OnSubStart7521223,
        ["7521224"] = self.OnSubStart7521224,
        ["7521208"] = self.OnSubStart7521208,
        ["7521209"] = self.OnSubStart7521209,
        ["7521210"] = self.OnSubStart7521210,
        ["7521227"] = self.OnSubStart7521227,
        ["7521225"] = self.OnSubStart7521225,
        ["7521212"] = self.OnSubStart7521212,
        ["7521213"] = self.OnSubStart7521213,
        ["7521217"] = self.OnSubStart7521217,
        ["7521219"] = self.OnSubStart7521219,
        ["7521214"] = self.OnSubStart7521214,
        ["7521215"] = self.OnSubStart7521215,
        ["7521211"] = self.OnSubStart7521211
    }
end

function Quest75212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7521201"] = self.OnSubFinish7521201,
        ["7521226"] = self.OnSubFinish7521226,
        ["7521220"] = self.OnSubFinish7521220,
        ["7521202"] = self.OnSubFinish7521202,
        ["7521203"] = self.OnSubFinish7521203,
        ["7521204"] = self.OnSubFinish7521204,
        ["7521221"] = self.OnSubFinish7521221,
        ["7521222"] = self.OnSubFinish7521222,
        ["7521205"] = self.OnSubFinish7521205,
        ["7521216"] = self.OnSubFinish7521216,
        ["7521218"] = self.OnSubFinish7521218,
        ["7521206"] = self.OnSubFinish7521206,
        ["7521207"] = self.OnSubFinish7521207,
        ["7521223"] = self.OnSubFinish7521223,
        ["7521224"] = self.OnSubFinish7521224,
        ["7521208"] = self.OnSubFinish7521208,
        ["7521209"] = self.OnSubFinish7521209,
        ["7521210"] = self.OnSubFinish7521210,
        ["7521227"] = self.OnSubFinish7521227,
        ["7521225"] = self.OnSubFinish7521225,
        ["7521212"] = self.OnSubFinish7521212,
        ["7521213"] = self.OnSubFinish7521213,
        ["7521217"] = self.OnSubFinish7521217,
        ["7521219"] = self.OnSubFinish7521219,
        ["7521214"] = self.OnSubFinish7521214,
        ["7521215"] = self.OnSubFinish7521215,
        ["7521211"] = self.OnSubFinish7521211
    }
end

function Quest75212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75212:Start()
    print("Start")
end

function Quest75212:OnDestroy()
    print("OnDestroy")
end

function Quest75212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75212:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75212:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest75212:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75212:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75212:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest75212:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75212:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75212:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75212:OnSubStart7521201(arg1)
    print("OnSubStart7521201")
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DisableInteeHeadCtrl(false)
end

function Quest75212:OnSubFinish7521201(arg1)
    print("OnSubFinish7521201")
end

function Quest75212:OnSubStart7521226(arg1)
    print("OnSubStart7521226")
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DisableInteeHeadCtrl(true)
end

function Quest75212:OnSubFinish7521226(arg1)
    print("OnSubFinish7521226")
end

function Quest75212:OnSubStart7521220(arg1)
    print("OnSubStart7521220")
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521220(arg1)
    print("OnSubFinish7521220")
    this:SafeDestroyQuestNpc(npcs.Npc6509.alias, 3)
end

function Quest75212:OnSubStart7521202(arg1)
    print("OnSubStart7521202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7521202, 0, 30, 1, npcs.Npc21942.id)
end

function Quest75212:OnSubFinish7521202(arg1)
    print("OnSubFinish7521202")
    this:SafeDestroyQuestNpc(npcs.Npc21942.alias, 3)
end

function Quest75212:OnSubStart7521203(arg1)
    print("OnSubStart7521203")
    this:NpcCreateWithNpcTrigger(npcs.Npc6508.id, 0, 5, 7521203)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(4260, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21943.alias, 75212):DoFreeStyle(1173, true, nil, true, true, false, false)
end

function Quest75212:OnSubFinish7521203(arg1)
    print("OnSubFinish7521203")
end

function Quest75212:OnSubStart7521204(arg1)
    print("OnSubStart7521204")
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1300, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21943.alias, 75212):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75212:OnSubFinish7521204(arg1)
    print("OnSubFinish7521204")
end

function Quest75212:OnSubStart7521221(arg1)
    print("OnSubStart7521221")
end

function Quest75212:OnSubFinish7521221(arg1)
    print("OnSubFinish7521221")
end

function Quest75212:OnSubStart7521222(arg1)
    print("OnSubStart7521222")
end

function Quest75212:OnSubFinish7521222(arg1)
    print("OnSubFinish7521222")
end

function Quest75212:OnSubStart7521205(arg1)
    print("OnSubStart7521205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7521205, 0, 20, 1, npcs.Npc6508.id)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521205(arg1)
    print("OnSubFinish7521205")
    this:SafeDestroyQuestNpc(npcs.Npc6508.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6509.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21943.alias, 3)
end

function Quest75212:OnSubStart7521216(arg1)
    print("OnSubStart7521216")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogIdsData_2, 0, nil, nil, nil)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21942.id, 0, 7521216, 10, true)
end

function Quest75212:OnSubFinish7521216(arg1)
    print("OnSubFinish7521216")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21942.alias)
end

function Quest75212:OnSubStart7521218(arg1)
    print("OnSubStart7521218")
end

function Quest75212:OnSubFinish7521218(arg1)
    print("OnSubFinish7521218")
end

function Quest75212:OnSubStart7521206(arg1)
    print("OnSubStart7521206")
    this:NpcCreateWithNpcTrigger(npcs.Npc6510.id, 0, 10, 7521206)
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1260, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22116.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22116.alias, 75212):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22117.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22117.alias, 75212):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22118.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22118.alias, 75212):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75212:OnSubFinish7521206(arg1)
    print("OnSubFinish7521206")
    this:SafeDestroyQuestNpc(npcs.Npc6510.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6508.alias, 3)
end

function Quest75212:OnSubStart7521207(arg1)
    print("OnSubStart7521207")
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc6496.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6497.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22116.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22116.alias, 75212):DoFreeStyle(4290, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22117.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22117.alias, 75212):DoFreeStyle(1250, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22118.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22118.alias, 75212):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest75212:OnSubFinish7521207(arg1)
    print("OnSubFinish7521207")
    this:SafeDestroyQuestNpc(npcs.Npc6496.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6497.alias, 3)
end

function Quest75212:OnSubStart7521223(arg1)
    print("OnSubStart7521223")
end

function Quest75212:OnSubFinish7521223(arg1)
    print("OnSubFinish7521223")
end

function Quest75212:OnSubStart7521224(arg1)
    print("OnSubStart7521224")
end

function Quest75212:OnSubFinish7521224(arg1)
    print("OnSubFinish7521224")
end

function Quest75212:OnSubStart7521208(arg1)
    print("OnSubStart7521208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7521208, 0, 20, 1, npcs.Npc6508.id)
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6510.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6496.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6497.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22054.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22116.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22116.alias, 75212):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22117.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22117.alias, 75212):DoFreeStyle(1260, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22118.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22118.alias, 75212):DoFreeStyle(5010, true, nil, true, true, false, false)
end

function Quest75212:OnSubFinish7521208(arg1)
    print("OnSubFinish7521208")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6508.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6510.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6496.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6497.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22054.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22116.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22117.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22118.alias, 3)
end

function Quest75212:OnSubStart7521209(arg1)
    print("OnSubStart7521209")
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1141, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc21943.id, 0, 10, 7521209)
    this:GetQuestNpcActor(npcs.Npc21943.alias, 75212):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22052.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22053.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521209(arg1)
    print("OnSubFinish7521209")
end

function Quest75212:OnSubStart7521210(arg1)
    print("OnSubStart7521210")
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1122, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6510.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21942.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21943.alias, 75212):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22052.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22053.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521210(arg1)
    print("OnSubFinish7521210")
end

function Quest75212:OnSubStart7521227(arg1)
    print("OnSubStart7521227")
end

function Quest75212:OnSubFinish7521227(arg1)
    print("OnSubFinish7521227")
end

function Quest75212:OnSubStart7521225(arg1)
    print("OnSubStart7521225")
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1122, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6510.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21943.alias, 75212):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22052.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22053.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521225(arg1)
    print("OnSubFinish7521225")
end

function Quest75212:OnSubStart7521212(arg1)
    print("OnSubStart7521212")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7521212, 0, 20, 1, npcs.Npc6508.id)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6510.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22052.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22053.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521212(arg1)
    print("OnSubFinish7521212")
    this:SafeDestroyQuestNpc(npcs.Npc6508.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6509.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6510.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21942.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22053.alias, 3)
end

function Quest75212:OnSubStart7521213(arg1)
    print("OnSubStart7521213")
end

function Quest75212:OnSubFinish7521213(arg1)
    print("OnSubFinish7521213")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 3, nil, nil, nil)
end

function Quest75212:OnSubStart7521217(arg1)
    print("OnSubStart7521217")
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7521217, 0, 40, 0, npcs.Npc6509.id)
    this:CreateQuestNpc(arg1, npcs.Npc6510.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21943.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521217(arg1)
    print("OnSubFinish7521217")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6508.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6509.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6510.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21942.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21943.alias)
end

function Quest75212:OnSubStart7521219(arg1)
    print("OnSubStart7521219")
end

function Quest75212:OnSubFinish7521219(arg1)
    print("OnSubFinish7521219")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7521219, nil)
    end)
end

function Quest75212:OnSubStart7521214(arg1)
    print("OnSubStart7521214")
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1260, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc6510.id, 0, 10, 7521214)
    this:CreateQuestNpc(arg1, npcs.Npc21942.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21942.alias, 75212):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75212:OnSubFinish7521214(arg1)
    print("OnSubFinish7521214")
    this:NpcDestroyImmediately(3, npcs.Npc21942.alias)
end

function Quest75212:OnSubStart7521215(arg1)
    print("OnSubStart7521215")
    this:CreateQuestNpc(arg1, npcs.Npc6508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6508.alias, 75212):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6509.alias, 75212):DoFreeStyle(1290, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6510.id, 0, false, 0)
end

function Quest75212:OnSubFinish7521215(arg1)
    print("OnSubFinish7521215")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6508.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6509.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6510.alias, 3)
end

function Quest75212:OnSubStart7521211(arg1)
    print("OnSubStart7521211")
end

function Quest75212:OnSubFinish7521211(arg1)
    print("OnSubFinish7521211")
end

return Quest75212
